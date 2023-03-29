#include "common/log.hpp"
#include "inference.h"
#include "inference_factory.h"

#include "common/time_point.h"
#include "common/benchmark.h"
#include "common/time_point.h"
#include "common/detected_object.h"
#include "lidar/point_pillars/pointpillars.h"

#include <fstream>
#include <yaml-cpp/yaml.h>
#include <Eigen/Dense>

#define __APP_NAME__ "lidar_pointpillars_detect"
#define INIT_PARAMETER(node, name, type, default_val)  if (node[#name].IsDefined() ) { \
    name##_  = node[#name].as<type>(); \
  } else {  \
    name##_ = (default_val); \
    LOG_DEBUG("there is no key <%s> in yaml file.", #name); \
  }
  
namespace perception {

const int LabelWrap[4] = {1, 4, 3, 0};
// std::string label_name[4] = {"Car", "", "Pedestrian", "Cyclist"};

Pointpillars::Pointpillars() {}

bool Pointpillars::init(std::string& config) {
  cudaEventCreate(&start_cu_);    //创建event
  cudaEventCreate(&stop_cu_);

  std::string engine_file;
  benchmark_path_.clear();
  duration_path_.clear();

  YAML::Node config_yaml;
  std::string config_path = config + "/config/point_pillars.yaml";
  config_yaml = YAML::LoadFile(config_path);
  if (config_yaml.IsNull()) {
    LOG_DEBUG("There is no config file for Segmentation.");
    return false;
  }


  if (config_yaml["duration_path"].IsDefined() ) {
    duration_path_ = config_yaml["duration_path"].as<std::string>();
  } else {
    duration_path_.clear();
    LOG_DEBUG("there is no key <duration_path> in yaml file.");
    // return false;
  }

  if (config_yaml["benchmark_path"].IsDefined() ) {
    benchmark_path_ = config_yaml["benchmark_path"].as<std::string>();
  } else {
    benchmark_path_.clear();
    LOG_DEBUG("there is no key <benchmark_path> in yaml file.");
    // return false;
  }

  if (config_yaml["engine_file"].IsDefined() ) {
    engine_file = config_yaml["engine_file"].as<std::string>();
  } else {
    LOG_ERROR("there is no key <engine_file> in yaml file.");
    return false;
  }

  INIT_PARAMETER(config_yaml, min_horizontal, float, -25.0)
  INIT_PARAMETER(config_yaml, max_horizontal, float, 25.0)
  INIT_PARAMETER(config_yaml, min_vertical, float, -50.0)
  INIT_PARAMETER(config_yaml, max_vertical, float, -50.0)
  INIT_PARAMETER(config_yaml, min_height, float, -0.5)
  INIT_PARAMETER(config_yaml, max_height, float, 3.5)

  INIT_PARAMETER(config_yaml, max_pillar_num, int, 20000)
  INIT_PARAMETER(config_yaml, max_point_num, int, 32)
  INIT_PARAMETER(config_yaml, feature_channel, int, 3)
  INIT_PARAMETER(config_yaml, width, int, 320)
  INIT_PARAMETER(config_yaml, height, int, 640)
  INIT_PARAMETER(config_yaml, channel, int, 32)
  INIT_PARAMETER(config_yaml, gpu_device_id, int, 0)
  INIT_PARAMETER(config_yaml, use_gpu, bool, false)  

  INIT_PARAMETER(config_yaml, score_car_threshold, float, 0.4)
  INIT_PARAMETER(config_yaml, score_ped_cyc_threshold, float, 0.3)
  INIT_PARAMETER(config_yaml, nms_threshold, float, 0.3)

  INIT_PARAMETER(config_yaml, class_num, int, 1)
  INIT_PARAMETER(config_yaml, dims_car_channel, int, 9)
  INIT_PARAMETER(config_yaml, dims_car_height, int, 320)
  INIT_PARAMETER(config_yaml, dims_car_width, int, 160)
  INIT_PARAMETER(config_yaml, dims_ped_cyc_channel, int, 22)
  INIT_PARAMETER(config_yaml, dims_ped_cyc_height, int, 640)
  INIT_PARAMETER(config_yaml, dims_ped_cyc_width, int, 320)

  INIT_PARAMETER(config_yaml, cls0_anchor_x, float, 10.24)
  INIT_PARAMETER(config_yaml, cls0_anchor_y, float, 24.96)
  INIT_PARAMETER(config_yaml, cls0_anchor_z, float, 0)
  INIT_PARAMETER(config_yaml, cls1_anchor_x, float, 3.84)
  INIT_PARAMETER(config_yaml, cls1_anchor_y, float, 5.12)
  INIT_PARAMETER(config_yaml, cls1_anchor_z, float, 0)
  INIT_PARAMETER(config_yaml, cls2_anchor_x, float, 3.84)
  INIT_PARAMETER(config_yaml, cls2_anchor_y, float, 11.264)
  INIT_PARAMETER(config_yaml, cls2_anchor_z, float, 0)
  INIT_PARAMETER(config_yaml, NUM_THREADS, int, 64)

  #ifdef _USE_MIIVII_
    engine_file = WORKSPACE_PATH;
    engine_file = engine_file + "/models/pointpillars/pointpillars-1.onnx_FP16.trt";
  #else // _USE_MIIVII_
    engine_file = config + engine_file; 
  #endif // _USE_MIIVII_ 
  std::vector<std::string> outputBlobName_{
      "pointpillars_part2/features_car", 
      "pointpillars_part2/features_ped_cyc"};
  output_blob_name_.clear();
  output_blob_name_ = outputBlobName_;
  std::vector<std::string> input_blob_name_{"coors_input_", "voxel_num_", "points"};
  trt_net_.reset(novauto::tensorrt::inference::CreateInferenceByName(
      "TRTNet", engine_file, input_blob_name_, outputBlobName_)); 
  output_data_.resize(output_blob_name_.size());

  nbytes_scatter_ = max_pillar_num_ * sizeof(float) * 2;
  nbytes_p1_input_ = max_pillar_num_ * max_point_num_ * feature_channel_ * sizeof(float);   
  
  #ifdef X86
    host_coors_ = (float*)malloc(nbytes_scatter_);
    host_p1_input_ = (float*)malloc(nbytes_p1_input_);
  #else
    cudaMallocHost((void **)&dev_coors_, nbytes_scatter_);
    cudaMallocHost((void**)&dev_p1_input_, nbytes_p1_input_);
  #endif
  int dev = 0;
  cudaSetDevice(dev);
  // get device information
  cudaDeviceProp deviceProp;
  cudaGetDeviceProperties(&deviceProp, dev);

  LOG_INFO(
      "%s starting at device %d: %s memory size %d nbyte %fMB .", \
      "Coors", dev, deviceProp.name, nbytes_scatter_ / sizeof(float), \
      nbytes_scatter_ / (1024.0f * 1024.0f));
  LOG_INFO(
      "%s starting at device %d: %s memory size %d nbyte %fMB .", \
      "Part1_input", dev, deviceProp.name, nbytes_p1_input_ / sizeof(float), \
      nbytes_p1_input_ / (1024.0f * 1024.0f));

  feature_generator_.reset(new FeatureGenerator());

  if ( !feature_generator_ -> init(width_, height_,\
      max_pillar_num_, max_point_num_, feature_channel_,\
      min_vertical_, max_vertical_, \
      min_horizontal_, max_horizontal_,\
      min_height_, max_height_) ) {
      LOG_ERROR("[%s] Fail to Initialize feature generator for Pointpillars", __APP_NAME__);
      return false;
  }

  #ifdef __USE_GPU__
      get_bounding_box_gpu_.reset(new PostprocessCuda(
          min_height_, max_height_, width_, 
          dims_car_width_, dims_car_height_, dims_car_channel_,
          dims_ped_cyc_width_, dims_ped_cyc_height_, dims_ped_cyc_channel_,
          cls0_anchor_x_, cls0_anchor_y_,
          cls1_anchor_x_, cls1_anchor_y_, cls2_anchor_x_, cls2_anchor_y_,
          score_car_threshold_, score_ped_cyc_threshold_, nms_threshold_, 8, 10));

  #else
      get_bounding_box_.reset(new PostProcess());
      if( !get_bounding_box_ -> init(width_, nms_threshold_, 
          score_car_threshold_, score_ped_cyc_threshold_,\
          dims_car_channel_, dims_car_height_, dims_car_width_,\
          dims_ped_cyc_channel_, dims_ped_cyc_height_, dims_ped_cyc_width_,\
          cls0_anchor_x_, cls0_anchor_y_, cls0_anchor_z_,\
          cls1_anchor_x_, cls1_anchor_y_, cls1_anchor_z_,\
          cls2_anchor_x_, cls2_anchor_y_, cls2_anchor_z_,\
          min_height_, max_height_)) {
          LOG_ERROR("[%s] Fail to Initialize postprocess for Pointpillars", __APP_NAME__);
          return false;
      }
  #endif
  return true;
}


bool Pointpillars::detect(const pcl::PointCloud<pcl::PointXYZI>::Ptr &pc_ptr,
    const pcl::PointIndices &valid_idx, perception::ObjectArray& objects) {

  int num_pts = static_cast<int>(pc_ptr->points.size());
  if (num_pts == 0) {
      LOG_INFO("[%s] Empty point cloud.", __APP_NAME__);
      return true;
  }
  _TCSV_INIT();

  #ifdef X86
    memset(host_coors_, 0, nbytes_scatter_);
    memset(host_p1_input_, 0, nbytes_p1_input_);
  #else
    cudaMemset(dev_coors_, 0, nbytes_scatter_);
    cudaMemset(dev_p1_input_, 0, nbytes_p1_input_);
  #endif

  _TCSV_START();
  int num_pillars = 0;
  #ifdef X86
    feature_generator_.get() -> generate(pc_ptr, host_coors_, num_pillars, host_p1_input_);
    trt_net_ -> SetInputTensor(0, host_p1_input_, \
                        max_pillar_num_ * max_point_num_ * feature_channel_, true);
    trt_net_ -> SetInputTensor(1, host_coors_, 1 * 1 * 40000, true);
  #else
    feature_generator_.get() -> generate(pc_ptr, dev_coors_, num_pillars, dev_p1_input_);
    trt_net_ -> SetInputTensor(0, dev_p1_input_, \
                        max_pillar_num_ * max_point_num_ * feature_channel_, false);
    trt_net_ -> SetInputTensor(1, dev_coors_, 1 * 1 * 40000, false);
  #endif
  std::vector<float> voxel_num_vec;
  voxel_num_vec.push_back(num_pillars * 1.0);
  trt_net_ -> SetInputTensor(2, voxel_num_vec);
  _TCSV_END();

  _TCSV_START();
  trt_net_ -> Infer();
  _TCSV_END();

  _TCSV_START();
  #ifdef __USE_GPU__
      #ifdef X86
        void *car     = trt_net_ -> GetBindingPtr(4);
        void *ped_cyc = trt_net_ -> GetBindingPtr(3);
      #else
        void *car     = trt_net_ -> GetBindingPtr(3);
        void *ped_cyc = trt_net_ -> GetBindingPtr(4);
      #endif
  #else
      #ifdef X86
        trt_net_ -> GetOutputTensor(4, output_data_[0]);
        trt_net_ -> GetOutputTensor(3, output_data_[1]);
      #else
        trt_net_ -> GetOutputTensor(3, output_data_[0]);
        trt_net_ -> GetOutputTensor(4, output_data_[1]);
      #endif
  #endif
  _TCSV_END();

  _TCSV_START();
  std::vector<BoundingBox> result;

  #ifdef __USE_GPU__
  // LOG_DEBUG("car doPostprocessCuda");
    get_bounding_box_gpu_ -> doPostprocessCuda("car", (float*)car,
        NUM_THREADS_,
        result);
  // LOG_DEBUG("ped doPostprocessCuda");
    get_bounding_box_gpu_ -> doPostprocessCuda("ped_cyc", (float*)ped_cyc,
        NUM_THREADS_,
        result);
  #else
    get_bounding_box_ -> PointCloudPostTreat("car", 
        (float *)(output_data_[0].data()), result);
    get_bounding_box_ -> PointCloudPostTreat("ped_cyc",
        (float *)(output_data_[1].data()), result);
  #endif
  _TCSV_END();
  // _TCSV_PRINT(duration_path_, (!duration_path_.empty()) );
#if 1
  for (auto &bbox: result) {
    // output box
    perception::Object object;  
    object.label = LabelWrap[bbox.class_idx]; 
    object.score = bbox.class_prob;
    //> TODO: use variable instead of constant
    object.pose.x = (bbox.x * 100.0 / 640.0 - 50);
    object.pose.y = (bbox.y * 50.0 / 320.0 - 25);
    object.pose.z = (bbox.z - 1.2);

    object.dims.y = (bbox.w * 100.0 / 640.0);
    object.dims.x = (bbox.l * 50.0 / 320.0);
    object.dims.z = (bbox.h);
    object.yaw = bbox.angle;
    Eigen::AngleAxisf yawAngle(Eigen::AngleAxisf(object.yaw, 
        Eigen::Vector3f::UnitZ()));
    Eigen::Quaternionf quaternion;
    quaternion = yawAngle;
    object.orie.x = quaternion.x();
    object.orie.y = quaternion.y();
    object.orie.z = quaternion.z();
    object.orie.w = quaternion.w();

    objects.push_back(object);
  }
#endif
  return true;
}

} // namespace perception
