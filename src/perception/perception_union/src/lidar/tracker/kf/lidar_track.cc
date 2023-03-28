
#include "common/detected_object.h"
#include "lidar/tracker/assignment.hpp"
#include "lidar/tracker/kf/standard_kalman_config.h"
#include "lidar/tracker/kf/standard_kalman_filter.h"
#include "lidar/tracker/kf/lidar_track.h"
#include "lidar/tracker/kf/trajectory.h"


#include "common/log.hpp"
#include "common/time_point.h"
#include <yaml-cpp/yaml.h>
#include <fstream>
#include <string>
#include <Eigen/Dense>
#include <vector>
#include <iostream>

#define DEBUG_OUTPUT 0
#define BKM_ENABLE 1
#define _GNN_MATCHER_TRACK_

namespace perception {

/**
 * @brief Construct a new Lidar Track object
 */
LidarTrack::LidarTrack() : 
    track_id_(1), 
    dt_(0.), 
    initialized_(false), 
    dis_2_thres_(2.22 * 2.22),
    dis_thres_(3.22),
    gnn_matcher_(1000) {}
/**
 * @brief Destroy the Lidar Track object
 */
LidarTrack::~LidarTrack() {}
/**
 * @brief 初始化函数，输入配置文件路径
 * @param  config           输入配置文件路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool LidarTrack::init(std::string& config) {
  YAML::Node config_yaml;
  std::string config_path = config + "/config/lidar_track.yaml";
  config_yaml = YAML::LoadFile(config_path);
  if (config_yaml.IsNull()) {
    LOG_DEBUG("There is no config file for lidar tracker.");
    return false;
  }

  if (config_yaml["dis_sqrt_thres"].IsDefined() ) {
    dis_2_thres_ = config_yaml["dis_sqrt_thres"].as<double>();
  } else {
    dis_2_thres_ = 16.0;
    LOG_DEBUG("there is no key <dis_sqrt_thres> in yaml file.");
  }

  if (config_yaml["birth_thres"].IsDefined() ) {
    birth_thres_ = config_yaml["birth_thres"].as<int>();
  } else {
    birth_thres_ = 3;
    LOG_DEBUG("there is no key <birth_thres> in yaml file.");
  }

  if (config_yaml["die_thres"].IsDefined() ) {
    die_thres_ = config_yaml["die_thres"].as<int>();
  } else {
    die_thres_ = 8;
    LOG_DEBUG("there is no key <die_thres> in yaml file.");
  }

  filter_config_.init(config.c_str());

  #ifdef _USE_DUMP_TRAJECTORY_
  dump_path_ = "/tmp/lidar_track_dump.txt"; 
  std::remove(dump_path_.c_str());  
  #endif // _USE_DUMP_TRAJECTORY_

  return true;
}
/**
 * @brief 计算目标中心点位置距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double LidarTrack::LocationDistance(const Trajectory& traj, 
    const Object& new_obj) {
  // Compute locatin distance for last object and new object
  // range from 0 to positive infinity
  Eigen::Vector3f measured_anchor_point (new_obj.barycenter.x, new_obj.barycenter.y, new_obj.barycenter.z);
  Eigen::Vector3f predicted_anchor_point (traj.predicted_barycenter.x, traj.predicted_barycenter.y, traj.predicted_barycenter.z);
  Eigen::Vector3f measure_predict_diff = measured_anchor_point - predicted_anchor_point;
  float location_dist = static_cast<float>(sqrt(
      (measure_predict_diff.head(2).cwiseProduct(measure_predict_diff.head(2)))
          .sum()));
  /* NEED TO NOTICE: All the states would be collected mainly based on
   * states of tracked objects. Thus, update tracked object when you
   * update the state of track !!!!! */
  Eigen::Vector2d ref_dir (traj.obj.velo.x, traj.obj.velo.y);
  double speed = ref_dir.norm();
  ref_dir /= speed;
  /* Let location distance generated from a normal distribution with
   * symmetric variance. Modify its variance when speed greater than
   * a threshold. Penalize variance other than motion direction. */
  if (speed > 2) {
    Eigen::Vector2d ref_o_dir = Eigen::Vector2d(ref_dir[1], -ref_dir[0]);
    double dx = ref_dir(0) * measure_predict_diff(0) +
                ref_dir(1) * measure_predict_diff(1);
    double dy = ref_o_dir(0) * measure_predict_diff(0) +
                ref_o_dir(1) * measure_predict_diff(1);
    location_dist = static_cast<float>(sqrt(dx * dx * 0.5 + dy * dy * 2));
  }
  return static_cast<double>(location_dist);
}
/**
 * @brief 计算目标方向匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double LidarTrack::DirectionDistance(const Trajectory& traj, 
    const Object& new_obj) {
  // Compute direction distance for last object and new object
  // range from 0 to 2
  Eigen::Vector3f old_anchor_point (traj.obj.barycenter.x, traj.obj.barycenter.y, traj.obj.barycenter.z);
  Eigen::Vector3f new_anchor_point (new_obj.barycenter.x, new_obj.barycenter.y, new_obj.barycenter.z);
  Eigen::Vector3f anchor_point_shift_dir = new_anchor_point - old_anchor_point;
  anchor_point_shift_dir[2] = 0.0f;
  Eigen::Vector3f track_motion_dir (traj.predicted_direction.x, traj.predicted_direction.y, traj.predicted_direction.z);
  track_motion_dir[2] = 0.0f;
  float cos_theta = 0.994f;  // average cos
  if (!track_motion_dir.head(2).isZero() &&
      !anchor_point_shift_dir.head(2).isZero()) {
    float v1_len = static_cast<float>(sqrt(
        (track_motion_dir.head(2).cwiseProduct(
            track_motion_dir.head(2))).sum()));
    float v2_len = static_cast<float>(sqrt(
        (anchor_point_shift_dir.head(2).cwiseProduct(
            anchor_point_shift_dir.head(2))).sum()));
    if (v1_len < std::numeric_limits<float>::epsilon() ||
        v2_len < std::numeric_limits<float>::epsilon()) {
      cos_theta = 0.0;
    }
    cos_theta = (track_motion_dir.head(2).cwiseProduct(
        anchor_point_shift_dir.head(2))).sum() / (v1_len * v2_len);
  }
  float direction_dist = static_cast<float>(-cos_theta) + 1.0f;
  return static_cast<double>(direction_dist);
}
/**
 * @brief 计算点云点数匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double LidarTrack::PointNumDistance(const Trajectory& traj, 
    const Object& new_obj) {
  // Compute point num distance for last object and new object
  // range from 0 and 1
  int old_point_number = traj.obj.point_num;
  int new_point_number = new_obj.point_num;
  float point_num_dist =
      static_cast<float>(fabs(old_point_number - new_point_number)) * 1.0f /
      static_cast<float>(std::max(old_point_number, new_point_number));
  return static_cast<double>(point_num_dist);
}
/**
 * @brief 计算综合匹配距离
 * @param  traj             输入历史轨迹
 * @param  new_obj          输入新目标
 * @return double 返回距离值
 */
