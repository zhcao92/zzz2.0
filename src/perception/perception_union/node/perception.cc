/**
 * @file perception.cc
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

#include "common/log.hpp"
#include "common/detected_object.h"
#include "common/time_point.h"
#include "common/benchmark.h"
#include "perception/perception.h"

#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>
#include <pcl_ros/point_cloud.h>
#include <tf/transform_broadcaster.h>

#include <zzz_perception_msgs/TrackingBox.h>
#include <zzz_perception_msgs/TrackingBoxArray.h>

#include <Eigen/Dense>
#include <yaml-cpp/yaml.h>
#include <opencv2/opencv.hpp>

#include <thread>             // std::thread
#include <mutex>              // std::mutex, std::unique_lock
#include <condition_variable> // std::condition_variable
#include <utility>

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
 * @brief Get the Type String
 *        输入Object类型转换为对应的字符串，主要用于适配autoware中msg类型
 * @param  meta_type        Object类型
 * @return std::string 
 */
static std::string GetTypeString(int meta_type)  {
  switch (meta_type) {
    case 0:
      return "Unknown";
    case 1:
      return "Car";
    case 2:
      return "Truck";
    case 3:
      return "Cyclist";
    case 4:
      return "Pedestrian";
    default:
      return "Unknown";
  }
}
/**
 * @brief 不停类别Object显示颜色列表，主要为适应autoware中的msg
 */
cv::Scalar class_color[6] = {
    cv::Scalar(0, 25, 255),
    cv::Scalar(100, 0, 255),
    cv::Scalar(0, 0, 255),
    cv::Scalar(0, 255, 0),
    cv::Scalar(255, 255, 0), 
    cv::Scalar(255, 0, 0)
};

/**
 * @brief Construct a new Perception:: Perception object
 * @param  node             ROS NodeHandle对象
 * @param  priv_nh          ROS NodeHandle参数服务器对象
 */
