/**
 * @file perception_node.cc
 * @brief 感知模块main函数
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
#include <perception/perception.h>
#include <ros/ros.h>


/**
 * @brief 感知模块main函数
 * @param  argc             参数数量
 * @param  argv             参数数组
 * @return int 
 */
int main(int argc, char** argv) {
  /** 设置log等级 */
  // pcl::console::setVerbosityLevel(pcl::console::L_ALWAYS);
  // ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Info);

  ros::init(argc, argv, "perception_node");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  /** 创建感知类对象 */
  perception::Perception perception(node, priv_nh);

  // handle callbacks until shut down
  ros::spin();

  return 0;
}