double LidarTrack::CostFunction(Trajectory& traj, Object& nes_obj) {
  double dist = 0.8 * LocationDistance(traj, nes_obj) +
      0.1 * DirectionDistance(traj, nes_obj) +
      0.1 * PointNumDistance(traj, nes_obj);
  return dist;
}
/**
 * @brief 运动轨迹预测
 * @param  dt               输入预测时刻
 */
void LidarTrack::TrajectoryPrediction(double dt) {
  for (auto& traj: trajs_) {
    traj.predicted_center = {traj.obj.center.x + static_cast<float>(traj.obj.velo.x) * static_cast<float>(dt),
                            traj.obj.center.y + static_cast<float>(traj.obj.velo.y) * static_cast<float>(dt),
                            traj.obj.center.z + static_cast<float>(traj.obj.velo.z) * static_cast<float>(dt)};
    traj.predicted_barycenter = {traj.obj.barycenter.x + static_cast<float>(traj.obj.velo.x) * static_cast<float>(dt),
                                traj.obj.barycenter.y + static_cast<float>(traj.obj.velo.y) * static_cast<float>(dt),
                                traj.obj.barycenter.z + static_cast<float>(traj.obj.velo.z) * static_cast<float>(dt)};
    auto direction_size = traj.direction.size();
    if (direction_size > 2) {
      traj.predicted_direction.x = 0.8f * traj.direction[direction_size-1].x + 
          0.13f * traj.direction[direction_size-2].x + 
          0.07f * traj.direction[direction_size-3].x;
      traj.predicted_direction.y = 0.8f * traj.direction[direction_size-1].y + 
          0.13f * traj.direction[direction_size-2].y + 
          0.07f * traj.direction[direction_size-3].y;
      traj.predicted_direction.z = 0.8f * traj.direction[direction_size-1].z + 
          0.13f * traj.direction[direction_size-2].z + 
          0.07f * traj.direction[direction_size-3].z;
    } else if (direction_size > 1) {
      traj.predicted_direction.x = 0.8f * traj.direction[direction_size-1].x + 
          0.2f * traj.direction[direction_size-2].x;
      traj.predicted_direction.y = 0.8f * traj.direction[direction_size-1].y + 
          0.2f * traj.direction[direction_size-2].y;
      traj.predicted_direction.z = 0.8f * traj.direction[direction_size-1].z + 
          0.2f * traj.direction[direction_size-2].z;
    } else {
      traj.predicted_direction.x = traj.direction[0].x;
      traj.predicted_direction.y = traj.direction[0].y;
      traj.predicted_direction.z = traj.direction[0].z;
    }
  }
}

