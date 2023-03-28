#include "lidar/cluster/euclidean_cluster.h"
#include "common/log.hpp"
#include "common/time_point.h"
#include "common/detected_object.h"

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
#include <yaml-cpp/yaml.h>

namespace perception {

// static int *rand_rgb() {
//   int *rgb = new int[3];
//   rgb[0] = rand() % 255;
//   rgb[1] = rand() % 255;
//   rgb[2] = rand() % 255;
//   return rgb;
// }

EuclideanCluster::EuclideanCluster() {}

EuclideanCluster::~EuclideanCluster() {}

bool EuclideanCluster::init(std::string& config) { 
  YAML::Node config_yaml;
  std::string config_path = config + "/config/cluster.yaml";
  config_yaml = YAML::LoadFile(config_path);
  if (config_yaml.IsNull()) {
    LOG_DEBUG("There is no config file for Plane Ground Filter.");
    return false;
  }

  if (config_yaml["seg_distance"].IsDefined() ) {
    const YAML::Node& sub_node = config_yaml["seg_distance"];
    for (auto i=0; i<sub_node.size(); i++) {
      seg_distance_.push_back(sub_node[i].as<double>());
    }
  } else {
    seg_distance_.push_back(20.0);
    seg_distance_.push_back(40.0);
    seg_distance_.push_back(60.0);
    LOG_DEBUG("there is no key <seg_distance> in yaml file.");
  }

  if (config_yaml["cluster_distance"].IsDefined() ) {
    const YAML::Node& sub_node = config_yaml["cluster_distance"];
    for (auto i=0; i<sub_node.size(); i++) {
      cluster_distance_.push_back(sub_node[i].as<double>());
    }
  } else {
    cluster_distance_.push_back(0.6);
    cluster_distance_.push_back(1.0);
    cluster_distance_.push_back(1.3);
    cluster_distance_.push_back(1.8);
    LOG_DEBUG("there is no key <cluster_distance> in yaml file.");
  }

  if (config_yaml["min_cluster_size"].IsDefined() ) {
    min_cluster_size_ = config_yaml["min_cluster_size"].as<int>();
  } else {
    min_cluster_size_ = 5;   //10
    LOG_DEBUG("there is no key <min_cluster_size> in yaml file.");
  }

  if (config_yaml["max_cluster_size"].IsDefined() ) {
    max_cluster_size_ = config_yaml["max_cluster_size"].as<int>();
  } else {
    max_cluster_size_ = 2000;
    LOG_DEBUG("there is no key <max_cluster_size> in yaml file.");
  }

  if (config_yaml["leaf_size"].IsDefined() ) {
    leaf_size_ = config_yaml["leaf_size"].as<double>();
  } else {
    leaf_size_ = 0.15;
    LOG_DEBUG("there is no key <leaf_size> in yaml file.");
  }

  return true;
}


void EuclideanCluster::voxel_grid_filter(pcl::PointCloud<pcl::PointXYZI>::Ptr in_pc, 
    pcl::PointCloud<pcl::PointXYZI>::Ptr out_pc, double leaf_size) {
  pcl::PointCloud<pcl::PointXYZI>::Ptr temp_points(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::VoxelGrid<pcl::PointXYZI> vox;
  vox.setInputCloud(in_pc);
  vox.setLeafSize(leaf_size, leaf_size, leaf_size);
  vox.filter(*out_pc);
}

void EuclideanCluster::cluster(const pcl::PointCloud<pcl::PointXYZI>::Ptr& in_cloud_ptr, 
    const pcl::PointIndices::Ptr& in_indices_ptr, perception::ObjectArray& objects) {
  /** KDtree */
  pcl::PointCloud<pcl::PointXYZI>::Ptr in_pc(new pcl::PointCloud<pcl::PointXYZI>);

  voxel_grid_filter(in_cloud_ptr, in_pc, leaf_size_);
  // pcl::search::KdTree<PointT>::Ptr tree(new pcl::search::KdTree<PointT>);
  pcl::KdTreeFLANN<pcl::PointXYZI> tree;
  tree.setInputCloud(in_pc);

  std::vector<bool> processed(in_pc->points.size(), false);
  // 近邻的索引值、近邻的中心距
  std::vector<int> nn_indices;
  std::vector<float> nn_distances;
  float tolerance;
  std::vector<pcl::PointIndices> local_indices;

  for(int i =0; i < in_pc->points.size(); ++i) {
    if(processed[i])
      continue;
    std::vector<unsigned int> seed_queue;
    int sq_idx = 0;
    seed_queue.push_back(i);

    processed[i] = true;
    while (sq_idx < seed_queue.size()) {
      pcl::PointXYZI searchPoint;
      searchPoint.x = in_pc->points[seed_queue[sq_idx]].x;
      searchPoint.y = in_pc->points[seed_queue[sq_idx]].y;
      searchPoint.z = in_pc->points[seed_queue[sq_idx]].z;
      searchPoint.intensity = in_pc->points[seed_queue[sq_idx]].intensity;

      float distance = sqrt(searchPoint.x * searchPoint.x + searchPoint.y * searchPoint.y);

      if(distance < seg_distance_[0])       //20
        tolerance = cluster_distance_[0];         //0.6
      else if(distance < seg_distance_[1])  //40
        tolerance = cluster_distance_[1];         //1.0
      else if(distance < seg_distance_[2])  //60
        tolerance = cluster_distance_[2];         //1.3
      else
        tolerance = cluster_distance_[3];         //1.8

      if(tree.radiusSearch(searchPoint, tolerance, nn_indices, nn_distances) <= 0) {
        sq_idx++;
        continue;
      } else {
        for(size_t j = 0; j < nn_indices.size(); ++j) {
          if(processed[nn_indices[j]])
            continue;
          processed[nn_indices[j]] = true;
          seed_queue.push_back(nn_indices[j]);
        }
      }
      sq_idx++;
    }

    if (seed_queue.size () >= min_cluster_size_ 
        && seed_queue.size () <= max_cluster_size_) {
      pcl::PointIndices r;
      r.indices.resize (seed_queue.size ());
      for (size_t j = 0; j < seed_queue.size (); ++j)
        r.indices[j] = seed_queue[j];

      // r.header = in_pc->header;
      local_indices.push_back (r);
    }
  }

  /** objectness */
  if (local_indices.empty())
      return;
  for(std::vector<pcl::PointIndices>::const_iterator it = local_indices.begin(); 
      it != local_indices.end(); ++it) {
    /** convert point format */
    // pcl::PointXYZRGB point_temp;
    pcl::PointXYZRGBNormal point_n;
    // int *rgb = rand_rgb();
    pcl::PointCloud<pcl::PointXYZRGBNormal>::Ptr 
        cluster_obj(new pcl::PointCloud<pcl::PointXYZRGBNormal>);
    for(std::vector<int>::const_iterator pit = it->indices.begin(); 
        pit != it->indices.end(); ++pit) {
      // point_temp.x = in_pc->points[*pit].x;
      // point_temp.y = in_pc->points[*pit].y;
      // point_temp.z = in_pc->points[*pit].z;
      // point_temp.b = rgb[0];
      // point_temp.g = rgb[1];
      // point_temp.r = rgb[2];
      point_n.x = in_pc->points[*pit].x;
      point_n.y = in_pc->points[*pit].y;
      point_n.z = in_pc->points[*pit].z;
      cluster_obj->push_back(point_n);
      // out_pc->push_back(point_temp);
    }

    /** get box info */
    Eigen::Vector4f pcaCentroid;
    pcl::compute3DCentroid(*cluster_obj, pcaCentroid);
    Eigen::Matrix3f covariance;
    pcl::computeCovarianceMatrixNormalized(*cluster_obj, pcaCentroid, covariance);
    Eigen::SelfAdjointEigenSolver<Eigen::Matrix2f> 
        eigen_solver(covariance.block<2,2>(0,0), Eigen::ComputeEigenvectors);
    Eigen::Matrix2f eigenVectorsPCA2 = eigen_solver.eigenvectors();
    Eigen::Matrix3f eigenVectorsPCA(Eigen::Matrix3f::Identity());
    eigenVectorsPCA.block<2,2>(0,0) = eigenVectorsPCA2;
    eigenVectorsPCA(2, 2) = 1.0;

    eigenVectorsPCA.col(2) = eigenVectorsPCA.col(0).cross(eigenVectorsPCA.col(1));
    eigenVectorsPCA.col(0) = eigenVectorsPCA.col(1).cross(eigenVectorsPCA.col(2));
    eigenVectorsPCA.col(1) = eigenVectorsPCA.col(2).cross(eigenVectorsPCA.col(0));

    // Transform the original cloud to the origin where the principal components correspond to the axes.
    Eigen::Matrix4f transform(Eigen::Matrix4f::Identity());
    transform.block<3,3>(0,0) = eigenVectorsPCA.transpose();
    transform.block<3,1>(0,3) = -1.f * (transform.block<3,3>(0,0) * pcaCentroid.head<3>());

    pcl::PointCloud<pcl::PointXYZRGBNormal>::Ptr 
        transformedCloud(new pcl::PointCloud<pcl::PointXYZRGBNormal>);
    pcl::transformPointCloudWithNormals(*cluster_obj, *transformedCloud, transform);

    pcl::PointXYZRGBNormal minPoint, maxPoint;
    pcl::getMinMax3D(*transformedCloud, minPoint, maxPoint);
    const Eigen::Vector3f meanDiagonal = 
        0.5f*(maxPoint.getVector3fMap() + minPoint.getVector3fMap());
    Eigen::Vector3f dimeensions = 
        (maxPoint.getVector3fMap() - minPoint.getVector3fMap()).array().abs();
    dimeensions(0) = dimeensions(0) < 0.1 ? 0.1 : dimeensions(0);
    dimeensions(1) = dimeensions(1) < 0.1 ? 0.1 : dimeensions(1);
    dimeensions(2) = dimeensions(2) < 0.1 ? 0.1 : dimeensions(2);
    Eigen::Matrix3f rot = transform.block<3,3>(0,0);

    Eigen::Quaternionf bboxQuaternion(eigenVectorsPCA);
    Eigen::Vector3f bboxTransform = 
        eigenVectorsPCA * meanDiagonal + pcaCentroid.head<3>();



    /** output object */ 
    perception::Object obj;

    obj.score = 1.0;
    obj.label = perception::Object::ObjectType::UNKNOWN;
    obj.pose.x = bboxTransform.x();
    obj.pose.y = bboxTransform.y();
    obj.pose.z = bboxTransform.z();
    obj.dims.x = dimeensions.x();
    obj.dims.y = dimeensions.y();
    obj.dims.z = dimeensions.z();
    obj.orie.x = bboxQuaternion.x();
    obj.orie.y = bboxQuaternion.y();
    obj.orie.z = bboxQuaternion.z();
    obj.orie.w = bboxQuaternion.w();

    if ( (obj.pose.z - obj.dims.z/2) > (-1.2) )
      continue;

    objects.push_back(obj);
  }
}


} // namespace perception
