/**
 * @file feature_generator.h
 * @brief 前处理生成特征图
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
#ifndef FEATURE_GENERATOR_H
#define FEATURE_GENERATOR_H

#include "lidar/segmentation/util.h"

#include <pcl/point_types.h>
#include <pcl/point_cloud.h>

#include <vector>

/**
 * @brief FeatureGenerator class
 */
class FeatureGenerator {
public:
/**
 * @brief Construct a new Feature Generator object
 */
FeatureGenerator() {}
/**
 * @brief Destroy the Feature Generator object
 */
~FeatureGenerator() {}

/**
 * @brief 前处理初始化
 * @param  out_blob         输入数据
 * @param  height           输入特征图高度
 * @param  width            输入特征图宽度
 * @param  range            输入特征图距离范围
 * @param  min_height       最小高度
 * @param  max_height       最大高度
 * @param  intensity_normalized 是否使用凡是率
 * @param  batchsize        batch size
 * @param  channel          通道数
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool init(std::vector<float>* out_blob, int height, int width, float range, 
    float min_height, float max_height, bool intensity_normalized, int batchsize, int channel);
/**
 * @brief 生成特征图
 * @param  pc_ptr           输入点云数据
 */
void generate(const pcl::PointCloud<pcl::PointXYZI>::Ptr& pc_ptr);

private:
  int width_ = 640;
  int height_ = 640;
  int channel_ = 8;
  int batch_ = 1;

  float range_ = 60;
  bool intensity_normalized_ = false;
  float min_height_ = 0.0;
  float max_height_ = 0.0;
  int channel_size_ = 0;
  // raw feature data
  float* max_height_data_ = nullptr;
  float* mean_height_data_ = nullptr;
  float* count_data_ = nullptr;
  float* direction_data_ = nullptr;
  float* top_intensity_data_ = nullptr;
  float* mean_intensity_data_ = nullptr;
  float* distance_data_ = nullptr;
  float* nonempty_data_ = nullptr;

  // output Caffe blob
  std::vector<float>* out_blob_ = nullptr;
  std::vector<float> log_table_;
  // point index in feature map
  std::vector<int> map_idx_;
  float logCount(int count);
};

#endif //FEATURE_GENERATOR_H
