/**
 * @file segmentation.h
 * @brief CNN segmentation implementation
 * @author H.Y. Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-02-19
 * 
 * @copyright Copyright (c) 2021
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-02-19 <td>1.0     <td>H.Y. Pei     <td>内容
 * </table>
 */
#ifndef _SEGMENTATION_H
#define _SEGMENTATION_H
#include "common/detected_object.h"
#include "lidar/segmentation/cluster2d.h"
#ifdef  __USE_GPU__
  #include "lidar/segmentation/feature_generator_cuda.h"
#else
  #include "lidar/segmentation/feature_generator.h"
#endif

#include "inference.h"
#include "inference_factory.h"
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>
#include <pcl_ros/point_cloud.h>
#include <chrono>
#include <numeric>
#include <string>

namespace perception {
/**
 * @brief Segmentation class
 */
class Segmentation {
public:
/**
 * @brief Construct a new Segmentation object
 */
Segmentation() {}
/**
 * @brief Destroy the Segmentation object
 */
~Segmentation() {}
/**
 * @brief 初始化函数，输入配置路径
 * @param  config           输入配置路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool init(std::string& config);
/**
 * @brief 分割过程，完成分割算法主题流程
 * @param  pc_ptr           输入点云
 * @param  valid_idx        输入点云索引
 * @param  objects          输出检测目标
 * @return true 分割成功
 * @return false 分割失败
 */
bool segment(const pcl::PointCloud<pcl::PointXYZI>::Ptr& pc_ptr,
              const pcl::PointIndices& valid_idx,
              perception::ObjectArray& objects);

private:
  int width_;
  int height_;
  int channel_;
  int batch_;
  int channel_size_;

  float score_threshold_;
  float ground_height_;  
  float range_;
  bool intensity_normalized_;
  float min_height_;
  float max_height_;
  float objectness_thresh_;
  float height_thresh_;
  int min_pts_num_; 
  bool use_all_grids_for_clustering_;

  int gpu_device_id_;
  bool use_gpu_;
  bool use_map_;
  std::string duration_path_;
  std::string benchmark_path_;

  std::shared_ptr<novauto::tensorrt::inference::Inference> trt_net_;
  std::vector<std::string> output_blob_name_;
  std::vector<std::vector<float>> output_data_;
  std::shared_ptr<std::vector<float>> feature_blob_;
  // clustering model for post-processing
  std::shared_ptr<Cluster2D> cluster2d_;
  // bird-view raw feature generator
  std::shared_ptr<FeatureGenerator> feature_generator_;

};

}
#endif //_SEGMENTATION_H
