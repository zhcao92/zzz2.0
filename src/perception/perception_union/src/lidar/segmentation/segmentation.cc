/*
 * Copyright 2018-2019 Autoware Foundation. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "common/log.hpp"
#include "common/time_point.h"
#include "lidar/segmentation/segmentation.h"
#include "inference.h"
#include "inference_factory.h"
#include <yaml-cpp/yaml.h>
// #include <pcl/filters/extract_indices.h>

namespace perception {

bool Segmentation::init(std::string& config) {
  std::string engine_file;
  YAML::Node config_yaml;
  std::string config_path = config + "/config/segment.yaml";
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

  if (config_yaml["range"].IsDefined() ) {
    range_ = config_yaml["range"].as<float>();
  } else {
    range_ = 51.2;
    LOG_DEBUG("there is no key <range> in yaml file.");
  }

  if (config_yaml["min_height"].IsDefined() ) {
    min_height_ = config_yaml["min_height"].as<float>();
  } else {
    min_height_ = -5.0;
    LOG_DEBUG("there is no key <min_height> in yaml file.");
  }

  if (config_yaml["max_height"].IsDefined() ) {
    max_height_ = config_yaml["max_height"].as<float>();
  } else {
    max_height_ = 5.0;
    LOG_DEBUG("there is no key <max_height> in yaml file.");
  }

  if (config_yaml["intensity_normalized"].IsDefined() ) {
    intensity_normalized_ = config_yaml["intensity_normalized"].as<bool>();
  } else {
    intensity_normalized_ = false;
    LOG_DEBUG("there is no key <intensity_normalized> in yaml file.");
  }

  if (config_yaml["score_threshold"].IsDefined() ) {
    score_threshold_ = config_yaml["score_threshold"].as<float>();
  } else {
    score_threshold_ = 0.6;
    LOG_DEBUG("there is no key <score_threshold> in yaml file.");
  }

  if (config_yaml["objectness_thresh"].IsDefined() ) {
    objectness_thresh_ = config_yaml["objectness_thresh"].as<float>();
  } else {
    objectness_thresh_ = 0.6;
    LOG_DEBUG("there is no key <objectness_thresh> in yaml file.");
  }

  if (config_yaml["height_thresh"].IsDefined() ) {
    height_thresh_ = config_yaml["height_thresh"].as<float>();
  } else {
    height_thresh_ = 0.5;
    LOG_DEBUG("there is no key <height_thresh> in yaml file.");
  }

  if (config_yaml["min_pts_num"].IsDefined() ) {
    min_pts_num_ = config_yaml["min_pts_num"].as<int>();
  } else {
    min_pts_num_ = 5;
    LOG_DEBUG("there is no key <min_pts_num> in yaml file.");
  }

  if (config_yaml["use_all_grids_for_clustering"].IsDefined() ) {
    use_all_grids_for_clustering_ = config_yaml["use_all_grids_for_clustering"].as<bool>();
  } else {
    use_all_grids_for_clustering_ = false;
    LOG_DEBUG("there is no key <use_all_grids_for_clustering> in yaml file.");
  }

  // if (config_yaml["ground_height"].IsDefined() ) {
  //   ground_height_ = config_yaml["ground_height"].as<float>();
  // } else {
  //   ground_height_ = -1.8;
  //   LOG_DEBUG("there is no key <ground_height> in yaml file.");
  // }
  #ifdef _USE_MIIVII_
    engine_file = WORKSPACE_PATH;
    engine_file = engine_file + "/models/cnnseg/deploy.caffemodel_FP16.trt";
  #else // _USE_MIIVII_
    engine_file = config + engine_file; 
  #endif // _USE_MIIVII_ 

  std::vector<std::string> outputBlobName{
      "category_score",
      "instance_pt", 
      "confidence_score", 
      "classify_score", 
      "heading_pt", 
      "height_pt"};
  output_blob_name_ = outputBlobName;
  std::vector<std::string> input_blob_name_{"input"};

  trt_net_.reset(novauto::tensorrt::inference::CreateInferenceByName(
    "TRTNet", engine_file, input_blob_name_, outputBlobName)); 

  std::vector<int> dims = (*trt_net_).GetBindingDims(0);
  width_   = dims[dims.size() - 1];
  height_  = dims[dims.size() - 2];
  channel_ = dims[dims.size() - 3];  
  batch_   = (*trt_net_).GetMaxBatchSize();
	channel_size_  = height_ * width_;

  feature_generator_.reset(new FeatureGenerator());

#ifdef __USE_GPU__
  LOG_DEBUG("segmentation preprocess use GPU.");
  if ( !feature_generator_->init((*trt_net_).GetBindingPtr(0), height_,
       width_, range_, min_height_, max_height_, intensity_normalized_, 
       batch_, channel_) ) {
    LOG_ERROR("Fail to Initialize feature generator for Segmentation");
    return false;
  }
#else
  feature_blob_.reset(new std::vector<float>());
  if ( !feature_generator_->init(feature_blob_.get(), height_, width_, range_, 
      min_height_, max_height_, intensity_normalized_, batch_, channel_) ) {
    LOG_ERROR("Fail to Initialize feature generator for Segmentation");
    return false;
  }  
#endif

  cluster2d_.reset(new Cluster2D());
  if (!cluster2d_->init(height_, width_, range_)) {
    LOG_ERROR("Fail to Initialize cluster2d for Segmentation");
    return false;
  }
  output_data_.resize(output_blob_name_.size());

  LOG_INFO("Segmentation engine_file: %s", engine_file.c_str());
  LOG_INFO("Segmentation range: %.2f", range_);
  LOG_INFO("Segmentation min_height: %.2f", min_height_);
  LOG_INFO("Segmentation max_height: %.2f", max_height_);
  LOG_INFO("Segmentation intensity_normalized: %d", int(intensity_normalized_));
  LOG_INFO("Segmentation score_threshold: %.2f", score_threshold_);

  return true;
}

bool Segmentation::segment(const pcl::PointCloud<pcl::PointXYZI>::Ptr& pc_ptr,
    const pcl::PointIndices& valid_idx, perception::ObjectArray& objects) {
  int num_pts = static_cast<int>(pc_ptr->points.size());
  if (num_pts == 0) {
    LOG_WARN("Segmentation Empty point cloud.");
    return true;
  }
  _TCSV_INIT();
  _TCSV_START();
#ifdef __USE_GPU__
  (*feature_generator_).generate((void*)pc_ptr->points.data(), 
      pc_ptr->points.size());
#else
	feature_generator_.get()->generate(pc_ptr);
  trt_net_->SetInputTensor(0, *feature_blob_);
#endif
  _TCSV_END();
  _TCSV_START();
  trt_net_->Infer();
  for(int output_idx = 0; output_idx < output_blob_name_.size(); 
      ++output_idx) {
    trt_net_->GetOutputTensor(output_idx + 1, output_data_[output_idx]);  
  }
  _TCSV_END();
  _TCSV_START();
  float *category_pt = output_data_[0].data();
  float *instance_pt = output_data_[1].data();
  float *confidence_pt = output_data_[2].data();
  float *classify_pt = output_data_[3].data();
  float *heading_pt = output_data_[4].data();
  float *height_pt = output_data_[5].data();

  perception::Header  in_header;
  cluster2d_->cluster(category_pt, instance_pt, pc_ptr,
      valid_idx, objectness_thresh_,  use_all_grids_for_clustering_);
  cluster2d_->filter(confidence_pt, height_pt);
  cluster2d_->classify(classify_pt);
  cluster2d_->heading(heading_pt);
  cluster2d_->getObjects(score_threshold_, height_thresh_,
      min_pts_num_, objects, in_header);
  _TCSV_END();
  _TCSV_PRINT(duration_path_, (!duration_path_.empty()) );
  return true;
}

}