Perception::Perception(ros::NodeHandle node, ros::NodeHandle priv_nh) {
  // Get parameters using private node handle
  std::string config_path;
  std::string perception_config_path;
  std::string log_config_path;

  std::string point_cloud_topic_;
  std::string local_odom_topic_;
  std::string local_map_topic_;
  std::string detect_objects_topic_;
  std::string track_objects_topic_;
  std::string zzz_track_objects_topic_;
  std::string occupancy_map_topic_;
  std::string filtered_cloud_topic_;
  std::string filtered_cloud_ground_topic_;
  std::string filtered_cloud_objects_topic_;

  priv_nh.param<std::string>("config_path", config_path, 
    "/home/user/workspace/zzz_perception/src/perception/perception_union");

  log_config_path = config_path + "/config/zlog.conf";
  LOG_INIT("perception", log_config_path.c_str());  
  perception_config_path = config_path+"/config/perception.yaml";
  ROS_INFO("===>>> config path %s", perception_config_path.c_str());
  YAML::Node config_yaml = YAML::LoadFile(perception_config_path);
  if (config_yaml.IsNull()) {
    LOG_ERROR("There is no config file for Perception.");
    return;
  }

  INIT_PARAMETER(config_yaml, point_cloud_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, local_odom_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, local_map_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, detect_objects_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, track_objects_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, zzz_track_objects_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, occupancy_map_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, filtered_cloud_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, filtered_cloud_ground_topic, std::string, "") 
  INIT_PARAMETER(config_yaml, filtered_cloud_objects_topic, std::string, "") 

  INIT_PARAMETER(config_yaml, use_lidar, bool, false) 
  INIT_PARAMETER(config_yaml, use_cam, bool, false) 
  INIT_PARAMETER(config_yaml, use_radar, bool, false) 
  INIT_PARAMETER(config_yaml, use_map, bool, false) 
  INIT_PARAMETER(config_yaml, use_zzz, bool, false)
  INIT_PARAMETER(config_yaml, use_autoware, bool, false)

  INIT_PARAMETER_OPTIONAL(config_yaml, benchmark_path, std::string, "") 
  INIT_PARAMETER_OPTIONAL(config_yaml, duration_path, std::string, "")

  /** read lidar imu calibration */
  std::string lidar_imu_cal_ = config_path + "/config/lidar_imu_cal.yaml";
  YAML::Node lidar_imu_yaml = YAML::LoadFile(lidar_imu_cal_);
  if (lidar_imu_yaml.IsNull()) {
    LOG_ERROR("There is no calibration file for lidar_imu.");
    return;
  }

  if (!lidar_imu_yaml["lidar_imu_rotation"].IsDefined() ) {
    LOG_ERROR("there is no key <lidar_imu_rotation> in yaml file.");
    return;
  }
  if (!lidar_imu_yaml["lidar_imu_translation"].IsDefined() ) {
    LOG_ERROR("there is no key <lidar_imu_rotation> in yaml file.");
    return;
  }
  const YAML::Node& rot = lidar_imu_yaml["lidar_imu_rotation"];
  const YAML::Node& trans = lidar_imu_yaml["lidar_imu_translation"];  
  lidar2imu_rotation_ << rot[0].as<double>(), rot[1].as<double>(), rot[2].as<double>(), 
      rot[3].as<double>(), rot[4].as<double>(), rot[5].as<double>(), 
      rot[6].as<double>(), rot[7].as<double>(), rot[8].as<double>();
  lidar2imu_translation_ << trans[0].as<double>(), trans[1].as<double>(), trans[2].as<double>();

  lidar2imu_quaternion_ = Eigen::Quaterniond(lidar2imu_rotation_);
  detected_id_ = 0;

  /** Initialize lidar process */
  lidar_process_.reset(new perception::LidarProcess);
  if (!lidar_process_->init(config_path)) {
    LOG_ERROR("failed to Init lidar_process !!!");
    return;
  }

  /** Initialize local map process */
  map_engine_.reset(new map::LocalMap);
  if (!map_engine_->init(config_path)) {
    LOG_ERROR("failed to Init local map !!!");
    return;
  }

  detect_objects_publisher_ = 
    node.advertise<autoware_msgs::DetectedObjectArray>(detect_objects_topic_, 1);
  if (use_zzz_) {
    zzz_track_objects_publisher_ = 
        node.advertise<zzz_perception_msgs::TrackingBoxArray>(
        zzz_track_objects_topic_, 1);    
  } 
  if (use_autoware_) {
    track_objects_publisher_ = 
      node.advertise<autoware_msgs::DetectedObjectArray>(track_objects_topic_, 1);    
  }
  occupancy_map_ = 
    node.advertise<nav_msgs::OccupancyGrid>(occupancy_map_topic_, 1);
  filtered_cloud_publisher_ = 
    node.advertise<sensor_msgs::PointCloud2>(filtered_cloud_topic_, 1);
  filtered_cloud_objects_publisher_ = 
    node.advertise<sensor_msgs::PointCloud2>(filtered_cloud_objects_topic_, 1);
  filtered_cloud_ground_publisher_ = 
    node.advertise<sensor_msgs::PointCloud2>(filtered_cloud_ground_topic_, 1);

  if (use_lidar_) {
    lidar_scan_ = node.subscribe(point_cloud_topic_, 1,
        &Perception::processLidarData, this,
        ros::TransportHints().reliable().tcpNoDelay(true));    
  }

  local_odom_ = node.subscribe(local_odom_topic_, 1,
      &Perception::processOdometryData, this,
      ros::TransportHints().reliable().tcpNoDelay(true));
  odom_mutex_.lock();
  odom_mutex_.unlock();
}

Perception::~Perception() {}
/**
 * @brief 根据自车当前位置请求bitmap地图
 * @param  pose             输入自车当前位置
 * @param  map              输出地图数据
 * @return true 请求成功
 * @return false 请求失败
 */
bool Perception::queryBitmap(const geometry_msgs::PoseStamped& pose, 
    perception::BitmapBit8& map) {
  map::MapPose map_pose;
  map_pose.x = pose.pose.position.x;
  map_pose.y = pose.pose.position.y;

  if(map_engine_->query(bitmap_image_, map_pose)) {
    map.stride = map_engine_->stride();
    map.height = bitmap_image_.rows; 
    map.width = bitmap_image_.cols;
    map.data = (unsigned char *)bitmap_image_.data; 
    LOG_DEBUG("localmap query success !!!");
    return true;
  } else {
    LOG_ERROR("localmap query failed !!!");
    return false;
  }
}