#ifdef _GNN_MATCHER_TRACK_
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
bool LidarTrack::track(Header& header, 
    ObjectArray& detected_objs, 
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation, 
    ObjectArray& tracked_objs) {

  std::vector<MatchCost> match_costs;
  std::vector<NodeNodePair> assignments;
  std::vector<size_t> unassigned_rows;
  std::vector<size_t> unassigned_cols;

  SetDetectedObjects(detected_objs, translation, rotation);
  int rows = static_cast<int>(trajs_.size()) ;
  int cols = static_cast<int>(in_objs_.size()) ;

  long long timestamp_new = header.timestamp.tv_sec * 1000000 
      + header.timestamp.tv_nsec / 1000;
  dt_ = static_cast<double>(timestamp_new - timestamp_)/1000000;
  timestamp_ = timestamp_new;

  if (!initialized_) { 
    initialized_ = true;
  } else { // has initialized
    /** Predict */
    TrajectoryPrediction(dt_);
    /** Match */
    double dist_cost;
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        dist_cost = CostFunction(trajs_[r], detected_objs[c]);
        if (dist_cost < dis_thres_) {
          MatchCost item(r, c, dist_cost);
          match_costs.push_back(item);
        }
      }
    }
    gnn_matcher_.Match(gnn_matcher_option_, rows, cols, match_costs,
        &assignments, &unassigned_rows, &unassigned_cols);
    for (auto &assign: assignments) {
      trajs_[assign.first].matched = true;
      trajs_[assign.first].obj = in_objs_[assign.second];
      #ifdef _USE_DUMP_TRAJECTORY_
      trajs_[assign.first].trajectory_add(timestamp_, in_objs_[assign.second].pose, 
          in_objs_[assign.second].orie, in_objs_[assign.second].dims);
      #endif // _USE_DUMP_TRAJECTORY_
      trajs_[assign.first].direction.emplace_back(in_objs_[assign.second].direction);    
    }
    /** life time manage */
    life_time_manager();
    /** remove die objects */
    removeDeadTrajectory();
  }
  /** Add new objects */
  for (auto c: unassigned_cols) {
    AddNewTrajectory(in_objs_[c], track_id_++);
  }
  /** filter */
  updateTrackedObject(tracked_objs);
  return true;
}
#else // _GNN_MATCHER_TRACK_
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
bool LidarTrack::track(Header& header, 
    ObjectArray& detected_objs, 
    const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation, 
    ObjectArray& tracked_objs) {
  // TODO: if (in_objs_.size() == 0)
  LOG_DEBUG("track set objs.");
  SetDetectedObjects(detected_objs, translation, rotation);
  int rows = trajs_.size();
  int cols = in_objs_.size();
  // if in_objs_.size() != 0
  std::vector<bool> obj_matched(in_objs_.size(), false);
  long long timestamp_new = header.timestamp.tv_sec * 1000000 
      + header.timestamp.tv_nsec / 1000;
  dt_ = static_cast<double>(timestamp_new - timestamp_)/1000000;
  timestamp_ = timestamp_new;
  // init
  if (! initialized_) { 
    initialized_ = true;
  } else { // has initialized
    /** Predict */
    TrajectoryPrediction(dt_);
    LOG_DEBUG("Match.");
    /** Match */
    auto dist_f = std::bind(&LidarTrack::CostFunction, this, std::placeholders::_1, 
        std::placeholders::_2);
    perception::Assignment<Trajectory, Object> assign_engine(
        &trajs_, &in_objs_, dist_f, dis_2_thres_ );
    assign_engine.Solve();
    std::vector<int> result = assign_engine.Assign();  

    for (auto i = 0; i < result.size(); ++i){
      if ( -1 != result[i] ){
        trajs_[i].matched = true;
        trajs_[i].obj = in_objs_[result[i]];
        #ifdef _USE_DUMP_TRAJECTORY_
        trajs_[i].trajectory_add(timestamp_, in_objs_[result[i]].pose, 
            in_objs_[result[i]].orie, in_objs_[result[i]].dims);
        #endif // _USE_DUMP_TRAJECTORY_
        trajs_[i].direction.emplace_back(in_objs_[result[i]].direction);
        obj_matched[result[i]] = true; 
        // LOG_DEBUG("traj %d match objs %d.", i, result[i]);
      }  
    }
    // LOG_DEBUG("life time manager.");
    /** life time manage */
    life_time_manager();
    // LOG_DEBUG("remove objs.");
    /** remove die objects */
    for (auto it = trajs_.begin(); it != trajs_.end(); ) {
      if (it->state == Die ) {
        #ifdef _USE_DUMP_TRAJECTORY_
        std::stringstream s_text;
        for (auto ii=0; ii<it->path.size(); ii++) {
          Eigen::Quaterniond quaternion(it->orientation[ii].w(), 
            it->orientation[ii].x(), it->orientation[ii].y(), 
            it->orientation[ii].z());
          // Z-Y-X YPR
          Eigen::Vector3d eulerAngle = quaternion.matrix().eulerAngles(2,1,0);
          s_text << it->id << "\t" 
              << it->path[ii].x() << "\t" << it->path[ii].y() << "\t"
              << it->timestamp[ii] << "\t"
              << it->dims[ii].x() << "\t" << it->dims[ii].y() << "\t" 
              << it->dims[ii].z() << "\t" << eulerAngle(0) << "\n";
        }
        std::ofstream outputfile(dump_path_, 
            std::ofstream::out | std::ofstream::app);
        outputfile << s_text.str();
        it->trajectory_clear();
        #endif // _USE_DUMP_TRAJECTORY_
        it = trajs_.erase(it);
      } else {
        ++it;                
      }
    }
  }
  // LOG_DEBUG("add new object.");
  /** Add new objects */
  for (auto j=0; j<in_objs_.size(); j++ ) {
    if ( obj_matched[j] ) {
      continue;
    }
    // add new object
    AddNewTrajectory(in_objs_.at(j), track_id_);
    // std::cout << "add traj " << track_id_ << std::endl;
    track_id_++;
  }
  // LOG_DEBUG("kalman update.");
  /** filter */
  tracked_objs.clear();
  for (auto& traj : trajs_) {
    traj.matched = false;
    Eigen::VectorXd meas(2);
    meas << traj.obj.pose.x(), traj.obj.pose.y();
    if (traj.initialized) {
      traj.filter.predict(dt_);
      traj.filter.update(dt_, meas); 
      traj.obj.valid = true;
      traj.obj.pose_reliable = true;
      traj.obj.velocity_reliable = true; 
      auto sta = traj.filter.State();
      traj.obj.pose.x() = sta[0];
      traj.obj.pose.y() = sta[1];   
      traj.obj.velo.x() = sta[2];
      traj.obj.velo.y() = sta[3]; 
      traj.obj.velo.z() = 0.0;  
      // LOG_DEBUG("State: %f %f %f %f", sta[0], sta[1], sta[2], sta[3]);        
    } else {  
      // LOG_DEBUG("State init !!!"); 
      traj.filter.init(&filter_config_, meas);  
      traj.obj.valid = true;
      traj.obj.pose_reliable = true;
      traj.obj.velocity_reliable = true;
      traj.initialized = true;
    }

    traj.obj.id = traj.id;
    tracked_objs.push_back(traj.obj);
  }
  return true;
}

