#ifndef POINTPILLARS_H
#define POINTPILLARS_H


#include "inference.h"
#include "inference_factory.h"

#include "common/detected_object.h"
#include "lidar/point_pillars/feature_generator.h"
// #include "lidar/point_pillars/postprocess.h"
#include "lidar/point_pillars/postprocess_cuda.h"

#include <cuda_runtime_api.h>
#include <cuda.h>

#include <chrono>
#include <numeric>

#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>



namespace perception {

class Pointpillars {
public:
    Pointpillars();
    ~Pointpillars() {}

    bool init(std::string& config);

    bool detect(const pcl::PointCloud<pcl::PointXYZI>::Ptr &pc_ptr,
        const pcl::PointIndices &valid_idx,
        perception::ObjectArray& objects);
private:
    std::string benchmark_path_;
    std::string duration_path_;
    cudaEvent_t start_cu_, stop_cu_;


    int width_;
    int height_;
    int channel_;
    int max_pillar_num_;
    int max_point_num_;
    int feature_channel_;
    float min_vertical_;
    float max_vertical_;
    float min_horizontal_; 
    float max_horizontal_;
    float min_height_;
    float max_height_;

    float score_car_threshold_;
    float score_ped_cyc_threshold_;
    float nms_threshold_;
    int class_num_;
    int dims_car_channel_;
    int dims_car_height_;
    int dims_car_width_;
    int dims_ped_cyc_channel_;
    int dims_ped_cyc_height_;
    int dims_ped_cyc_width_;
    float cls0_anchor_x_;
    float cls0_anchor_y_;
    float cls0_anchor_z_;  
    float cls1_anchor_x_;
    float cls1_anchor_y_;
    float cls1_anchor_z_;  
    float cls2_anchor_x_;
    float cls2_anchor_y_;
    float cls2_anchor_z_;
    int NUM_THREADS_;

    int gpu_device_id_;
    bool use_gpu_;

    std::shared_ptr<novauto::tensorrt::inference::Inference> trt_net_;
    std::vector<std::string> output_blob_name_;
    std::vector<std::vector<float>> output_data_;

    int32_t nbytes_scatter_;// = max_pillar_num_ * sizeof(float) * 2;
    int32_t nbytes_p1_input_;
    #ifdef X86
    float *host_coors_ = nullptr;
    float *host_p1_input_ = nullptr;
    #else
    float *dev_coors_ = nullptr;
    float *dev_p1_input_ = nullptr;
    #endif

    std::shared_ptr<FeatureGenerator> feature_generator_;

    std::shared_ptr<PostProcess> get_bounding_box_;
    std::shared_ptr<PostprocessCuda> get_bounding_box_gpu_;

};

} // namespace perception 

#endif //CNN_SEGMENTATION_H