/**
 * @brief the point cloud subscriber callback function
 * 
 * @param scan the point cloud msg pointer
 */
void Perception::processLidarData(const sensor_msgs::PointCloud2::Ptr& msg) {
  lidar_header_ = msg->header;

  updateLidarToImu(msg->header.stamp.toSec());

  pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_ptr(new pcl::PointCloud<pcl::PointXYZI>);
  pcl::fromROSMsg(*msg, *cloud_ptr);

  autoware_msgs::DetectedObjectArray detected_objects;
  autoware_msgs::DetectedObjectArray tracked_objects;
  perception::ObjectArray detected_objects_inter;  
  perception::ObjectArray tracked_objects_inter;

  // prepare point clouds
  filtered_cloud_ptr_.reset(new pcl::PointCloud<pcl::PointXYZI>);
  // filtered_cloud_objects_ptr_.reset(new pcl::PointCloud<pcl::PointXYZI>);
  filtered_cloud_ground_ptr_.reset(new pcl::PointCloud<pcl::PointXYZI>);
  // roi_map_.reset(new perception::BitmapBit8);

  detected_objects.header = lidar_header_;

  /** get roi map */
  geometry_msgs::PoseStamped pose_stamp;
  pose_stamp.header = odom_.header;
  pose_stamp.pose = odom_.pose.pose;
  LOG_DEBUG("pose: (%f %f)", odom_.pose.pose.position.x, odom_.pose.pose.position.y);

  roi_map_.data = nullptr;
  _TCSV_INIT();
  _TCSV_START();
  /** convert header format */
  perception::Header header;
  header.seq = msg->header.seq;
  header.timestamp.tv_sec = msg->header.stamp.sec;
  header.timestamp.tv_nsec = msg->header.stamp.nsec;
  
  bool map_flag = false;
  if (use_map_ && queryBitmap(pose_stamp, roi_map_)) {
    map_flag = true;
    _TCSV_END();
    LOG_DEBUG("query success.");
    /** detection and track */
    _TCSV_START();
    lidar_process_->process(header, cloud_ptr, roi_map_, 
        imu2map_translation_, imu2map_rotation_,
        detected_objects_inter, tracked_objects_inter, 
        filtered_cloud_ptr_, filtered_cloud_ground_ptr_); 
    _TCSV_END();
  } else {
    _TCSV_END();
    LOG_DEBUG("query failed.");
    /** detection and track */
    _TCSV_START();
    lidar_process_->process(header, cloud_ptr, 
        imu2map_translation_, imu2map_rotation_,
        detected_objects_inter, tracked_objects_inter, 
        filtered_cloud_ptr_, filtered_cloud_ground_ptr_); 
    _TCSV_END();
  }

  LOG_DEBUG("getDetectObjects.");
  _TCSV_START();
  getDetectObjects(detected_objects_inter, detected_objects);
  detect_objects_publisher_.publish(detected_objects);
  _TCSV_END();

  if (!benchmark_path_.empty()) {
    LOG_DEBUG("dump.");
    perception::Benchmark bench(perception::Benchmark::Dataset::Waymo, 
      benchmark_path_);
    bench.record(detected_objects);
  }

  LOG_DEBUG("getTrackObjects.");
  _TCSV_START();
  getTrackObjects(tracked_objects_inter, tracked_objects); 
  if (use_zzz_) {
    zzz_perception_msgs::TrackingBoxArray trackingBoxArray;
    trackingBoxArray.header = tracked_objects.header;
    convert_DetectedObjectArray2TrackingBoxArray(tracked_objects, 
        trackingBoxArray);
    zzz_track_objects_publisher_.publish(trackingBoxArray);
  } 
  if (use_autoware_) {
    track_objects_publisher_.publish(tracked_objects);    
  }

  _TCSV_END();
  _TCSV_PRINT(duration_path_+"/perception.csv", (!duration_path_.empty()) );

  /** roi cloud */
  sensor_msgs::PointCloud2 output_filter_cloud;
  pcl::toROSMsg(*filtered_cloud_ptr_, output_filter_cloud);
  output_filter_cloud.header = lidar_header_;    
  filtered_cloud_publisher_.publish(output_filter_cloud);

  /** nonground  cloud */
  sensor_msgs::PointCloud2 output_filter_cloud_ground;
  pcl::toROSMsg(*filtered_cloud_ground_ptr_, output_filter_cloud_ground);
  output_filter_cloud_ground.header = lidar_header_;    
  filtered_cloud_ground_publisher_.publish(output_filter_cloud_ground);
  /** 用于显示bitmap */
  if (0 && map_flag) {
    cv::Mat image = cv::Mat::zeros(cv::Size(roi_map_.height, 
        roi_map_.width), CV_8UC1);
    memcpy(image.data, roi_map_.data, image.cols*image.rows);
    cv::Mat img = bitmap_image_.clone();
    cv::resize(img, img, cv::Size(512, 512));
    nav_msgs::OccupancyGrid tmp_map;
    tmp_map.info.resolution = roi_map_.stride * 2;
    tmp_map.info.height = roi_map_.height / 2; 
    tmp_map.info.width = roi_map_.width / 2;
    tmp_map.data.resize(tmp_map.info.height*tmp_map.info.width);
    uchar * pdata = (uchar *)tmp_map.data.data();
    for (auto j=0; j<tmp_map.info.height; j++) {
      memcpy(pdata+(tmp_map.info.height-j-1)*tmp_map.info.width, 
          img.data+j*tmp_map.info.width, 
          tmp_map.info.width);
    }
    tmp_map.header.frame_id = odom_.header.frame_id;
    tmp_map.info.origin.position.x = odom_.pose.pose.position.x - 51.2;
    tmp_map.info.origin.position.y = odom_.pose.pose.position.y - 51.2;
    tmp_map.info.origin.position.z = odom_.pose.pose.position.z - 1.1; 
    tmp_map.info.origin.orientation.w = 1.0;
    tmp_map.info.origin.orientation.x = 0.0;
    tmp_map.info.origin.orientation.y = 0.0;
    tmp_map.info.origin.orientation.z = 0.0;
    occupancy_map_.publish(tmp_map);
  }
}
/**
 * @brief 根据时间戳更新lidar to IMU坐标转换矩阵
 * @param  timestamp        输入时间戳
 * @return true 更新成功
 * @return false 更新失败
 */