#endif // _GNN_MATCHER_TRACK_
/**
 * @brief 更新跟踪轨迹
 * @param  tracked_objs     输出跟踪目标
 */
void LidarTrack::updateTrackedObject(ObjectArray& tracked_objs) {
  tracked_objs.clear();
  for (auto& traj : trajs_) {
    traj.matched = false;
    Eigen::VectorXd meas(2);
    meas << traj.obj.pose.x, traj.obj.pose.y;
    if (traj.initialized) {
      traj.filter.predict(dt_);
      traj.filter.update(dt_, meas); 
      traj.obj.valid = true;
      traj.obj.pose_reliable = true;
      traj.obj.velocity_reliable = true; 

      auto sta = traj.filter.State();
      traj.obj.pose.x = sta[0];
      traj.obj.pose.y = sta[1];   
      traj.obj.velo.x = sta[2];
      traj.obj.velo.y = sta[3]; 
      traj.obj.velo.z = 0.0;  
      // LOG_DEBUG("State: %f %f %f %f", sta[0], sta[1], sta[2], sta[3]);        
    } else {  
      // LOG_DEBUG("State init !!!"); 
      traj.filter.init(&filter_config_, meas);  
      traj.obj.valid = true;
      traj.obj.pose_reliable = true;
      traj.obj.velocity_reliable = true;
      traj.initialized = true;
    }
    traj.obj.id = traj.id;
    tracked_objs.push_back(traj.obj);
  }
}
/**
 * @brief 删除消失轨迹
 */
