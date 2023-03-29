/**
 * @file serial_port_object.h
 * @brief serial_port_object RS232 : open, initial, read and write.
 * @author yafei.sun@novauto.com.cn
 * @version 0.0.1
 * @date 2020-04-09
 */

#ifndef SERIAL_PORT_OBJECT_H_
#define SERIAL_PORT_OBJECT_H_

/*
#include <string>
#include "boost/algorithm/string.hpp"
#include "boost/regex.hpp"
#include "boost/asio.hpp"
#include "boost/thread.hpp"
#include "boost/lexical_cast.hpp" */

#include <ros/ros.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<termios.h> 
#include <string.h>


namespace drivers {
    namespace gnss{

  //      #define UDP_RECV_SIZE 1024

        class SerialPortObject
        {
        public:
            SerialPortObject(){}                    
            ~SerialPortObject(){ 
                close(fd_);
            }

            int open_port(int comport) ;
            int set_opt(const int baud_rate, 
                const int nBits, const char nEvent, const int nStop);
            int receive_data(void *buf, size_t count);
            int send_data(const void *buf, size_t count);

        private:
            int fd_;
        };      //end of class  SerialPortObject
    }   //namespace gnss
} // namespace drivers

#endif
