#pragma once

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

class Grid {
public:
  pcl::PointCloud<pcl::PointXYZI>::Ptr grid_cloud {new pcl::PointCloud<pcl::PointXYZI>};
  pcl::PointIndices::Ptr grid_inliers {new pcl::PointIndices};
};

class PlaneGroundFilter {
public:
  PlaneGroundFilter();
  ~PlaneGroundFilter();
  bool init(std::string& config);
  void filter(const pcl::PointCloud<pcl::PointXYZI>::Ptr& in_cloud_ptr, 
      const pcl::PointIndices::Ptr& in_indices_ptr, 
      pcl::PointCloud<pcl::PointXYZI>::Ptr& out_cloud_ptr,
      pcl::PointIndices::Ptr& out_indices_ptr);

private:
  int sensor_model_;
  double sensor_height_;
  double clip_height_;
  double min_distance_;
  double max_distance_;
  int num_seg_ = 1;
  int num_iter_; 
  int num_lpr_;
  double th_seeds_; 
  double th_dist_;
  std::vector<double> seg_distance_, cluster_distance_, leaf_size_distance_, plane_distance_x_ ,plane_distance_y_;
};


} // namespace perception 