void LidarTrack::removeDeadTrajectory() {
  /** remove die objects */
  for (auto it = trajs_.begin(); it != trajs_.end(); ) {
    if (it->state == Die ) {
      #ifdef _USE_DUMP_TRAJECTORY_
      std::stringstream s_text;
      for (auto ii=0; ii<it->path.size(); ii++) {
        Eigen::Quaterniond quaternion(it->orientation[ii].w(), 
          it->orientation[ii].x(), it->orientation[ii].y(), 
          it->orientation[ii].z());
        // Z-Y-X YPR
        Eigen::Vector3d eulerAngle = quaternion.matrix().eulerAngles(2,1,0);
        s_text << it->id << "\t" 
            << it->path[ii].x() << "\t" << it->path[ii].y() << "\t"
            << it->timestamp[ii] << "\t"
            << it->dims[ii].x() << "\t" << it->dims[ii].y() << "\t" 
            << it->dims[ii].z() << "\t" << eulerAngle(0) << "\n";
      }
      std::ofstream outputfile(dump_path_, 
          std::ofstream::out | std::ofstream::app);
      outputfile << s_text.str();
      it->trajectory_clear();
      #endif // _USE_DUMP_TRAJECTORY_
      it = trajs_.erase(it);
    } else {
      ++it;                
    }
  }
}
/**
 * @brief 生命周期管理
 */
