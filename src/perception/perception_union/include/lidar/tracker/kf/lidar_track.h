/**
 * @file lidar_track.h
 * @brief lidar objects tracking class
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
#ifndef _LIDAR_TRACK_H_
#define _LIDAR_TRACK_H_

#include "common/detected_object.h"
#include "lidar/tracker/kf/standard_kalman_filter.h"
#include "lidar/tracker/kf/standard_kalman_config.h"
#include "lidar/tracker/kf/trajectory.h"
#include "lidar/tracker/gnn_bipartite_graph_matcher.h"
// #include "Eigen/Dense"
#include <vector>
// #include <iostream>

namespace perception {

/**
 * @brief LidarTrack class
 */
class LidarTrack {
public:
/**
 * @brief Construct a new Lidar Track object
 */
LidarTrack();
/**
 * @brief Destroy the Lidar Track object
 */
~LidarTrack();
/**
 * @brief 初始化函数，输入配置文件路径
 * @param  config           输入配置文件路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool init(std::string& config);
/**
 * @brief 跟踪算法主要流程
 * @param  header           输入时间戳
 * @param  detected_objs    输入感知检测结果
 * @param  translation      输入坐标偏移向量
 * @param  rotation         输入坐标转换矩阵
 * @param  tracked_objs     输出跟踪目标
 * @return true 处理成功
 * @return false 处理失败
 */
bool track(Header& header, ObjectArray& detected_objs, 
    const Eigen::Vector3d& translation, const Eigen::Matrix3d& rotation, 
    ObjectArray& tracked_objs);

// protected:
private:
/**
 * @brief 运动轨迹预测
 * @param  dt               输入预测时刻
 */
void TrajectoryPrediction(double dt);
/**
 * @brief 计算点云点数匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double PointNumDistance(const Trajectory& traj, const Object& new_obj);
/**
 * @brief 计算目标中心点位置距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double LocationDistance(const Trajectory& traj, const Object& new_obj);
/**
 * @brief 计算目标方向匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double DirectionDistance(const Trajectory& traj, const Object& new_obj);
/**
 * @brief 计算综合匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double CostFunction(Trajectory& left, Object& right);
/**
 * @brief Set the Detected Objects object
 * @param  input            输入感知检测目标
 * @param  translation      坐标偏移，lidar to map
 * @param  rotation         旋转矩阵，lidar to map
 */
void SetDetectedObjects(ObjectArray& input, 
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation);
/**
 * @brief 增加新的轨迹
 * @param  obj              输入新增目标
 * @param  id               输入目标ID
 * @return true 增加成功
 * @return false 增加失败
 */
bool AddNewTrajectory(const Object& obj, 
    unsigned int id);
/**
 * @brief 删除消失轨迹
 */
void removeDeadTrajectory();
/**
 * @brief 更新跟踪轨迹
 * @param  tracked_objs     输出跟踪目标
 */
void updateTrackedObject(ObjectArray& tracked_objs);
/**
 * @brief 平方距离
 * @param  p1               输入坐标点
 * @param  p2               输入坐标点
 * @return double 返回距离
 */
double PointDistanceSqrt(const perception::Vector3d& p1, 
    const perception::Vector3d& p2) const;
/**
 * @brief 判断距离是否超出阈值
 * @param  obj_a            输入目标a
 * @param  obj_b            输入目标b
 * @return true 阈值范围内
 * @return false 阈值范围外
 */
bool InDistanceThreshold (const Object& obj_a, 
    const Object& obj_b) const;
/**
 * @brief 生命周期管理
 */
void life_time_manager();
// private:
public:
  /** trajectories of tracked objects */
  std::vector<Trajectory> trajs_;
  /** input detected objects */
  std::vector<Object> in_objs_;
  /** output tracked objects */
  std::vector<Object> out_objs_;
  /** gnn matcher */
  GnnBipartiteGraphMatcher gnn_matcher_;
  BipartiteGraphMatcherOptions gnn_matcher_option_;
  /** ekf config */
  kalman::StandardKalmanConfig filter_config_;
  /** tracker id */
  unsigned long track_id_;
  /** timestamp of input objects */
  long long timestamp_;
  /** time step */
  double dt_;
  /** initialized flag, default false */
  bool initialized_;
  /** match distance threshold sqrt */
  double dis_2_thres_;
  double dis_thres_;
  /** birth threshold */
  int birth_thres_;
  /** die threshold */
  int die_thres_;

  std::string dump_path_;
}; // class LidarTrack

} // namespace perception

#endif // _LIDAR_TRACK_H_