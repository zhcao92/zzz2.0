/**
 * @file standard_kalman_filter.h
 * @brief kalman滤波类
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
// #include "kalman_filter.h"
#include "lidar/tracker/kf/standard_kalman_config.h"
#include <Eigen/Dense>

namespace kalman {
/**
 * @brief kalman滤波类
 */
class StandardKalmanFilter 
// : public KalmanFilter 
{
public:
/**
 * @brief Construct a new Standard Kalman Filter object
 */
StandardKalmanFilter();
/**
 * @brief Destroy the Standard Kalman Filter object
 */
~StandardKalmanFilter();
/**
 * @brief 初始化函数，输入kalman滤波器参数和初始坐标向量
 * @param  config           输入配置
 * @param  z                输入初始坐标
 */
void init(StandardKalmanConfig* config, Eigen::VectorXd& z);
/**
 * @brief 预测环节
 * @param  dt               预测时间
 */
void predict(double dt);
/**
 * @brief 更新环节，跟新坐标位置和速度
 * @param  dt               更新时间
 * @param  z                更新坐标位置输入
 */
void update(double dt, Eigen::VectorXd& z);
/**
 * @brief 获取状态变量
 * @return Eigen::VectorXd 
 */
Eigen::VectorXd X();
/**
 * @brief 获取状态信息
 * @return Eigen::VectorXd 
 */
Eigen::VectorXd State();
/**
 * @brief 计算状态转移矩阵
 * @param  dt               输入时间间隔
 * @return Eigen::VectorXd 
 */
Eigen::VectorXd fx(double dt);
/**
 * @brief 计算状态观测矩阵
 * @param  dt               输入时间间隔
 * @return Eigen::VectorXd 
 */
Eigen::VectorXd hx(double dt);


private:
/**
 * @brief 初始化函数
 * @param  z                输入设定初始位置
 */
void initializeX(Eigen::VectorXd& z);
  // double control_theta(double theta);

private:
  bool is_initialized_;
  bool is_v_initialized_;
  double dt_;
  Eigen::VectorXd x2_;
  Eigen::VectorXd x_;
  Eigen::MatrixXd F_;
  Eigen::MatrixXd P_;
  Eigen::MatrixXd Q_;
  Eigen::MatrixXd H_;
  Eigen::MatrixXd R_;

  double noise_ax_;
  double noise_ay_;
	double std_px_;
	double std_py_;
  double M_2_PI_;
};

}