bool Perception::updateLidarToImu(double timestamp) {
  if (odom_q_.empty())
    return false;
  perception::Odometry matched_odom_ = odom_q_.front(); 
  /** 选择比lidar时间戳提前0.05秒的Odom信息进行匹配 */
  double t = timestamp - 0.05;
  while (!odom_q_.empty()) {
    if (odom_q_.front().timestamp < t) {
      odom_q_.pop_front();
    } else {
      matched_odom_ = odom_q_.front(); 
      odom_q_.pop_front();
      break;
    }
  }

  odom_.header.stamp.fromSec(matched_odom_.timestamp);
  odom_.pose.pose.orientation.w = matched_odom_.ow ;
  odom_.pose.pose.orientation.x = matched_odom_.ox; 
  odom_.pose.pose.orientation.y = matched_odom_.oy;
  odom_.pose.pose.orientation.z = matched_odom_.oz;
  odom_.pose.pose.position.x = matched_odom_.px;
  odom_.pose.pose.position.y = matched_odom_.py;
  odom_.pose.pose.position.z = matched_odom_.pz;

  odom_.twist.twist.linear.x = matched_odom_.vx;
  odom_.twist.twist.linear.y = matched_odom_.vy;
  odom_.twist.twist.linear.z = matched_odom_.vz;
  odom_.twist.twist.angular.x = matched_odom_.ax;
  odom_.twist.twist.angular.y = matched_odom_.ay;
  odom_.twist.twist.angular.z = matched_odom_.az;

  imu2map_quaternion_ = Eigen::Quaterniond(odom_.pose.pose.orientation.w,
      odom_.pose.pose.orientation.x, odom_.pose.pose.orientation.y,
      odom_.pose.pose.orientation.z);
  imu2map_translation_ = Eigen::Vector3d(odom_.pose.pose.position.x,
      odom_.pose.pose.position.y, odom_.pose.pose.position.z);
  imu2map_rotation_ = imu2map_quaternion_.toRotationMatrix();
  lidar2map_quaternion_ = imu2map_quaternion_ * lidar2imu_quaternion_;
  lidar2map_rotation_ = lidar2map_quaternion_.toRotationMatrix();
  lidar2map_translation_ = imu2map_rotation_ * lidar2imu_translation_ 
      + imu2map_translation_;
  return true;
}
/**
 * @brief Odometry callback函数，用于更新自车位姿缓存数据
 * @param  odom             输入Odometry消息指针
 */
