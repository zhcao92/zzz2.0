/*
 * @Descripttion:
 * @version:
 * @Author: xiangzhang
 * @Date: 2020-09-03 23:44:13
 * @LastEditors: xiangzhang
 * @LastEditTime: 2020-10-12 15:20:44
 */
#include "maincontroller.h"
namespace Control
{

  maincontroller::maincontroller(/* args */) {}

  maincontroller::~maincontroller() {}
  void maincontroller::maincontroller_run()
  {
    // TODO::dependent module init 初始化的检测逻辑
    int INIT_OK = 0;
    if (RealtimeCommunicationDetection(trajectory_seq_) && _Pathpoints_rec.size() > 0 && _Twistpoints_rec.size() >= 0)
    {
      INIT_OK = 1;
    }
    else
    {
      // cout << "NO Trajectory  !!!  " << _Pathpoints.size() << "  " << _Twistpoints.size()
      //      << endl;
        // maincontroller_reset();
        // control_msgs::Vehicle_control vehicle_control_req_zero;
        // vehicle_control_req_zero.acceleration = -0.5;//制动
        // vehicle_control_req_zero.gear_req = 4;//d
        // _vehicle_control_req = vehicle_control_req_zero;
        // cout << "maincontroller:: INIT False !!!!  " << endl;
    }
    // tranalyze 检测曲率大小
    // >当前速度下的最小转弯半径，曲率变化率<当前速度下的最小变化率
    std::vector<float> _sort_path_curvature;
    _sort_path_curvature = _path_curvature;
    sort(_sort_path_curvature.begin(), _sort_path_curvature.end());
    // for (std::vector<double>::iterator it = _sort_path_curvature.begin();
    //      it != _sort_path_curvature.end(); ++it)
    //   std::cout << "   \n " << *it << std::endl;

    //判断绝对值最大的两个数。未遍历检测曲率
    // if (abs(_sort_path_curvature[0]) > MAX_CURVATURE ||
    //     abs(_sort_path_curvature.back()) > MAX_CURVATURE)
    //   // std::cout << " Path somepoint curvature so small  " << std::endl;
    // longitude controller module

    if (INIT_OK)
    {
      //
      _vehicle_status = _vehicle_status_rec;
      _current_pose = _current_pose_rec;
      _vehicle_status = _vehicle_status_rec;
      _Pathpoints = _Pathpoints_rec;
      _Twistpoints = _Twistpoints_rec;

      // get desire speed
      int trajectory_size = _Twistpoints.size();
      // change select speed,preview 900ms
      // 0.9/(0.2)   velocitynumber = v * t /d
      int velocitynumber = _vehicle_status.velocity_fd * 4.5;
      if (velocitynumber < 30)
        velocitynumber = 30;
      if (velocitynumber > (trajectory_size - 1))
        velocitynumber = trajectory_size - 1;

      // 922  fix_speed_vector.size() = 0;
      if (trajectory_size == 0)
      {
        desire_velocity = desire_velocity_last;
      }
      if (trajectory_size > 0)
      {
        desire_velocity = _Twistpoints[velocitynumber].velocity;
      }
      desire_velocity_last = desire_velocity;
      //test
      desire_velocity = desire_velocity * 3.6;
      if (desire_velocity > 40)
      {
        desire_velocity = 40;
      }
      // desire_velocity = 20;
      // cout << "desire_velocity " << desire_velocity << endl;
      if (_vehicle_status.automode == 1)
      { // cout << "_vehicle_status.velocity_fd  " << _vehicle_status.velocity_fd * 3.6 << endl;
        // km/h
        _PI_loncontroller.getvehiclecoordinate(_current_pose);
        _PI_loncontroller.inputcontroldata(desire_velocity, _vehicle_status);
        _PI_loncontroller.Loncontrolrun();
        _PI_loncontroller.setWaypoints(_Pathpoints);

        // get out_acceleration
        _PI_loncontroller.outputcontrol(&_vehicle_control.acceleration);
        // TODO::latitude controller module

        _Lat_controller.setWaypoints(_Pathpoints);
        _Lat_controller.SetVehicleStatus(_vehicle_status, _current_pose);
        // get out_steerangle (deg)
        _Lat_controller.run_follower(&_vehicle_control.steerangle_req);
        // _vehicle_control.gear_req = 2;//d
        _vehicle_control_req = _vehicle_control;
      }
      else
      {
        maincontroller_reset();
        control_msgs::Vehicle_control vehicle_control_req_zero;
        vehicle_control_req_zero.acceleration = -0.5;//制动
        // vehicle_control_req_zero.gear_req = 4;//d
        _vehicle_control_req = vehicle_control_req_zero;
        cout << "Wait for enter Automode !!!!  " << endl;
      }
    }
  }

  float maincontroller::velocity_km_to_m(float velocity_)
  {
    return velocity_ / 3.6;
  }
  float maincontroller::velocity_m_to_km(float velocity_)
  {
    return velocity_ * 3.6;
  }
  bool maincontroller::maincontroller_reset()
  {
    _PI_loncontroller.Reset();
    _Lat_controller.Reset();
    return true;
  }

  bool maincontroller::RealtimeCommunicationDetection(const ssize_t trajectory_sqe_number)
  {
  //check trajectory
  static ssize_t trajectory_sqe_number_old = 0;
  static ssize_t trajectory_count = 0;
  int controllerfrequency_ = 100; //100hz
  int check_trajectory_time_ = 1; //1s 
  //TODO::replace judge index
  if(trajectory_sqe_number == trajectory_sqe_number_old){
    trajectory_count++;
  }
  else{
    trajectory_count = 0;
  }
  trajectory_sqe_number_old = trajectory_sqe_number;
  bool trajectory_com_normal_flag = trajectory_count > controllerfrequency_ * check_trajectory_time_ ? false : true; 
  if(!trajectory_com_normal_flag)
  {
    // std::cout<<"maincontroller::error ,trajectory_update stop the refresh !!!!! "<<std::endl;
  }
  return trajectory_com_normal_flag;
}
} // namespace Control
