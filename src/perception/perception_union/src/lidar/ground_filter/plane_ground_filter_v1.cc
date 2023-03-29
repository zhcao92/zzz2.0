#include "lidar/ground_filter/plane_ground_filter.h"

#include "common/log.hpp"
#include "common/time_point.h"
#include <yaml-cpp/yaml.h>

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
// #include <pcl/io/pcd_io.h>

namespace perception {

static bool point_cmp(pcl::PointXYZI a, pcl::PointXYZI b) {
  return a.z < b.z;
}

PlaneGroundFilter::PlaneGroundFilter() {}

PlaneGroundFilter::~PlaneGroundFilter() {}

bool PlaneGroundFilter::init(std::string& config) {
  YAML::Node config_yaml;
  config_yaml = YAML::LoadFile(config);
  if (config_yaml.IsNull()) {
    LOG_DEBUG("There is no config file for Plane Ground Filter.");
    return false;
  }

  if (config_yaml["sensor_height"].IsDefined() ) {
    sensor_height_ = config_yaml["sensor_height"].as<double>();
  } else {
    sensor_height_ = 1.7;
    LOG_DEBUG("there is no key <sensor_height> in yaml file.");
  }

  if (config_yaml["num_iter"].IsDefined() ) {
    num_iter_ = config_yaml["num_iter"].as<int>();
  } else {
    num_iter_ = 3;
    LOG_DEBUG("there is no key <num_iter> in yaml file.");
  }

  if (config_yaml["num_lpr"].IsDefined() ) {
    num_lpr_ = config_yaml["num_lpr"].as<int>();
  } else {
    num_lpr_ = 8;
    LOG_DEBUG("there is no key <num_lpr> in yaml file.");
  }

  if (config_yaml["th_seeds"].IsDefined() ) {
    th_seeds_ = config_yaml["th_seeds"].as<double>();
  } else {
    th_seeds_ = 0.5;
    LOG_DEBUG("there is no key <th_seeds> in yaml file.");
  }
  
  if (config_yaml["th_dist"].IsDefined() ) {
    th_dist_ = config_yaml["th_dist"].as<double>();
  } else {
    th_dist_ = 0.35;
    LOG_DEBUG("there is no key <th_dist> in yaml file.");
  }
  return true;
}

void PlaneGroundFilter::filter(const pcl::PointCloud<pcl::PointXYZI>::Ptr& in_cloud_ptr, 
      const pcl::PointIndices::Ptr& in_indices_ptr, 
      pcl::PointCloud<pcl::PointXYZI>::Ptr& out_cloud_ptr,
      pcl::PointIndices::Ptr& out_indices_ptr) {

  int grid_size = 10;
  int column = 160/grid_size;
  int row = 100/grid_size;
  Grid grid [column][row];

  Eigen::MatrixXf normal_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr g_seeds_pc_(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::PointCloud<pcl::PointXYZI>::Ptr g_ground_pc_(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::PointCloud<pcl::PointXYZI>::Ptr g_not_ground_pc_(new pcl::PointCloud<pcl::PointXYZI>);

  // pcl::PointCloud<pcl::PointXYZI>::Ptr g_no_ground(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::PointCloud<pcl::PointXYZI>::Ptr g_ground(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::PointCloud<pcl::PointXYZI>::Ptr temp_points(new pcl::PointCloud<pcl::PointXYZI>);
  // pcl::PointCloud<pcl::PointXYZI>::Ptr every_plane_points(new pcl::PointCloud<pcl::PointXYZI>);
  // pcl::PointCloud<pcl::PointXYZI>::Ptr in_cloud_ptr(new pcl::PointCloud<pcl::PointXYZI>);

  std::vector<int> indices;
  pcl::removeNaNFromPointCloud(*in_cloud_ptr, *temp_points, indices);

  int points_num = temp_points->points.size();

  for (size_t i = 0; i < points_num; i++) {
    /**  */
    if(temp_points->points[i].z < -(sensor_height_ + 1.0))
      continue;
    int x_grid = floor(double(temp_points->points[i].x / grid_size) + column / 2);
    int y_grid = floor(double(temp_points->points[i].y / grid_size)+ row / 2);
    if(x_grid >= 0 && x_grid < column && y_grid >= 0 && y_grid < row )
      grid[x_grid][y_grid].grid_cloud->points.push_back(temp_points->points[i]);
  }

  for(int i = 0; i < column ; i++ ) {
    for(int j = 0; j < row ; j++) {
      int grid_num = grid[i][j].grid_cloud->points.size();
      if(grid_num == 0)
        continue;
      sort(grid[i][j].grid_cloud->points.begin(), grid[i][j].grid_cloud->points.end(), point_cmp);
      double sum = 0;
      int cnt = 0;
      for (int k = 0; k < grid_num && cnt < num_lpr_ ; k++) {     // num_lpr_ = 20 
        sum += grid[i][j].grid_cloud->points[k].z;
        cnt++;
      }
      double lpr_height = (cnt != 0) ? (sum / cnt) : (-sensor_height_) ;
      if (lpr_height > 1.0) {
        lpr_height = 1.0;
      }
      if(grid_num < 0.0006 * points_num) {
        for(int t = 0; t < grid[i][j].grid_cloud->points.size(); t++) {
          if (grid[i][j].grid_cloud->points[t].z > lpr_height + th_dist_) {
            g_not_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[t]);
          } else {
            g_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[t]);
          }
        }
      } else {
        g_seeds_pc_->clear();
        for (int k = 0; k < grid[i][j].grid_cloud->points.size(); k++) {
          if (grid[i][j].grid_cloud->points[k].z < lpr_height + th_seeds_) {     //th_seeds = 0.60
            g_seeds_pc_->points.push_back(grid[i][j].grid_cloud->points[k]);
          } else {
            break;
          }
        }

        g_ground_pc_ = g_seeds_pc_;
        for (int l = 0; l < num_iter_; l++) {
          // estimate_plane_();
          Eigen::Matrix3f cov;
          Eigen::Vector4f pc_mean;
          pcl::computeMeanAndCovarianceMatrix(*g_ground_pc_, cov, pc_mean);   //计算均值和协方差矩阵

          // Singular Value Decomposition: SVD
          Eigen::JacobiSVD<Eigen::MatrixXf> svd(cov, Eigen::DecompositionOptions::ComputeFullU);
          // use the least singular vector as normal   使用最小奇异向量作为法向量
          normal_ = (svd.matrixU().col(2));

          double adatp_threVal = 0;
          double aved = 0;

          Eigen::MatrixXf seed_points(g_ground_pc_->points.size(), 3);
          int a = 0;

          for(auto k : g_ground_pc_->points) {
            seed_points.row(a++) << k.x, k.y, k.z;
          }

          Eigen::VectorXf seed_result = seed_points * normal_;

          g_ground_pc_->clear();
          g_not_ground_pc_->clear();

          if(fabs(normal_(2)) > fabs(normal_(1)) && fabs(normal_(2)) > fabs(normal_(0))) {
            for (int u = 0; u < seed_result.rows(); u++) {
              aved += seed_result[u];
            }
            aved /= seed_result.rows();

            for (int r = 0; r < seed_result.rows(); r++) {
              adatp_threVal += (seed_result[r] - aved) * (seed_result[r] - aved);
            }

            adatp_threVal /= seed_result.rows();
            adatp_threVal = std::sqrt(adatp_threVal);

            Eigen::MatrixXf points(grid[i][j].grid_cloud->points.size(), 3);
            int m = 0;
            for (auto p : grid[i][j].grid_cloud->points)
            {
              points.row(m++) << p.x, p.y, p.z;
            }

            Eigen::VectorXf result = points * normal_;

            for (int r = 0; r < result.rows(); r++) {
              if (result[r] < aved + 0.5 * adatp_threVal + th_dist_ - 0.1) {
                g_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[r]);
              } else {
                g_not_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[r]);
              }
            }
          } else {
            for(int t = 0; t < grid[i][j].grid_cloud->points.size(); t++) {
              if (grid[i][j].grid_cloud->points[t].z > lpr_height + th_dist_) {
                g_not_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[t]);
              } else {
                g_ground_pc_->points.push_back(grid[i][j].grid_cloud->points[t]);
              }
            }
          }
        }
      }

      *g_ground += *g_ground_pc_;
      *out_cloud_ptr += *g_not_ground_pc_;
    }
  }
}

} // namespace perception 