/**
 * @file serial_port_object.cpp
 * @brief serial_port_object RS232 and RS422 : open, initial, read and write.
 * @author yafei.sun@novauto.com.cn
 * @version 0.0.1
 * @date 2020-04-09
 */

#include "serial_port_object.h"

namespace drivers {
    namespace gnss{
        /**
         * open port
         * @param  fd
         * @param  comport 想要打开的串口号
         * @return  返回-1为打开失败
         */
        int SerialPortObject::open_port(int comport) { 
            const char *dev[] = {"/dev/ttyUART_TTL_232_B","/dev/ttyUART_232_422_485_A"};
        
            if (comport==1)//串口1 
            {
                fd_ = open( "/dev/ttyUART_TTL_232_B", O_RDWR|O_NOCTTY|O_NDELAY); 
                if (-1 == fd_)
                { 
                    ROS_ERROR("[GNSS - huace cgi]Can't Open SerialPort. ");
                    return(-1); 
                } 
            } 

            else if(comport==2)//串口2 
            {     
                fd_ = open( "/dev/ttyUART_232_422_485_A", O_RDWR|O_NOCTTY|O_NDELAY); //没有设置<span style="font-family: Arial, Helvetica, sans-serif;">O_NONBLOCK非阻塞模式，也可以设置为非阻塞模式</span>
                // create a new file: read and write mode; 如果路径名指向终端设备，不要把这个设备用作控制终端;
                //

                if (-1 == fd_)
                { 
                    ROS_ERROR("[GNSS - huace cgi]Can't Open SerialPort. ");
                    return(-1); 
                } 
            } 

            /*恢复串口为阻塞状态*/ 
            if(fcntl(fd_, F_SETFL, 0)<0) 
                ROS_INFO("[GNSS - huace cgi]fcntl failed!"); 
            else 
                ROS_INFO_STREAM("[GNSS - huace cgi]fcntl = " << fcntl(fd_, F_SETFL,0)); //set file status sign
            /*测试是否为终端设备*/ 
            if(isatty(STDIN_FILENO)==0)             //
                ROS_INFO("[GNSS - huace cgi]standard input is not a terminal device"); 
            else 
                ROS_INFO("[GNSS - huace cgi]isatty success!"); 
            ROS_INFO_STREAM("[GNSS - huace cgi]fd-open = " << fd_); 
            return fd_; 
        }               // end of open_port

        int SerialPortObject::set_opt(const int baud_rate, const int nBits, 
            const char nEvent, const int nStop){    //波特率，停止位，奇偶校验位，停止位
            struct termios newtio,oldtio; 
            /*保存测试现有串口参数设置，在这里如果串口号等出错，会有相关的出错信息*/ 
            if  ( tcgetattr( fd_,&oldtio)  !=  0) {          //tcgetattr: initialize termios struct related to a terminal
                ROS_ERROR_STREAM("[GNSS - huace cgi]SetupSerial 1, and tcgetattr( fd,&oldtio) -> " << tcgetattr( fd_,&oldtio));
                //ROS_INFO_STREAM("[GNSS - huace cgi]tcgetattr( fd,&oldtio) -> " << tcgetattr( fd,&oldtio)); 
                return -1; 
            } 
            bzero( &newtio, sizeof( newtio ) );      //byte set zero.   
            /*步骤一，设置字符大小*/ 
            newtio.c_cflag  |=  CLOCAL | CREAD;         //忽略所有调制解调器的状态行,保证程序不会占用串口
                                                                                             //启用字符接收器，能够从串口中读取输入的数据
            newtio.c_cflag &= ~CSIZE;       
            /*设置停止位*/ 
            switch( nBits ){ 
                case 7: 
                newtio.c_cflag |= CS7;          //发送或接收字符时使用5/6/7/8比特。
                break; 
                case 8: 
                newtio.c_cflag |= CS8; 
                break; 
            } 
            /*设置奇偶校验位*/ 
            switch( nEvent ){ 
                case 'o':
                case 'O': //奇数 
                newtio.c_cflag |= PARENB;                //control mode 启用奇偶校验码的生成和检测功能
                newtio.c_cflag |= PARODD;               //只使用奇校验而不使用偶校验
                newtio.c_iflag |= (INPCK | ISTRIP); //input mode 对接收到的字符执行奇偶校检,将所有接收的字符裁减为7比特
                break; 
                case 'e':
                newtio.c_cflag |= PARENB; 
                case 'E': //偶数 
                newtio.c_cflag &= ~PARODD; 
                break;
                case 'n':
                case 'N':  //无奇偶校验位 
                newtio.c_cflag &= ~PARENB; 
                break;
                default:
                break;
            } 
            /*设置波特率*/ 
            switch( baud_rate ){ 
                case 2400: 
                cfsetispeed(&newtio, B2400);        //set input baud rate
                cfsetospeed(&newtio, B2400);       //set output baud rate
                break; 
                case 4800: 
                cfsetispeed(&newtio, B4800); 
                cfsetospeed(&newtio, B4800); 
                break; 
                case 9600: 
                cfsetispeed(&newtio, B9600); 
                cfsetospeed(&newtio, B9600); 
                break; 
                case 115200: 
                cfsetispeed(&newtio, B115200); 
                cfsetospeed(&newtio, B115200); 
                break; 
                case 230400: 
                cfsetispeed(&newtio, B230400); 
                cfsetospeed(&newtio, B230400); 
                break; 
                case 460800: 
                cfsetispeed(&newtio, B460800); 
                cfsetospeed(&newtio, B460800); 
                break; 
                default: 
                cfsetispeed(&newtio, B9600); 
                cfsetospeed(&newtio, B9600); 
                break; 
            } 
            /*设置停止位*/ 
            if( nStop == 1 ) 
                newtio.c_cflag &=  ~CSTOPB; 
            else if ( nStop == 2 ) 
                newtio.c_cflag |=  CSTOPB; 
            /*设置等待时间和最小接收字符*/ 
            newtio.c_cc[VTIME]  = 0; 
            newtio.c_cc[VMIN] = 0;      
            /*处理未接收字符*/ 
            tcflush(fd_,TCIFLUSH); 
            /*激活新配置*/ 
            if((tcsetattr(fd_,TCSANOW,&newtio))!=0){ 
                ROS_ERROR("[GNSS - huace cgi]com set error"); 
                return -1; 
            } 
                ROS_INFO("[GNSS - huace cgi]set done!"); 
                return 0; 
        }       //end of set_opt

        int SerialPortObject::receive_data(void *buf, size_t count)
        {
            int ret = read(fd_, buf, count);//读串口
           // if (ret < 0)
            //    ROS_ERROR("[GNSS - huace cgi]RS232 read error.");   
            return ret;
        }

        int SerialPortObject::send_data(const void *buf, size_t count)
        {
            int ret = write(fd_, buf, count);
            return ret;
        }
    }//namespace gnss
} // namespace drivers

