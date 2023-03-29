/**
 * @file trajectory.h
 * @brief 跟踪轨迹定义
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
#pragma once
#include "common/detected_object.h"
#include "lidar/tracker/kf/standard_kalman_config.h"
#include <Eigen/Dense>
#include <vector>

namespace perception {

struct LidarFeatures {
  LidarFeatures() : yaw(0.) {}
  /** center point (x,y) */
  Eigen::Vector2d c; 
  /** front left point (x,y) */
  Eigen::Vector2d fl;
  /** rear right point (x,y) */
  Eigen::Vector2d rr;
  /** attitude angle yaw */
  float yaw;
}; // struct LidarFeatures

enum TrackingState : int {
  Die = 0,     ///< No longer tracking
  Init = 1,    ///< Start tracking
  Stable = 4,  ///< Stable tracking
  Occlusion = 5, ///< Lost 1 frame possibly by occlusion
  Lost = 10,   ///< About to lose target
}; // enum TrackingState

struct Trajectory {
  Trajectory() : id(0), 
      matched(false), 
      state(Die), 
      miss_time(0), 
      life_time(0), 
      is_stabled(false), 
      initialized(false) {}

  Trajectory(perception::Object& in_obj, unsigned int in_id) : 
      obj(in_obj), 
      id(in_id), 
      matched(false), 
      state(Init), 
      miss_time(0), 
      life_time(1), 
      is_stabled(false), 
      initialized(false) {}
  #ifdef _USE_DUMP_TRAJECTORY_
  void trajectory_clear() {
    timestamp.clear();
    path.clear();
    orientation.clear();
    dims.clear();
  }
  void trajectory_add(long long t, const Eigen::Vector3d& pose, 
      const Eigen::Vector4d& orie, const Eigen::Vector3d& dim) {
    timestamp.emplace_back(t);
    path.emplace_back(pose);
    orientation.emplace_back(orie);
    dims.emplace_back(dim);
  }
  #endif // _USE_DUMP_TRAJECTORY_
  kalman::StandardKalmanFilter  filter;
  perception::Object            obj;
  #ifdef _USE_DUMP_TRAJECTORY_
  std::vector<long long>        timestamp;
  std::vector<Eigen::Vector3d>  path;
  std::vector<Eigen::Vector4d>  orientation;
  std::vector<Eigen::Vector3d>  dims;  
  #endif // _USE_DUMP_TRAJECTORY_
  std::vector<perception::Vector3f>  direction; 
  perception::Vector3f     predicted_center;
  perception::Vector3f     predicted_barycenter;
  perception::Vector3f     predicted_orientation;
  perception::Vector3f     predicted_velocity;
  perception::Vector3f     predicted_direction;
  unsigned int        id;    
  bool                matched;
  TrackingState       state;
  int                 miss_time;
  int                 life_time;
  bool                is_stabled;
  bool                initialized;
}; // struct Trajectory

} // namespace perception 