void Perception::processOdometryData(const nav_msgs::Odometry::Ptr& odom) {
  if (odom_.header.frame_id.empty()) {
    odom_.header.frame_id = odom->header.frame_id;  
    odom_.child_frame_id = odom->child_frame_id; 
  }
  while (odom_q_.size() >= 30) {
    odom_q_.pop_front();
  }
  perception::Odometry local_odom;
  local_odom.timestamp = odom->header.stamp.toSec();
  local_odom.ow = odom->pose.pose.orientation.w;
  local_odom.ox = odom->pose.pose.orientation.x;
  local_odom.oy = odom->pose.pose.orientation.y;
  local_odom.oz = odom->pose.pose.orientation.z;
  local_odom.px = odom->pose.pose.position.x;
  local_odom.py = odom->pose.pose.position.y;
  local_odom.pz = odom->pose.pose.position.z;

  local_odom.vx = odom->twist.twist.linear.x;
  local_odom.vy = odom->twist.twist.linear.y;
  local_odom.vz = odom->twist.twist.linear.z;
  local_odom.ax = odom->twist.twist.angular.x;
  local_odom.ay = odom->twist.twist.angular.y;
  local_odom.az = odom->twist.twist.angular.z;
  odom_q_.push_back(local_odom);
}
/**
 * @brief 检测Objects类型转换函数，输入局部自定义变量类型，输出autoware类型
 * @param  detect_objs      输入Objects
 * @param  output           输出autoware格式的Objects
 */
void Perception::getDetectObjects(perception::ObjectArray& detect_objs,
    autoware_msgs::DetectedObjectArray& output) {
  for (auto& obj: detect_objs) {
    autoware_msgs::DetectedObject ros_obj;
    ros_obj.header = lidar_header_;
    ros_obj.score = obj.score;
    ros_obj.id = ++detected_id_;
    ros_obj.label = GetTypeString(obj.label);
    ros_obj.angle = obj.yaw;
    ros_obj.valid = true;
    ros_obj.pose_reliable = true;
    ros_obj.color.r = 150.0f;
    ros_obj.color.g = 255.0f;
    ros_obj.color.b = 0.0f;
    ros_obj.color.a = 0.5f;
    ros_obj.pose.position.x = obj.pose.x;
    ros_obj.pose.position.y = obj.pose.y;
    ros_obj.pose.position.z = obj.pose.z;
    ros_obj.dimensions.x = obj.dims.x;
    ros_obj.dimensions.y = obj.dims.y;
    ros_obj.dimensions.z = obj.dims.z;
    ros_obj.pose.orientation.x = obj.orie.x;
    ros_obj.pose.orientation.y = obj.orie.y;
    ros_obj.pose.orientation.z = obj.orie.z;
    ros_obj.pose.orientation.w = obj.orie.w;
    ros_obj.space_frame = lidar_header_.frame_id;
    output.objects.push_back(ros_obj);
  }
}
/**
 * @brief 跟踪Objects类型转换函数，输入局部自定义变量类型，输出autoware类型
 * @param  tracked_objs     输入Objects
 * @param  output           输出autoware变量类型
 */
