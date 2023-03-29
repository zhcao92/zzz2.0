
#pragma once


#ifdef __USE_ZLOG__

#include "zlog.h"
#include <stdio.h>
#include <string>
#include <iostream>

#define ESC_START       "\033["
#define ESC_END         "\033[0m"
#define COLOR_FATAL     "31;40;5m"
#define COLOR_ALERT     "31;40;1m"
#define COLOR_CRIT      "31;40;1m"
#define COLOR_ERROR     "35;40;1m"
#define COLOR_WARN      "33;40;1m"
#define COLOR_NOTICE    "34;40;1m"
#define COLOR_INFO      "32;40;1m"
#define COLOR_DEBUG     "36;40;1m"
#define COLOR_TRACE     "37;40;1m"
 
// extern zlog_category_t * log_category;
// extern int log_init();
// extern void log_fini();
 

class ZLog {
public:
  ZLog() : log_category_(nullptr) {

  }

  ~ZLog() {
    zlog_fini();
  }
  int init(const char * name, const char * config) {
    if ( zlog_init(config) ) {
      std::cerr << "Error: zlog_init fail !!!" << std::endl;
      zlog_fini();
      return -1;
    }
    log_category_ = zlog_get_category(name);
    if (!log_category_) {
      std::cerr << "Error: zlog get category fail !!!" << std::endl;
      zlog_fini();
      return -2;
    }
    return 0 ;
  }
  int init(std::string& name, std::string& config) {
    if ( zlog_init(config.c_str()) ) {
      std::cerr << "Error: zlog_init fail !!!" << std::endl;
      zlog_fini();
      return -1;
    }
    log_category_ = zlog_get_category(name.c_str());
    if (!log_category_) {
      std::cerr << "Error: zlog get category fail !!!" << std::endl;
      zlog_fini();
      return -2;
    }
    return 0 ;
  }

  zlog_category_t* category() {
    return log_category_;
  }

private:
  zlog_category_t* log_category_;

};


extern ZLog zlog_instance;


#define LOG_INIT(name, config)   \
    zlog_instance.init(name, config)

#define LOG_FATAL(fmt,args...)         \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_FATAL, ESC_START COLOR_FATAL fmt ESC_END, ##args)
 
    
#define LOG_ERROR(fmt , args...)    \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_ERROR, ESC_START COLOR_ERROR fmt ESC_END, ##args)
    
#define LOG_WARN(fmt, args...)        \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_WARN, ESC_START COLOR_WARN fmt ESC_END, ##args)
    
#define LOG_NOTICE(fmt , args...)    \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_NOTICE, ESC_START COLOR_NOTICE fmt ESC_END, ##args)
    
#define LOG_INFO(fmt,args...)         \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_INFO, ESC_START COLOR_INFO fmt ESC_END, ##args)
    
#define LOG_DEBUG(fmt , args...)    \
    zlog(zlog_instance.category(), __FILE__, sizeof(__FILE__)-1, \
    __func__, sizeof(__func__)-1, __LINE__, \
    ZLOG_LEVEL_DEBUG, ESC_START COLOR_DEBUG fmt ESC_END, ##args)

#else 

#include <ros/ros.h>

#define LOG_INIT(name, config)   \
    ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Info)

#define LOG_FATAL(...) ROS_LOG(::ros::console::levels::Fatal, ROSCONSOLE_DEFAULT_NAME, __VA_ARGS__)
 
#define LOG_ERROR(...) ROS_LOG(::ros::console::levels::Error, ROSCONSOLE_DEFAULT_NAME, __VA_ARGS__)
    
#define LOG_WARN(...) ROS_LOG(::ros::console::levels::Warn, ROSCONSOLE_DEFAULT_NAME, __VA_ARGS__)
    
#define LOG_NOTICE(...)    

#define LOG_INFO(...) ROS_LOG(::ros::console::levels::Info, ROSCONSOLE_DEFAULT_NAME, __VA_ARGS__)
    
#define LOG_DEBUG(...) ROS_LOG(::ros::console::levels::Debug, ROSCONSOLE_DEFAULT_NAME, __VA_ARGS__)


#endif