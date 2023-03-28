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
// #define _TIME_POINT_ 1
#include "common/time_point.h"
#include "lidar/lidar_process.h"
#include "lidar/point_pillars/pointpillars.h"
#include "lidar/segmentation/segmentation.h"
#include "lidar/ground_filter/plane_ground_filter.h"
#include "lidar/cluster/euclidean_cluster.h"
#include "lidar/tracker/kf/lidar_track.h"
#include "inference.h"
#include "inference_factory.h"
#include <memory>
#include <yaml-cpp/yaml.h>
#include <fstream>
#include <iostream>
#include <csignal>
#include <unistd.h>
#include <pcl/filters/impl/filter.hpp>

#define PI_2_ROTATION 0

#define INIT_PARAMETER(node, name, type, default_val)  if (node[#name].IsDefined() ) { \
    name##_  = node[#name].as<type>(); \
  } else {  \
    name##_ = (default_val); \
    LOG_INFO("there is no key <%s> in yaml file.", #name); \
  }

#define INIT_PARAMETER_REQUIRED(node, name, type)  if (node[#name].IsDefined() ) { \
    name##_  = node[#name].as<type>(); \
  } else {  \
    LOG_ERROR("there is no key <%s> in yaml file.", #name); \
    return; \
  }

#define INIT_PARAMETER_OPTIONAL(node, name, type, default_val)  if (node[#name].IsDefined() ) { \
    name##_  = node[#name].as<type>(); \
  } else {  \
    name##_ = (default_val); \
    LOG_DEBUG("there is no key <%s> in yaml file.", #name); \
  }

namespace perception {
/**
 * @brief Construct a new Lidar Process object
 */
LidarProcess::LidarProcess() {}
/**
 * @brief Destroy the Lidar Process object
 */
LidarProcess::~LidarProcess() {
  if (cluster_thread_ != nullptr) {
    cluster_thread_->join();
  }
};
/**
 * @brief 初始化函数，通过yaml读入配置文件
 * @param  config           输入yaml配置文件路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool LidarProcess::init(std::string& config) {
  YAML::Node config_yaml;
  std::string lidar_config_path = config+"/config/lidar.yaml";
  config_yaml = YAML::LoadFile(lidar_config_path);
  if (config_yaml.IsNull()) {
    LOG_ERROR("There is no config file for lidar_process !!!");
    return false;
  }

  INIT_PARAMETER_OPTIONAL(config_yaml, duration_path, std::string, "") 
  INIT_PARAMETER_OPTIONAL(config_yaml, benchmark_path, std::string, "") 

  /** read lidar imu calibration */
  std::string lidar_imu_cal = config + "/config/lidar_imu_cal.yaml";
  YAML::Node lidar_imu_yaml = YAML::LoadFile(lidar_imu_cal);
  if (lidar_imu_yaml.IsNull()) {
    LOG_ERROR("There is no calibration file for lidar_imu.");
    return false;
  }
  if (!lidar_imu_yaml["lidar_imu_rotation"].IsDefined() ) {
    LOG_ERROR("there is no key <lidar_imu_rotation> in yaml file.");
    return false;
  }
  if (!lidar_imu_yaml["lidar_imu_translation"].IsDefined() ) {
    LOG_ERROR("there is no key <lidar_imu_rotation> in yaml file.");
    return false;
  }
  const YAML::Node& rot = lidar_imu_yaml["lidar_imu_rotation"];
  const YAML::Node& trans = lidar_imu_yaml["lidar_imu_translation"];  
  lidar2imu_rotation_ << 
      rot[0].as<double>(), rot[1].as<double>(), rot[2].as<double>(), 
      rot[3].as<double>(), rot[4].as<double>(), rot[5].as<double>(), 
      rot[6].as<double>(), rot[7].as<double>(), rot[8].as<double>();
  lidar2imu_translation_ << trans[0].as<double>(), 
      trans[1].as<double>(), trans[2].as<double>();

  INIT_PARAMETER(config_yaml, use_cluster, bool, false) 

  std::string cluster_config_;
  std::string ground_filter_config_;
  std::string lidar_track_config_;
  std::string point_pillars_config_;
  std::string segment_config_;

  INIT_PARAMETER(config_yaml, use_point_pillars, bool, true)  
  if (use_point_pillars_) {
    point_pillars_.reset(new perception::Pointpillars());
    if (!point_pillars_->init(config)) {
      LOG_ERROR("point pillars init failed !!!");
      return false;
    } 
  } else {
    segment_.reset(new perception::Segmentation());
    if (!segment_->init(config)) {
      LOG_ERROR("segmentation init failed !!!");
      return false;
    }    
  }

  INIT_PARAMETER(config_yaml, use_ground_filter, bool, true)  
  if (use_ground_filter_) {
    ground_filter_.reset(new perception::PlaneGroundFilter());
    if (!ground_filter_->init(config)) {
      LOG_ERROR("PlaneGroundFilter init failed !!!");
      return false;
    }
  }

  INIT_PARAMETER(config_yaml, use_cluster, bool, true)  
  if (use_cluster_) {
    cluster_.reset(new perception::EuclideanCluster());
    if (!cluster_->init(config)) {
      LOG_ERROR("EuclideanCluster init failed !!!");
      return false;
    }
  }

  INIT_PARAMETER(config_yaml, use_tracker, bool, true)  
  if (use_tracker_) {
    tracker_.reset(new perception::LidarTrack());
    if (!tracker_->init(config)) {
      LOG_ERROR("LidarTrack init failed !!!");
      return false;
    }
  }

  cluster_initialized_ = false;
  cloud_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_ground_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_objects_indices_ptr_.reset(new pcl::PointIndices);

  /** first time create cluster thread */
  if (use_cluster_ && !cluster_initialized_) {
    filtered_cloud_ready_ = false;
    cluster_ready_ = false;
    LOG_DEBUG("create cluster thread."); 
    main_lock_.reset(new std::unique_lock<std::mutex>(filtered_cloud_mutex_));
    cluster_thread_.reset(new std::thread(&LidarProcess::clusterProcess, this));
    cluster_initialized_ = true;
  }

  return true;
}
/**
 * @brief 激光雷达感知处理函数，用于完成感知处理任务
 * @param  header           输入时间戳
 * @param  cloud_ptr        输入点云
 * @param  translation      输入坐标偏移向量，imu to map
 * @param  rotation         输入做白哦转换矩阵， imu to map
 * @param  objects          输出检测目标
 * @param  tracked_objects  输出跟踪目标
 * @param  filtered_cloud_ptr 输出过滤NaN后点云
 * @param  filtered_cloud_ground_ptr 输出过滤地面后的点云
 * @return true 处理成功
 * @return false 处理失败
 */
bool LidarProcess::process(perception::Header& header, 
    const pcl::PointCloud<pcl::PointXYZI>::Ptr& cloud_ptr,		
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation,
    perception::ObjectArray& objects,
    perception::ObjectArray& tracked_objects,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ptr,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ground_ptr) {

  _TCSV_INIT();
  _TCSV_START();
  /** variable */
  pcl::PointIndices valid_idx;
  header_ = header;
  filtered_cloud_ptr_ = filtered_cloud_ptr;
  filtered_cloud_ground_ptr_ = filtered_cloud_ground_ptr;
  removeNaNFromPointCloud(*cloud_ptr, *filtered_cloud_ptr_, valid_idx.indices);
  _TCSV_END();

  /** start cluster thread */
  if (cluster_initialized_) {
    filtered_cloud_ready_ = true;
    (*main_lock_).unlock();
    filtered_cloud_cond_.notify_one();
  }

  /** detect process */
  _TCSV_START();

  dl_objects_.reset(new perception::ObjectArray);
  if (use_point_pillars_) {
    /** point pillars process */
    point_pillars_->detect(filtered_cloud_ptr_, valid_idx, *dl_objects_);
  } else {
    /** segment process */
    segment_->segment(filtered_cloud_ptr_, valid_idx, *dl_objects_);    
  }
  _TCSV_END();

  /** wait cluster thread */
  _TCSV_START();
  if (cluster_initialized_) {
    LOG_DEBUG("wait cluster here.");  
    (*main_lock_).lock();
    // std::unique_lock<std::mutex> lock(filtered_cloud_mutex_);
    filtered_cloud_cond_.wait(*main_lock_, [this] { return this->cluster_ready_; });
    cluster_ready_ = false;  

    /** object merge */
    merge(objects);      
  } else {
    for (auto& obj: *dl_objects_) {
      objects.push_back(obj);
    } 
  }
  _TCSV_END();

  LOG_DEBUG("track...");
  /** tracker */
  _TCSV_START();
  Eigen::Vector3d trans = rotation * lidar2imu_translation_ + translation;
  Eigen::Matrix3d rot = rotation * lidar2imu_rotation_;
  tracker_->track(header, objects, trans, rot, tracked_objects);
  _TCSV_END();
  _TCSV_PRINT(duration_path_+"/lidar.csv", (!duration_path_.empty()) );
  LOG_DEBUG("got track objs : %d", tracked_objects.size());

  /** clean variables */
  filtered_cloud_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_ground_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_objects_indices_ptr_.reset(new pcl::PointIndices);

  return true;
}
/**
 * @brief 激光雷达感知处理函数，用于完成感知处理任务，带bitmap地图过滤
 * @param  header           输入时间戳
 * @param  cloud_ptr        输入点云
 * @param  map              输入bitmap地图
 * @param  translation      输入坐标偏移向量，imu to map
 * @param  rotation         输入做白哦转换矩阵， imu to map
 * @param  objects          输出检测目标
 * @param  tracked_objects  输出跟踪目标
 * @param  filtered_cloud_ptr 输出过滤NaN后点云
 * @param  filtered_cloud_ground_ptr 输出过滤地面后的点云
 * @return true 处理成功
 * @return false 处理失败
 */
bool LidarProcess::process(perception::Header& header,  
    const pcl::PointCloud<pcl::PointXYZI>::Ptr& cloud_ptr,	
    const perception::BitmapBit8& map,			
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation,
    perception::ObjectArray& objects,
    perception::ObjectArray& tracked_objects,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ptr,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ground_ptr) {
    
  _TCSV_INIT();
  _TCSV_START();
  /** variable */
  pcl::PointIndices valid_idx;
  pcl::PointCloud<pcl::PointXYZI>::Ptr nan_cloud_ptr(new pcl::PointCloud<pcl::PointXYZI>);
  removeNaNFromPointCloud(*cloud_ptr, *nan_cloud_ptr, valid_idx.indices);
  _TCSV_END();

  Eigen::Vector3d trans = rotation * lidar2imu_translation_ + translation;
  Eigen::Matrix3d rot = rotation * lidar2imu_rotation_;

  header_ = header;
  filtered_cloud_ptr_ = filtered_cloud_ptr;
  filtered_cloud_ground_ptr_ = filtered_cloud_ground_ptr;

  /** first time create cluster thread */
  if (use_cluster_ && !cluster_initialized_) {
    filtered_cloud_ready_ = false;
    cluster_ready_ = false;
    main_lock_.reset(new std::unique_lock<std::mutex>(filtered_cloud_mutex_));
    cluster_thread_.reset(new std::thread(&LidarProcess::clusterProcess, this));
    cluster_initialized_ = true;
  } 

  /** roi filter */ 
  _TCSV_START();
  float stride = map.stride;
  int roi_height = map.height; 
  int roi_width = map.width;
  const unsigned char * data = map.data;
  for (size_t i = 0; i < nan_cloud_ptr->points.size(); i++) {
    Eigen::Vector3d pt;
    pt << nan_cloud_ptr->points[i].x, 
        nan_cloud_ptr->points[i].y, nan_cloud_ptr->points[i].z;
    Eigen::Vector3d vec = rot * pt + rotation * lidar2imu_translation_; 
    int y = roi_height/2 - (int)std::floor( vec.y() / stride );
    int x = roi_width/2 + (int)std::floor( vec.x() / stride );
    if (x<0 || y<0 || x>=roi_width || y>=roi_height 
        || data[x + y*roi_width] == 0 
        || nan_cloud_ptr->points[i].z > 0.2) {
    } else {
      filtered_cloud_ptr_->points.push_back(nan_cloud_ptr->points[i]);
    }
  }
  _TCSV_END();

  /** start cluster thread */
  if (cluster_initialized_) {
    filtered_cloud_ready_ = true;
    (*main_lock_).unlock();
    filtered_cloud_cond_.notify_one();
  }

  /** DL detect process */
  _TCSV_START();

  dl_objects_.reset(new perception::ObjectArray);
  if (use_point_pillars_) {
    /** point pillars process */
    point_pillars_->detect(nan_cloud_ptr, valid_idx, *dl_objects_);
  } else {
    /** segment process */
    segment_->segment(nan_cloud_ptr, valid_idx, *dl_objects_);    
  }
  _TCSV_END();

  /** wait cluster thread */
  if (cluster_initialized_) {
    LOG_DEBUG("wait cluster here.");  
    (*main_lock_).lock();
    filtered_cloud_cond_.wait(*main_lock_, [this] { return this->cluster_ready_; });
    cluster_ready_ = false;   
    LOG_DEBUG("merge...");
    /** object merge */
    _TCSV_START();
    merge(objects);
    _TCSV_END();     
  } else {
    _TCSV_START();
    for (auto& obj: *dl_objects_) {
      objects.push_back(obj);
    }  
    _TCSV_END();  
  }

  LOG_DEBUG("track...");
  /** tracker */
  _TCSV_START();
  tracker_->track(header, objects, trans, rot, tracked_objects);
  _TCSV_END();
  _TCSV_PRINT(duration_path_+"/lidar.csv", (!duration_path_.empty()) );
  LOG_DEBUG("got track objs : %d", tracked_objects.size());

  /** clean variables */
  filtered_cloud_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_ground_indices_ptr_.reset(new pcl::PointIndices);
  filtered_cloud_objects_indices_ptr_.reset(new pcl::PointIndices);

  return true;
}

void signalHandler( int signum ) {
  std::cout << "Interrupt signal (" << signum << ") received.\n";
  // 清理并关闭
  // 终止程序  
  exit(signum);  
}
/**
 * @brief 聚类算法处理函数
 */
void LidarProcess::clusterProcess() {
  signal(SIGINT, signalHandler); 
	for (;;) {
    std::unique_lock<std::mutex> lock(filtered_cloud_mutex_);
    filtered_cloud_cond_.wait(lock, [this] { return this->filtered_cloud_ready_; });
    /** do cluster */
    LOG_DEBUG("do cluster here.");
    _TCSV_INIT();
    _TCSV_START();
    ground_filter_->filter(filtered_cloud_ptr_, 
        filtered_cloud_indices_ptr_, 
        filtered_cloud_ground_ptr_,
        filtered_cloud_ground_indices_ptr_);
    cluster_objects_.reset(new perception::ObjectArray);
    cluster_->cluster(filtered_cloud_ground_ptr_, 
        filtered_cloud_ground_indices_ptr_, *cluster_objects_);

    cluster_ready_ = true;
    filtered_cloud_ready_ = false;
    lock.unlock();
    LOG_DEBUG("cluster object : %d." , cluster_objects_->size() );
    _TCSV_END();
    _TCSV_PRINT(duration_path_+"/lidar.append.csv", (!duration_path_.empty()) );

    // filtered_cloud_cond_.notify_one();
    filtered_cloud_cond_.notify_all();
	}
}

/**
 * @brief 两种感知算法检测目标融合
 * @param  objects          输出感知目标
 */
void LidarProcess::merge(perception::ObjectArray& objects) {
  /** accept all deep learning objects */
  for (auto& obj: *dl_objects_) {
    objects.push_back(obj);
  }  

  /** accept all deep learning objects */
  for (auto& cluster_obj: *cluster_objects_) {
    bool repeated = false;
    for (auto& dl_obj: *dl_objects_) {
      if ( fabs(dl_obj.pose.x - cluster_obj.pose.x) < dl_obj.dims.x/2 
          || fabs(dl_obj.pose.y - cluster_obj.pose.y) < dl_obj.dims.y/2) {
        repeated = true;
        break;
      }
    } 
    if (!repeated) {
      objects.push_back(cluster_obj);      
    }
  }
}

/**
 * @brief 点云去除NaN点
 * @param  cloud_in         输入点云
 * @param  cloud_out        输出点云
 * @param  index            点索引值
 */
void LidarProcess::removeNaNFromPointCloud (
    const pcl::PointCloud<pcl::PointXYZI> &cloud_in, 
    pcl::PointCloud<pcl::PointXYZI> &cloud_out,
    std::vector<int> &index) {
  // If the clouds are not the same, prepare the output
  if (&cloud_in != &cloud_out) {
    cloud_out.header = cloud_in.header;
    cloud_out.points.resize (cloud_in.points.size ());
  }
  // Reserve enough space for the indices
  index.resize (cloud_in.points.size ());
  size_t j = 0;

  // If the data is dense, we don't need to check for NaN
  if (cloud_in.is_dense) {
    // Simply copy the data
    cloud_out = cloud_in;
    for (j = 0; j < cloud_out.points.size (); ++j)
      index[j] = static_cast<int>(j);
  } else {
    for (size_t i = 0; i < cloud_in.points.size (); ++i) {
      if (!pcl_isfinite (cloud_in.points[i].x) || 
          !pcl_isfinite (cloud_in.points[i].y) || 
          !pcl_isfinite (cloud_in.points[i].z))
        continue;
      cloud_out.points[j] = cloud_in.points[i];
      // cloud_out.points[j].z += 1.8;
      index[j] = static_cast<int>(j);
      j++;
    }
    if (j != cloud_in.points.size ()) {
      // Resize to the correct size
      cloud_out.points.resize (j);
      index.resize (j);
    }

    cloud_out.height = 1;
    cloud_out.width  = static_cast<uint32_t>(j);

    // Removing bad points => dense (note: 'dense' doesn't mean 'organized')
    cloud_out.is_dense = true;
  }
}

/**
 * @brief 点云去除NaN点
 * @param  cloud_in         输入点云
 * @param  index            使出点索引值
 */
void LidarProcess::removeNaNFromPointCloud (
    const pcl::PointCloud<pcl::PointXYZI> &cloud_in, 
    std::vector<int> &index) {
  if (index.size() != cloud_in.size()) {
    index.resize(cloud_in.size());
  }
  size_t j;
  // If the data is dense, we don't need to check for NaN
  if (cloud_in.is_dense) {
    for (j = 0; j < cloud_in.points.size(); ++j)
      index[j] = static_cast<int>(j);
  } else {
    for (size_t i = 0; i < cloud_in.points.size (); ++i) {
      if (!std::isfinite (cloud_in.points[i].x) || 
          !std::isfinite (cloud_in.points[i].y) || 
          !std::isfinite (cloud_in.points[i].z))
        continue;
      index[j] = static_cast<int>(i);
      j++;
    }
    if (j != cloud_in.points.size ()) {
      index.resize (j);
    }
  }
}

}