/**
 * @file euclidean_cluster.h
 * @brief 
 * @author Hongyan Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-03-26
 * 
 * @copyright Copyright (c) 2021  Novauto
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-03-26 <td>1.0     <td>Hongyan Pei     <td>注释
 * </table>
 */
#pragma once
#include "common/detected_object.h"
// For disable PCL complile lib, to use PointXYZIL
#define PCL_NO_PRECOMPILE
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_types.h>
#include <pcl/conversions.h>
#include <pcl_ros/transforms.h>
#include <pcl_ros/point_cloud.h>
#include <pcl/filters/filter.h>
#include <pcl/common/centroid.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/search/organized.h>
#include <pcl/search/kdtree.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/segmentation/extract_clusters.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/point_types.h>
#include <pcl/filters/project_inliers.h>
#include <pcl/features/normal_3d_omp.h>

#include <iostream>
#include <Eigen/Dense>



namespace perception {

class EuclideanCluster {
public:
  EuclideanCluster();
  ~EuclideanCluster();
  bool init(std::string& config);
  void cluster(const pcl::PointCloud<pcl::PointXYZI>::Ptr& in_cloud_ptr,
      const pcl::PointIndices::Ptr& in_indices_ptr,
      perception::ObjectArray& objects);

private:
  void voxel_grid_filter(pcl::PointCloud<pcl::PointXYZI>::Ptr in_pc, 
      pcl::PointCloud<pcl::PointXYZI>::Ptr out_pc, double leaf_size);

private:
  std::vector<double> seg_distance_; 
  std::vector<double> cluster_distance_; 
  double leaf_size_;
  int min_cluster_size_;
  int max_cluster_size_;
};

}