void Perception::getTrackObjects(perception::ObjectArray& tracked_objs,
    autoware_msgs::DetectedObjectArray& output) {
  output.header = lidar_header_;  
  output.header.frame_id = odom_.header.frame_id;

  for (size_t i=0; i<tracked_objs.size(); i++) {
    perception::Object& tmp = tracked_objs.at(i);
    autoware_msgs::DetectedObject obj;
    obj.pose.position.x = tmp.pose.x;
    obj.pose.position.y = tmp.pose.y;
    obj.pose.position.z = tmp.pose.z;
    obj.velocity.linear.x = tmp.velo.x;
    obj.velocity.linear.y = tmp.velo.y;
    obj.velocity.linear.z = tmp.velo.z;
    obj.pose.orientation.w = tmp.orie.w;      
    obj.pose.orientation.x = tmp.orie.x;
    obj.pose.orientation.y = tmp.orie.y;
    obj.pose.orientation.z = tmp.orie.z;
    obj.header = output.header;
    obj.space_frame = output.header.frame_id;
    obj.dimensions.x = tmp.dims.x;
    obj.dimensions.y = tmp.dims.y;
    obj.dimensions.z = tmp.dims.z;
    obj.label = GetTypeString(tmp.label);
    obj.score = tmp.score;
    obj.id = tmp.id;
    obj.color.r = (float)class_color[tmp.label].val[0];
    obj.color.g = (float)class_color[tmp.label].val[1];
    obj.color.b = (float)class_color[tmp.label].val[2];
    obj.color.a = 0.3f;
    obj.valid = tmp.valid;
    obj.pose_reliable = tmp.pose_reliable;
    obj.velocity_reliable = tmp.velocity_reliable;
    obj.behavior_state = 0;
    output.objects.push_back(obj);
  }
}

/**
 * @brief 跟踪Object类型转换函数，输入autoware变量类型，输出zzz类型
 * @param  tracked_objs     输入Object
 * @param  output           输出zzz变量类型
 */
void Perception::convert_DetectedObject2TrackingBox(
  const autoware_msgs::DetectedObject input,
  zzz_perception_msgs::TrackingBox &obs_box )
{
  zzz_perception_msgs::ObjectClass t;
  if (!strcasecmp("car", input.label.c_str())) {
    t.classid = 1;
  } else if (!strcasecmp("truck", input.label.c_str())) {
    t.classid = 49;
  } else if (!strcasecmp("Pedestrian", input.label.c_str())) {
    t.classid = 2;
  } else if (!strcasecmp("cyclist", input.label.c_str())) {
    t.classid = 3;
  } else {
    // unknown id
    t.classid = 0;
  }
  obs_box.classes.push_back(t);
  obs_box.classes[0].score = input.score;
  obs_box.uid = input.id;
  obs_box.confidence = 1.0;
 // pose
  obs_box.bbox.pose.pose.position.x = input.pose.position.x;
  obs_box.bbox.pose.pose.position.y = input.pose.position.y;
  obs_box.bbox.pose.pose.position.z = input.pose.position.z;
  // orientation
  obs_box.bbox.pose.pose.orientation.x = input.pose.orientation.x;
  obs_box.bbox.pose.pose.orientation.y = input.pose.orientation.y;
  obs_box.bbox.pose.pose.orientation.z = input.pose.orientation.z;
  obs_box.bbox.pose.pose.orientation.w = input.pose.orientation.w;
  // dims
  obs_box.bbox.dimension.length_x = input.dimensions.x;
  obs_box.bbox.dimension.length_y = input.dimensions.y;
  obs_box.bbox.dimension.length_z = input.dimensions.z;
  // twist
  obs_box.twist.twist.linear.x = input.velocity.linear.x;
  obs_box.twist.twist.linear.y = input.velocity.linear.y;
  obs_box.twist.twist.linear.z = input.velocity.linear.z;
}
/**
 * @brief 跟踪Objects类型转换函数，输入autoware变量类型，输出zzz类型
 * @param  detected_objects_output     输入Objects
 * @param  converted_objects_output    输出zzz变量类型
 */
void Perception::convert_DetectedObjectArray2TrackingBoxArray(
  const autoware_msgs::DetectedObjectArray detected_objects_output, 
  zzz_perception_msgs::TrackingBoxArray &converted_objects_output )
{
  for (size_t i = 0; i < detected_objects_output.objects.size(); i++)
  {
    zzz_perception_msgs::TrackingBox output;
    convert_DetectedObject2TrackingBox(detected_objects_output.objects[i], output);
    converted_objects_output.targets.push_back(output);
  }
}

} // namespace perception
