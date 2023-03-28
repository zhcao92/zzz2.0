/**
 * @file standard_kalman_config.cc
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
#include "lidar/tracker/kf/standard_kalman_config.h"
#include <yaml-cpp/yaml.h>
#include <Eigen/Dense>
#include <cmath>
#include <math.h>
#include <string>
#include <iostream>
// #include "common/log.hpp"

namespace kalman {

#define INIT_PARAMETER(node, name, type, default_val)  if (node[#name].IsDefined() ) { \
    name  = node[#name].as<type>(); \
  } else {  \
    name = (default_val); \
    std::cout << "there is no key <" << #name << "> in yaml file." << std::endl; \
  }


StandardKalmanConfig::StandardKalmanConfig() 
    : noise_ax(9),
    noise_ay(9),
    std_px(0.25),
    std_py(0.25),
    px(1.0),
    py(1.0),
    pvx(1000.0),
    pvy(1000.0) {
}


StandardKalmanConfig::~StandardKalmanConfig() {
}

void StandardKalmanConfig::init(const char* config) {
  if (config != nullptr) {
    std::string config_path(config);
    YAML::Node config_yaml;
    std::string yaml_path = config_path + "/config/lidar_track_kf.yaml";
    config_yaml = YAML::LoadFile(yaml_path);
    if (config_yaml.IsNull()) {
      std::cerr << "There is no config file for kf tracker." << std::endl;
      return ;
    }

    INIT_PARAMETER(config_yaml, noise_ax, double, 9.0) 
    INIT_PARAMETER(config_yaml, noise_ay, double, 9.0) 
    INIT_PARAMETER(config_yaml, std_px, double, 0.25) 
    INIT_PARAMETER(config_yaml, std_py, double, 0.25) 
    INIT_PARAMETER(config_yaml, px, double, 1.0) 
    INIT_PARAMETER(config_yaml, py, double, 1.0) 
    INIT_PARAMETER(config_yaml, pvx, double, 1000.0) 
    INIT_PARAMETER(config_yaml, pvy, double, 1000.0) 
  } 
}

}