/**
 * @file standard_kalman_config.h
 * @brief kalman滤波配置类
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
#include <Eigen/Dense>

namespace kalman {
/**
 * @brief kalman配置类定义
 */
class StandardKalmanConfig 
// : public KalmanConfig 
{
public:
/**
 * @brief Construct a new Standard Kalman Config object
 */
StandardKalmanConfig();
/**
 * @brief Destroy the Standard Kalman Config object
 */
~StandardKalmanConfig();
/**
 * @brief 初始化，输入yaml配置路径
 * @param  config           输入配置文件路径
 */
void init(const char* config);

public:
  double noise_ax;
  double noise_ay;
	double std_px;
	double std_py;
	double px;
	double py;
	double pvx;
	double pvy;
};
}