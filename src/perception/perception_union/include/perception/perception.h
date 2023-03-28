/**
 * @file perception.h
 * @brief 感知类定义
 *        与ROS关联的部分都定义在这里
 * @author H.Y. Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-02-18
 * 
 * @copyright Copyright (c) 2021
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-02-18 <td>1.0     <td>H.Y. Pei     <td>完善注释
 * </table>
 */


#ifndef _PERCEPTION_H_
#define _PERCEPTION_H_

#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <autoware_msgs/DetectedObjectArray.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Odometry.h>
#include <nav_msgs/Odometry.h>
#include "lidar/lidar_process.h"
#include "common/geometry.h"
#include "localmap/local_map.h"
#include <zzz_perception_msgs/TrackingBox.h>
#include <zzz_perception_msgs/TrackingBoxArray.h>
#include <opencv2/opencv.hpp>
#include "yaml-cpp/yaml.h"
#include <pthread.h>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>
#include <pcl_ros/point_cloud.h>

#include <Eigen/Dense>
#include <list>
#include <memory>

namespace perception {

class Perception {
public:

/**
 * @brief Construct a new Perception:: Perception object
 * @param  node             ROS NodeHandle对象
 * @param  priv_nh          ROS NodeHandle参数服务器对象
 */
Perception(ros::NodeHandle node, ros::NodeHandle private_nh);
~Perception();

/**
 * @brief the point cloud subscriber callback function
 * 
 * @param scan the point cloud msg pointer
 */
void processLidarData(const sensor_msgs::PointCloud2::Ptr& msg);
/**
 * @brief 根据时间戳更新lidar to IMU坐标转换矩阵
 * @param  timestamp        输入时间戳
 * @return true 更新成功
 * @return false 更新失败
 */
void processOdometryData(const nav_msgs::Odometry::Ptr& odom);
/**
 * @brief 根据自车当前位置请求bitmap地图
 * @param  pose             输入自车当前位置
 * @param  map              输出地图数据
 * @return true 请求成功
 * @return false 请求失败
 */
bool queryBitmap(const geometry_msgs::PoseStamped& pose, 
    perception::BitmapBit8& map);

private:
/**
 * @brief 检测Objects类型转换函数，输入局部自定义变量类型，输出autoware类型
 * @param  detect_objs      输入Objects
 * @param  output           输出autoware格式的Objects
 */
void getDetectObjects(perception::ObjectArray& detect_objs,
    autoware_msgs::DetectedObjectArray& output);
/**
 * @brief 跟踪Objects类型转换函数，输入局部自定义变量类型，输出autoware类型
 * @param  tracked_objs     输入Objects
 * @param  output           输出autoware变量类型
 */
void getTrackObjects(perception::ObjectArray& tracked_objs,
    autoware_msgs::DetectedObjectArray& output);
/**
 * @brief 跟踪Object类型转换函数，输入autoware变量类型，输出zzz类型
 * @param  tracked_objs     输入Object
 * @param  output           输出zzz变量类型
 */
void convert_DetectedObject2TrackingBox(
    const autoware_msgs::DetectedObject input,
    zzz_perception_msgs::TrackingBox &obs_box );
/**
 * @brief 跟踪Objects类型转换函数，输入autoware变量类型，输出zzz类型
 * @param  detected_objects_output     输入Objects
 * @param  converted_objects_output    输出zzz变量类型
 */
void convert_DetectedObjectArray2TrackingBoxArray(
    const autoware_msgs::DetectedObjectArray detected_objects_output, 
    zzz_perception_msgs::TrackingBoxArray &converted_objects_output );
/**
 * @brief 根据时间戳更新lidar to IMU坐标转换矩阵
 * @param  timestamp        输入时间戳
 * @return true 更新成功
 * @return false 更新失败
 */
bool updateLidarToImu(double timestamp);
private:
  // Sensor control
  bool use_lidar_ = false;
  bool use_cam_ = false;
  bool use_radar_ = false;
  bool use_map_ = false;
  bool use_zzz_ = false;
  bool use_autoware_ = false;
  // Frame IDs
  std::string frame_id_cam_;
  std::string frame_id_lidar_;
  std::string frame_id_radar_;
  std::string frame_id_fusion_;
  
  // Point clouds
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_ptr_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_objects_ptr_;
  pcl::PointCloud<pcl::PointXYZI>::Ptr filtered_cloud_ground_ptr_; 

  // Subscriber
  ros::Subscriber lidar_scan_;
  ros::Subscriber local_odom_;

  std::string duration_path_;
  std::string benchmark_path_;

  // client
  ros::ServiceClient client_;

  // Data publisher
  ros::Publisher detect_objects_publisher_;
  ros::Publisher track_objects_publisher_;
  ros::Publisher zzz_track_objects_publisher_;
  ros::Publisher filtered_cloud_publisher_;
  ros::Publisher filtered_cloud_ground_publisher_;
  ros::Publisher filtered_cloud_objects_publisher_;
  ros::Publisher occupancy_map_;
  
  std_msgs::Header lidar_header_;
  nav_msgs::Odometry odom_;
  nav_msgs::OccupancyGrid map_;
  // map_msgs::OccupancyMap map_srv_;
  std::list<perception::Odometry> odom_q_;

  Eigen::Quaterniond lidar2imu_quaternion_;
  Eigen::Vector3d lidar2imu_translation_;
  Eigen::Matrix3d lidar2imu_rotation_;
  Eigen::Matrix4d lidar2imu_transform_;
  Eigen::Quaterniond lidar2map_quaternion_;
  Eigen::Vector3d lidar2map_translation_;
  Eigen::Matrix3d lidar2map_rotation_;
  Eigen::MatrixXd lidar2map_rotation_34_;
  Eigen::Quaterniond imu2map_quaternion_;
  Eigen::Vector3d imu2map_translation_;
  Eigen::Matrix3d imu2map_rotation_;

  // obstacle detection
  std::unique_ptr<map::LocalMap> map_engine_;
  std::unique_ptr<perception::LidarProcess> lidar_process_;
  perception::BitmapBit8 roi_map_;
  cv::Mat bitmap_image_;
  std::mutex odom_mutex_;
  uint32_t detected_id_;

};

} // namespace velodyne_perception

#endif