void LidarTrack::life_time_manager() {
  /** life time manage */
  for (auto& traj : trajs_) {
    if (traj.matched ) {
      traj.life_time++;
      // if Stable, do nothing
      if (traj.state == Init) {
        if (traj.life_time > birth_thres_) {
          traj.life_time = 0;
          traj.miss_time = 0;
          traj.state = Stable;
          traj.is_stabled = true;
        }
        continue;
      }
      if (traj.state == Occlusion) {
        traj.life_time = 0;
        traj.miss_time = 0;
        traj.state = Stable;
        traj.is_stabled = true;
        continue;
      }
      if ( traj.state == Stable ) {
        traj.life_time = 0;
        // traj.miss_time = 0;
        // traj.state = Stable;
        traj.is_stabled = true;
      }
    } else {
      traj.miss_time++;
      traj.is_stabled = false;
      if (traj.miss_time > die_thres_) {
        traj.state = Die;
        continue;
      }
      // if Stable
      if (traj.state == Stable) {
        traj.life_time = 0;
        traj.state = Occlusion;
        traj.is_stabled = false;
        continue;
      }
      if (traj.state == Init) {
        // if (traj.life_time < traj.miss_time )
        traj.state = Die;
      }
    }
  }
}
/**
 * @brief 平方距离
 * @param  p1               输入坐标点
 * @param  p2               输入坐标点
 * @return double 返回距离
 */
double LidarTrack::PointDistanceSqrt(const perception::Vector3d& p1, 
    const perception::Vector3d& p2) const {
  return ( (p1.x - p2.x)*(p1.x - p2.x) + 
      (p1.y - p2.y)*(p1.y - p2.y) );
}
/**
 * @brief 判断距离是否超出阈值
 * @param  obj_a            输入目标a
 * @param  obj_b            输入目标b
 * @return true 阈值范围内
 * @return false 阈值范围外
 */
bool LidarTrack::InDistanceThreshold (const Object& obj_a, 
    const Object& obj_b) const {
	if ( dis_2_thres_ > PointDistanceSqrt(obj_a.pose, obj_b.pose)) {
		return true;
	}
	return false;
}
/**
 * @brief 增加新的轨迹
 * @param  obj              输入新增目标
 * @param  id               输入目标ID
 * @return true 增加成功
 * @return false 增加失败
 */
bool LidarTrack::AddNewTrajectory(const Object& obj, unsigned int id) {
	Trajectory traj_kf;

	traj_kf.id = id;
	traj_kf.obj = obj;
  #ifdef _USE_DUMP_TRAJECTORY_
  traj_kf.trajectory_add(timestamp_, obj.pose, obj.orie, obj.dims);
  #endif // _USE_DUMP_TRAJECTORY_
  traj_kf.direction.emplace_back(obj.direction);
	traj_kf.life_time = 1;
	traj_kf.matched = false;
	traj_kf.miss_time = 0;
	traj_kf.state = Init;
	traj_kf.is_stabled = false;

	trajs_.emplace_back(traj_kf);
	return true;
}

/**
 * @brief Set the Detected Objects object
 * @param  input            输入感知检测目标
 * @param  translation      坐标偏移，lidar to map
 * @param  rotation         旋转矩阵，lidar to map
 */
void LidarTrack::SetDetectedObjects(ObjectArray& input, 
		const Eigen::Vector3d& translation,
    const Eigen::Matrix3d& rotation) {
  in_objs_.clear();

  for (size_t i=0; i<input.size(); i++) {
    perception::Object obj = input.at(i);
    // xyzw -> wxyz
    Eigen::Quaterniond q_obj(
            obj.orie.w,
            obj.orie.x,
            obj.orie.y,
            obj.orie.z );
		Eigen::Vector3d obj_pose(obj.pose.x, obj.pose.y, obj.pose.z);
    Eigen::Quaterniond q_lidar2map(rotation);
    Eigen::Vector3d pose_obj_global = translation + rotation * obj_pose;
    Eigen::Quaterniond q_pbj_global = q_lidar2map * q_obj;

    obj.pose.x = pose_obj_global.x();
    obj.pose.y = pose_obj_global.y();
    obj.pose.z = pose_obj_global.z();
    obj.orie.x = q_pbj_global.x();
    obj.orie.y = q_pbj_global.y();
    obj.orie.z = q_pbj_global.z();
    obj.orie.w = q_pbj_global.w();

    in_objs_.emplace_back(obj);
  }
}

} // namespace perception