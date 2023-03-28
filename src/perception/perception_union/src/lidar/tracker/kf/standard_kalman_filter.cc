/**
 * @file standard_kalman_filter.cc
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
#include "lidar/tracker/kf/standard_kalman_config.h"
#include "lidar/tracker/kf/standard_kalman_filter.h"
#include <Eigen/Dense>
#include <cmath>
#include <math.h>
#include <iostream>
#include <string>
// #include "common/log.hpp"

namespace kalman {

#define INDEX_X       0
#define INDEX_Y       1
#define INDEX_VX      2
#define INDEX_VY      3


StandardKalmanFilter::StandardKalmanFilter() : is_initialized_(false) {
}

StandardKalmanFilter::~StandardKalmanFilter() {

}

void StandardKalmanFilter::init(StandardKalmanConfig* config, Eigen::VectorXd& z) {
  M_2_PI_ = 2 * M_PI;
  // CV x,y,vx,vy,
  x_ = Eigen::VectorXd(4);
  F_ = Eigen::MatrixXd::Identity(4, 4);
  P_ = Eigen::MatrixXd::Identity(4, 4);
  Q_ = Eigen::MatrixXd::Identity(4, 4);
  H_ = Eigen::MatrixXd::Identity(2, 4);
  R_ = Eigen::MatrixXd::Identity(2, 2);
  StandardKalmanConfig* conf = (StandardKalmanConfig*)config;
  noise_ax_ = conf->noise_ax;
  noise_ay_ = conf->noise_ay;
  std_px_ = conf->std_px;
  std_py_ = conf->std_py;

  R_(0, 0) = conf->std_px * conf->std_px;
  R_(1, 1) = conf->std_py * conf->std_py;

  P_(0, 0) = conf->px;
  P_(1, 1) = conf->py;
  P_(2, 2) = conf->pvx;
  P_(3, 3) = conf->pvy;

  initializeX(z);
}

void StandardKalmanFilter::initializeX(Eigen::VectorXd& z) {
	if (!is_initialized_) {
    x_[0] = z[0];
    x_[1] = z[1];
    x_[2] = 0.0;
    x_[3] = 0.0;
    is_initialized_ = true;
  }
}

void StandardKalmanFilter::predict(double dt) {
  x_ = fx(dt);
  Eigen::MatrixXd Ft = F_.transpose();
  P_ = F_ * P_ * Ft + Q_;
  // std::cout << "x_:\n" << x_ << std::endl; 
}

Eigen::VectorXd StandardKalmanFilter::X() {
  return x_;
}

Eigen::VectorXd StandardKalmanFilter::State() {
  return x_;
}

void StandardKalmanFilter::update(double dt, Eigen::VectorXd& z) {
	Eigen::VectorXd z_pred = hx(dt);
	Eigen::VectorXd y = z - z_pred;

	Eigen::MatrixXd Ht = H_.transpose();
  Eigen::MatrixXd PHt = P_ * Ht;
	Eigen::MatrixXd S = H_ * PHt + R_;
	Eigen::MatrixXd Si = S.inverse();
	Eigen::MatrixXd K = PHt * Si;

	x_ = x_ + K * y;
  Eigen::MatrixXd I = Eigen::MatrixXd::Identity(4, 4);
	P_ = (I - K * H_) * P_;
}

Eigen::VectorXd StandardKalmanFilter::fx(double dt) {
  Eigen::VectorXd xp(4);
  // Modify the F matrix so that the time is integrated  
  F_(0, 2) = dt;
  F_(1, 3) = dt;
  xp = F_ * x_;
  // compute Q
  float dt_2 = dt * dt;
  float dt_3 = dt_2 * dt;
  float dt_4 = dt_3 * dt;
  //set the process covariance matrix Q
  Q_(0, 0) = 0.25 * dt_4 * noise_ax_;
  Q_(1, 1) = 0.25 * dt_4 * noise_ay_;
  Q_(2, 2) = 0.5 * dt_2 * noise_ax_;
  Q_(3, 3) = 0.5 * dt_2 * noise_ay_;
  Q_(0, 2) = 0.5 * dt_3 * noise_ax_;
  Q_(1, 3) = 0.5 * dt_3 * noise_ay_;
  Q_(2, 0) = Q_(0, 2);
  Q_(3, 1) = Q_(1, 3);

  return xp;
}

Eigen::VectorXd StandardKalmanFilter::hx(double dt) {
	Eigen::VectorXd zp(2);
  zp(INDEX_X) = x_(INDEX_X);
  zp(INDEX_Y) = x_(INDEX_Y);
  return zp;
}

}