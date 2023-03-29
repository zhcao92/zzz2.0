/**
 * @file lidar_process.h
 * @brief lidar perception class
 * @author H.Y. Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-02-19
 * 
 * @copyright Copyright (c) 2021
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-02-19 <td>1.0     <td>H.Y. Pei     <td>完善注释
 * </table>
 */
#ifndef _PERCEPTION_YX_LIDAR_PROCESS_H_
#define _PERCEPTION_YX_LIDAR_PROCESS_H_

#include "common/bitmap.h"
#include "common/detected_object.h"
#include "lidar/point_pillars/pointpillars.h"
#include "lidar/segmentation/segmentation.h"
#include "lidar/ground_filter/plane_ground_filter.h"
#include "lidar/cluster/euclidean_cluster.h"
#include "lidar/tracker/kf/lidar_track.h"
#include <cstddef>
#include <fstream>
#include <iomanip>
#include <memory>
#include <sstream>
#include <string>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>
#include <pcl_ros/point_cloud.h>
#include <Eigen/Dense>
#include <thread>             // std::thread
#include <mutex>              // std::mutex, std::unique_lock
#include <condition_variable> // std::condition_variable
// #include <atomic>

namespace perception {
/**
 * @brief LidarProcess class
 */
class LidarProcess {
public:
/**
 * @brief Construct a new Lidar Process object
 */
LidarProcess() ;
/**
 * @brief Destroy the Lidar Process object
 */
~LidarProcess() ;
/**
 * @brief 初始化函数，通过yaml读入配置文件
 * @param  config           输入yaml配置文件路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool init(std::string& config);
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
bool process(perception::Header& header, 
    const pcl::PointCloud<pcl::PointXYZI>::Ptr& cloud_ptr,		
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation,
    perception::ObjectArray& objects,
    perception::ObjectArray& tracked_objects,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ptr,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ground_ptr) ;
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
bool process(perception::Header& header, 
    const pcl::PointCloud<pcl::PointXYZI>::Ptr& cloud_ptr,	
    const perception::BitmapBit8& map,			
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation,
    perception::ObjectArray& objects,
    perception::ObjectArray& tracked_objects,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ptr,
    pcl::PointCloud<pcl::PointXYZI>::Ptr& filtered_cloud_ground_ptr);

private:
/**
 * @brief 聚类算法处理函数
 */
void clusterProcess();
/**
 * @brief 两种感知算法检测目标融合
 * @param  objects          输出感知目标
 */
void merge(perception::ObjectArray& objects);
/**
 * @brief 点云去除NaN点
 * @param  cloud_in         输入点云
 * @param  cloud_out        输出点云
 * @param  index            输出点索引值
 */
void removeNaNFromPointCloud (
    const pcl::PointCloud<pcl::PointXYZI> &cloud_in, 
    pcl::PointCloud<pcl::PointXYZI> &cloud_out,
    std::vector<int> &index) ;
/**
 * @brief 点云去除NaN点
 * @param  cloud_in         输入点云
 * @param  index            使出点索引值
 */
void removeNaNFromPointCloud (
    const pcl::PointCloud<pcl::PointXYZI> &cloud_in, 
    std::vector<int> &index) ;
private:
  bool use_point_pillars_;
  bool use_cluster_;
  bool use_ground_filter_;
  bool use_tracker_;
  
  bool inited_ = false;
  bool log_lidar_ = false;
  perception::Header header_;

  std::string duration_path_;
  std::string benchmark_path_;

  Eigen::Quaterniond lidar2imu_quaternion_;
  Eigen::Vector3d lidar2imu_translation_;
  Eigen::Matrix3d lidar2imu_rotation_;
  Eigen::Matrix4d lidar2imu_transform_;

  std::shared_ptr<perception::ObjectArray> cluster_objects_; // objects
  std::shared_ptr<perception::ObjectArray> dl_objects_; // objects

  std::unique_ptr<perception::Pointpillars> point_pillars_;
  std::unique_ptr<perception::Segmentation> segment_;
  std::unique_ptr<perception::PlaneGroundFilter> ground_filter_;
  std::unique_ptr<perception::EuclideanCluster> cluster_;
  std::unique_ptr<perception::LidarTrack> tracker_;
  
  std::unique_ptr<std::thread> cluster_thread_;
  std::unique_ptr<std::unique_lock<std::mutex>> main_lock_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_ptr_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_ptr_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_ground_ptr_; 
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_objects_ptr_;  
  pcl::PointIndices::Ptr cloud_indices_ptr_;
  pcl::PointIndices::Ptr filtered_cloud_indices_ptr_;
  pcl::PointIndices::Ptr filtered_cloud_ground_indices_ptr_;
  pcl::PointIndices::Ptr filtered_cloud_objects_indices_ptr_;

  bool cluster_initialized_;
  std::mutex filtered_cloud_mutex_;
  std::condition_variable filtered_cloud_cond_;
  bool filtered_cloud_ready_;
  bool cluster_ready_;
};

}

#endif