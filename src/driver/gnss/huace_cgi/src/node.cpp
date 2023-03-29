/**
 * @file node.cpp
 * @brief GNSS huace_cgi node : initial, start and run.
 * below protocals are parsed
 * GpChc; RawImu; InsPva; Headingb  
 * @author yafei.sun@novauto.com.cn
 * @version 0.0.1
 * @date 2020-04-09
 */

#include <ros/ros.h>
#include <novatel_gnss_msgs/GpChc.h>        
#include <novatel_gnss_msgs/BdsEphemeris.h>                         // ROS messages
#include <novatel_gnss_msgs/BestPosb.h>
#include <novatel_gnss_msgs/BestVelb.h>
#include <novatel_gnss_msgs/GloEphemeris.h>
#include <novatel_gnss_msgs/GpsEphemeris.h>
#include <novatel_gnss_msgs/Headingb.h>
#include <novatel_gnss_msgs/InsPva.h>
#include <novatel_gnss_msgs/Range.h>
#include <novatel_gnss_msgs/RawImu.h>  
#include "dispatch.h"                                                                     // Packet structure
#include <arpa/inet.h>                                                                  // Ethernet
#include "serial_port_object.h"                                                                //for GNSS 
#include <boost/thread/thread.hpp>
//for huace_cgi
#include <sys/stat.h>
#include <string>

// UINT16_MAX is not defined by default in Ubuntu Saucy
#ifndef UINT16_MAX
#define UINT16_MAX (65535)
#endif

//namespace drivers {
//    namespace gnss{     //add later

  bool debug = false;
  int loop_rate_launch232 = 103;
  int loop_rate_launch422 = 105;
  ros::Publisher pub_rawimu;
  ros::Publisher pub_heading; 
  ros::Publisher pub_pos;   
  ros::Publisher pub_range;                  //1/2Hz but large data
  ros::Publisher pub_gpsephemeris;   //60s
  ros::Publisher pub_gloephemeris;      //60s
  ros::Publisher pub_bdsephemeris;    //60s 
  ros::Publisher pub_vel;          //no this protocal up to now
  drivers::gnss::SerialPortObject serial_port422;   //For RS422, GPCGC protocal
  std::string frame_id = "gnss";
  volatile int read_index_thread = 0;
  int size_last = 0; 
  const int gnss_buffer_size = 4096;
  uint8_t gnss_buffer232[gnss_buffer_size] = {0};     //to save msg received one time
  uint8_t gnss_buffer422[gnss_buffer_size] = {0};     //to save msg received one time
  const int CRC_length = 4;

static inline void handleRawImuPacket(const RawImu& raw_imu, const LongHeader& long_header, 
    ros::Publisher &pub_rawimu, const std::string frame_id){

  static int msg_seq = 0;
  novatel_gnss_msgs::RawImu raw_imu_msg;
  if(msg_seq < UINT16_MAX){
    raw_imu_msg.header.seq = msg_seq++;
  }
  else {
    raw_imu_msg.header.seq = 0;
    msg_seq = 0;
  }
  raw_imu_msg.header.stamp = ros::Time::now();
  raw_imu_msg.header.frame_id = frame_id;

  std::memcpy(&raw_imu_msg.long_header, &long_header, sizeof(long_header));
  raw_imu_msg.gps_week = raw_imu.gps_week;
  raw_imu_msg.gps_seconds = raw_imu.gps_seconds;
  raw_imu_msg.imuStatus = raw_imu.imuStatus;
  raw_imu_msg.z_velocity_change = raw_imu.z_velocity_change;
  raw_imu_msg.y_velocity_change_neg = raw_imu.y_velocity_change_neg;
  raw_imu_msg.x_velocity_change = raw_imu.x_velocity_change;
  raw_imu_msg.z_angle_change = raw_imu.z_angle_change;
  raw_imu_msg.y_angle_change_neg = raw_imu.y_angle_change_neg;     //char[] to string
  raw_imu_msg.x_angle_change = raw_imu.x_angle_change;

  pub_rawimu.publish(raw_imu_msg);
}

static inline void handleInsPvaPacket(const InsPva& ins_pva,  const LongHeader& long_header, 
    ros::Publisher &pub_inspva, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::InsPva ins_pva_msg;
  if(msg_seq < UINT16_MAX){
    ins_pva_msg.header.seq = msg_seq++;
  }
  else {
    ins_pva_msg.header.seq = 0;
    msg_seq = 0;
  }
  ins_pva_msg.header.stamp = ros::Time::now();
  ins_pva_msg.header.frame_id = frame_id;

  std::memcpy(&ins_pva_msg.long_header, &long_header, sizeof(long_header));
  ins_pva_msg.gps_week = ins_pva.gps_week;
  ins_pva_msg.gps_seconds = ins_pva.gps_seconds;
  ins_pva_msg.latitude = ins_pva.latitude;
  ins_pva_msg.longitude = ins_pva.longitude;
  ins_pva_msg.height = ins_pva.height;
  ins_pva_msg.north_velocity = ins_pva.north_velocity;
  ins_pva_msg.east_velocity = ins_pva.east_velocity;
  ins_pva_msg.up_velocity = ins_pva.up_velocity;
  ins_pva_msg.roll = ins_pva.roll;
  ins_pva_msg.pitch = ins_pva.pitch;
  ins_pva_msg.azimuth = ins_pva.azimuth;
  ins_pva_msg.status = static_cast<uint32_t>(ins_pva.status);          //sunyafei 
  pub_inspva.publish(ins_pva_msg);
}

static inline void handlePosPacket(const BestPos& best_pos,  const LongHeader& long_header, 
    ros::Publisher &pub_pos, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::BestPosb pos_msg;
  if(msg_seq < UINT16_MAX){
    pos_msg.header.seq = msg_seq++;
  }
  else {
    pos_msg.header.seq = 0;
    msg_seq = 0;
  }
  pos_msg.header.stamp = ros::Time::now();
  pos_msg.header.frame_id = frame_id;

  std::memcpy(&pos_msg.long_header, &long_header, sizeof(long_header));
  pos_msg.solution_status = static_cast<uint32_t>(best_pos.solution_status) && 0xFF;
  pos_msg.position_type = static_cast<uint32_t>(best_pos.position_type) && 0xFF;     
  pos_msg.latitude = best_pos.latitude;
  pos_msg.longitude = best_pos.longitude;
  pos_msg.height_msl = best_pos.height_msl;
  pos_msg.undulation = best_pos.undulation;
  pos_msg.datum_id = static_cast<uint32_t>(best_pos.datum_id) && 0xFF;
  pos_msg.latitude_std_dev = best_pos.latitude_std_dev;
  pos_msg.longitude_std_dev = best_pos.longitude_std_dev;
  pos_msg.height_std_dev = best_pos.height_std_dev;
  pos_msg.base_station_id = best_pos.base_station_id;     //char[] to string
  pos_msg.differential_age = best_pos.differential_age;
  pos_msg.solution_age = best_pos.solution_age;
  pos_msg.num_sats_tracked = best_pos.num_sats_tracked;
  pos_msg.num_sats_in_solution = best_pos.num_sats_in_solution;
  pos_msg.num_sats_l1 = best_pos.num_sats_l1;
  pos_msg.num_sats_multi = best_pos.num_sats_multi;
  pos_msg.reserved = best_pos.reserved;
  pos_msg.extended_solution_status = best_pos.extended_solution_status;
  pos_msg.galileo_beidou_used_mask = best_pos.galileo_beidou_used_mask;
  pos_msg.gps_glonass_used_mask = best_pos.gps_glonass_used_mask;

  pub_pos.publish(pos_msg);
}

//range packet process and publish
static inline void handleRangePacket(const Range& range,  const LongHeader& long_header, 
    ros::Publisher &pub_range, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::Range range_msg;
  if(msg_seq < UINT16_MAX){
    range_msg.header.seq = msg_seq++;
  }
  else {
    range_msg.header.seq = 0;
    msg_seq = 0;
  }
  range_msg.header.stamp = ros::Time::now();
  range_msg.header.frame_id = frame_id;

  std::memcpy(&range_msg.long_header, &long_header, sizeof(long_header));
  range_msg.obs_num = range.obs_num;
  novatel_gnss_msgs::RangeIn range_in_temp;
  range_msg.range_ins.resize(0);
  for(int i=0; i<range.range_ins.size(); i++){
    range_in_temp.PRN = range.range_ins[i].PRN;
    range_in_temp.glofreq = range.range_ins[i].glofreq;
    range_in_temp.psr = range.range_ins[i].psr;
    range_in_temp.psr_standard = range.range_ins[i].psr_standard;
    range_in_temp.adr = range.range_ins[i].adr;
    range_in_temp.adr_standard = range.range_ins[i].adr_standard;
    range_in_temp.dopp = range.range_ins[i].dopp;
    range_in_temp.CNo = range.range_ins[i].CNo;
    range_in_temp.locktime = range.range_ins[i].locktime;
    range_in_temp.track_status = range.range_ins[i].track_status;    
    range_msg.range_ins.push_back(range_in_temp);
  }

  pub_range.publish(range_msg);
}

static inline void handleGPSEphemerisPacket(const GPS_Ephemeris& gps_ephemeris,  const LongHeader& long_header, 
    ros::Publisher &pub_gpsephemeris, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::GpsEphemeris gps_ephemeris_msg;
  if(msg_seq < UINT16_MAX){
    gps_ephemeris_msg.header.seq = msg_seq++;
  }
  else {
    gps_ephemeris_msg.header.seq = 0;
    msg_seq = 0;
  }
  gps_ephemeris_msg.header.stamp = ros::Time::now();
  gps_ephemeris_msg.header.frame_id = frame_id;

  std::memcpy(&gps_ephemeris_msg.long_header, &long_header, sizeof(long_header));
  gps_ephemeris_msg.prn = gps_ephemeris.prn;
  gps_ephemeris_msg.tow = gps_ephemeris.tow;
  gps_ephemeris_msg.health = gps_ephemeris.health;
  gps_ephemeris_msg.iode1 = gps_ephemeris.iode1;
  gps_ephemeris_msg.iode2 = gps_ephemeris.iode2;
  gps_ephemeris_msg.week = gps_ephemeris.week;
  gps_ephemeris_msg.z_week = gps_ephemeris.z_week;
  gps_ephemeris_msg.toe = gps_ephemeris.toe;
  gps_ephemeris_msg.A = gps_ephemeris.A;
  gps_ephemeris_msg.delta_A = gps_ephemeris.delta_A;
  gps_ephemeris_msg.M_0 = gps_ephemeris.M_0;
  gps_ephemeris_msg.ecc = gps_ephemeris.ecc;
  gps_ephemeris_msg.omega = gps_ephemeris.omega;
  gps_ephemeris_msg.cuc = gps_ephemeris.cuc;
  gps_ephemeris_msg.cus = gps_ephemeris.cus;
  gps_ephemeris_msg.crc = gps_ephemeris.crc;
  gps_ephemeris_msg.crs = gps_ephemeris.crs;
  gps_ephemeris_msg.cic = gps_ephemeris.cic;
  gps_ephemeris_msg.cis = gps_ephemeris.cis;
  gps_ephemeris_msg.I_0 = gps_ephemeris.I_0;
  gps_ephemeris_msg.dot_I = gps_ephemeris.dot_I;
  gps_ephemeris_msg.omega_0 = gps_ephemeris.omega_0;
  gps_ephemeris_msg.dot_omega = gps_ephemeris.dot_omega;
  gps_ephemeris_msg.iodc = gps_ephemeris.iodc;
  gps_ephemeris_msg.toc = gps_ephemeris.toc;
  gps_ephemeris_msg.tgd = gps_ephemeris.tgd;
  gps_ephemeris_msg.af0 = gps_ephemeris.af0;
  gps_ephemeris_msg.af1 = gps_ephemeris.af1;
  gps_ephemeris_msg.af2 = gps_ephemeris.af2;
  gps_ephemeris_msg.AS = gps_ephemeris.AS;
  gps_ephemeris_msg.N = gps_ephemeris.N;
  gps_ephemeris_msg.ura = gps_ephemeris.ura;

  pub_gpsephemeris.publish(gps_ephemeris_msg);
}

static inline void handleGLOEphemerisPacket(const GLO_Ephemeris& glo_ephemeris,  const LongHeader& long_header, 
    ros::Publisher &pub_gloephemeris, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::GloEphemeris glo_ephemeris_msg;
  if(msg_seq < UINT16_MAX){
    glo_ephemeris_msg.header.seq = msg_seq++;
  }
  else {
    glo_ephemeris_msg.header.seq = 0;
    msg_seq = 0;
  }
  glo_ephemeris_msg.header.stamp = ros::Time::now();
  glo_ephemeris_msg.header.frame_id = frame_id;

  std::memcpy(&glo_ephemeris_msg.long_header, &long_header, sizeof(long_header));
  glo_ephemeris_msg.sloto = glo_ephemeris.sloto;
  glo_ephemeris_msg.freqo = glo_ephemeris.freqo;
  glo_ephemeris_msg.sat_type = glo_ephemeris.sat_type;
  glo_ephemeris_msg.reserved_1 = glo_ephemeris.reserved_1;
  glo_ephemeris_msg.e_week = glo_ephemeris.e_week;
  glo_ephemeris_msg.e_time = glo_ephemeris.e_time;
  glo_ephemeris_msg.t_offset = glo_ephemeris.t_offset;
  glo_ephemeris_msg.Nt = glo_ephemeris.Nt;
  glo_ephemeris_msg.reserved_2 = glo_ephemeris.reserved_2;
  glo_ephemeris_msg.reserved_3 = glo_ephemeris.reserved_3;
  glo_ephemeris_msg.issue = glo_ephemeris.issue;
  glo_ephemeris_msg.health = glo_ephemeris.health;
  glo_ephemeris_msg.pos_x = glo_ephemeris.pos_x;
  glo_ephemeris_msg.pos_y = glo_ephemeris.pos_y;
  glo_ephemeris_msg.pos_z = glo_ephemeris.pos_z;
  glo_ephemeris_msg.vel_x = glo_ephemeris.vel_x;
  glo_ephemeris_msg.vel_y = glo_ephemeris.vel_y;
  glo_ephemeris_msg.vel_z = glo_ephemeris.vel_z;
  glo_ephemeris_msg.acc_x = glo_ephemeris.acc_x;
  glo_ephemeris_msg.acc_y = glo_ephemeris.acc_y;
  glo_ephemeris_msg.acc_z = glo_ephemeris.acc_z;
  glo_ephemeris_msg.tau_n = glo_ephemeris.tau_n;
  glo_ephemeris_msg.delta_tau_n = glo_ephemeris.delta_tau_n;
  glo_ephemeris_msg.gamma = glo_ephemeris.gamma;
  glo_ephemeris_msg.Tk = glo_ephemeris.Tk;
  glo_ephemeris_msg.P = glo_ephemeris.P;
  glo_ephemeris_msg.Ft = glo_ephemeris.Ft;
  glo_ephemeris_msg.age = glo_ephemeris.age;
  glo_ephemeris_msg.Flags = glo_ephemeris.Flags;

  pub_gloephemeris.publish(glo_ephemeris_msg);
}

static inline void handleBDSEphemerisPacket(const BDS_Ephemeris& bds_ephemeris,  const LongHeader& long_header, 
    ros::Publisher &pub_bdsephemeris, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::BdsEphemeris bds_ephemeris_msg;
  if(msg_seq < UINT16_MAX){
    bds_ephemeris_msg.header.seq = msg_seq++;
  }
  else {
    bds_ephemeris_msg.header.seq = 0;
    msg_seq = 0;
  }
  bds_ephemeris_msg.header.stamp = ros::Time::now();
  bds_ephemeris_msg.header.frame_id = frame_id;  

  std::memcpy(&bds_ephemeris_msg.long_header, &long_header, sizeof(long_header));
  bds_ephemeris_msg.satellite_id = bds_ephemeris.satellite_id;
  bds_ephemeris_msg.week = bds_ephemeris.week;
  bds_ephemeris_msg.ura = bds_ephemeris.ura;
  bds_ephemeris_msg.health1 = bds_ephemeris.health1;  
  bds_ephemeris_msg.tdg1 = bds_ephemeris.tdg1;
  bds_ephemeris_msg.tdg2 = bds_ephemeris.tdg2;
  bds_ephemeris_msg.aodc = bds_ephemeris.aodc;
  bds_ephemeris_msg.toc = bds_ephemeris.toc;
  bds_ephemeris_msg.a0 = bds_ephemeris.a0;
  bds_ephemeris_msg.a1 = bds_ephemeris.a1;
  bds_ephemeris_msg.a2 = bds_ephemeris.a2;
  bds_ephemeris_msg.aode = bds_ephemeris.aode;
  bds_ephemeris_msg.toe = bds_ephemeris.toe;
  bds_ephemeris_msg.rootA = bds_ephemeris.rootA;
  bds_ephemeris_msg.ecc = bds_ephemeris.ecc;
  bds_ephemeris_msg.omega = bds_ephemeris.omega;
  bds_ephemeris_msg.delta_N = bds_ephemeris.delta_N;
  bds_ephemeris_msg.M0 = bds_ephemeris.M0;
  bds_ephemeris_msg.omega0 = bds_ephemeris.omega0;
  bds_ephemeris_msg.rra = bds_ephemeris.rra;
  bds_ephemeris_msg.inc_angle = bds_ephemeris.inc_angle;
  bds_ephemeris_msg.idot = bds_ephemeris.idot;
  bds_ephemeris_msg.cuc = bds_ephemeris.cuc;
  bds_ephemeris_msg.cus = bds_ephemeris.cus;
  bds_ephemeris_msg.crc = bds_ephemeris.crc;
  bds_ephemeris_msg.crs = bds_ephemeris.crs;
  bds_ephemeris_msg.cic = bds_ephemeris.cic;
  bds_ephemeris_msg.cis = bds_ephemeris.cis;

  pub_bdsephemeris.publish(bds_ephemeris_msg);
}
static inline void handleHeadingPacket(const Heading& heading,  const LongHeader& long_header, 
    ros::Publisher &pub_heading, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::Headingb heading_msg;
  if(msg_seq < UINT16_MAX){
    heading_msg.header.seq = msg_seq++;
  }
  else {
    heading_msg.header.seq = 0;
    msg_seq = 0;
  }
  heading_msg.header.stamp = ros::Time::now();
  heading_msg.header.frame_id = frame_id;

  std::memcpy(&heading_msg.long_header, &long_header, sizeof(long_header));
  heading_msg.solution_status = static_cast<uint32_t>(heading.solution_status) && 0xFF;
  heading_msg.position_type = static_cast<uint32_t>(heading.position_type) && 0xFF;
  heading_msg.length = heading.length;
  heading_msg.heading = heading.heading;
  heading_msg.pitch = heading.pitch;
  heading_msg.reserved = heading.reserved;          //reserved
  heading_msg.heading_std_dev = heading.heading_std_dev;
  heading_msg.pitch_std_dev = heading.pitch_std_dev;
  heading_msg.station_id = heading.station_id;     //char[] to string
  heading_msg.num_sats_tracked = heading.num_sats_tracked;
  heading_msg.num_sats_in_solution = heading.num_sats_in_solution;
  heading_msg.num_sats_ele = heading.num_sats_ele;
  heading_msg.num_sats_l2 = heading.num_sats_l2;
  heading_msg.solution_source = heading.solution_source;
  heading_msg.extended_solution_status = heading.extended_solution_status;
  heading_msg.galileo_beidou_sig_mask = heading.galileo_beidou_sig_mask;
  heading_msg.gps_glonass_sig_mask = heading.gps_glonass_sig_mask;

  pub_heading.publish(heading_msg);
}

static inline void handleVelPacket(const BestVel& best_vel,  const LongHeader& long_header, 
    ros::Publisher &pub_vel, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::BestVelb vel_msg;
  if(msg_seq < UINT16_MAX){
    vel_msg.header.seq = msg_seq++;
  }
  else {
    vel_msg.header.seq = 0;
    msg_seq = 0;
  }
  vel_msg.header.stamp = ros::Time::now();
  vel_msg.header.frame_id = frame_id;

  std::memcpy(&vel_msg.long_header, &long_header, sizeof(long_header));
  vel_msg.solution_status = static_cast<uint32_t>(best_vel.solution_status) && 0xFF;
  vel_msg.velocity_type = static_cast<uint32_t>(best_vel.velocity_type) && 0xFF;
  vel_msg.latency = best_vel.latency;
  vel_msg.age = best_vel.age;
  vel_msg.horizontal_speed = best_vel.horizontal_speed;
  vel_msg.track_over_ground = best_vel.track_over_ground;
  vel_msg.vertical_speed = best_vel.vertical_speed;
  vel_msg.reserved = best_vel.reserved;

  pub_vel.publish(vel_msg);
}

int find_header232(const int buf_index, const int size){   
      //ROS_INFO_STREAM("buf_index and size is " << buf_index <<", " << size);  
      for(int i = buf_index; i < size  - 2; i++){
        if(gnss_buffer232[i] == 0xAA &&
	         gnss_buffer232[i+1] == 0x44 &&
	         gnss_buffer232[i+2] == 0x12)
           return i;
      }    
      return -1;
}

int find_header422(const int buf_index, const int size){   
      //ROS_INFO_STREAM("buf_index and size is " << buf_index <<", " << size);  
      for(int i = buf_index; i < size  - 2; i++){
        if(gnss_buffer422[i] == 0xAA &&
	         gnss_buffer422[i+1] == 0x44 &&
	         gnss_buffer422[i+2] == 0x12)
           return i;
      }    
      return -1;
}

//for CRC check start
// CRC algorithm from the NovAtel document.
inline uint32_t crc32_word(uint32_t word) {
  for (int j = 0; j < 8; ++j) {
    if (word & 1) {
      word = (word >> 1) ^ 0xEDB88320;
    } else {
      word >>= 1;
    }
  }
  return word;
}

inline uint32_t crc32_block(const uint8_t* buffer, size_t length) {
  uint32_t word = 0;
  while (length--) {
    uint32_t t1 = (word >> 8) & 0xFFFFFF;
    uint32_t t2 = crc32_word((word ^ *buffer++) & 0xFF);
    word = t1 ^ t2;
  }
  return word;
}

bool check_crc(uint8_t * buffer, const size_t length) {
  bool result = (crc32_block(buffer, length) ==
         *reinterpret_cast<uint32_t*>(buffer + length));
  if(!result){
    ROS_WARN_STREAM("[huace] crc32_block(buffer, length) is " << (int)crc32_block(buffer, length) << 
       ", and CRC_BYTES is " << (int)*reinterpret_cast<uint32_t*>(buffer + length));
  }
  return result;
}
//for CRC check end

//RS422
void receive_novatel422(void)
{
  int buf_index = 0; 
  int remain_len = 0;   // = gnss_buffer_size-buf_index; 
  int size = 0;
  int restart_flag = 1;
  int break_while =0;
  bool break_ros = true;

  while (ros::ok())
  {
	ros::Rate loop_rate(loop_rate_launch422);          
        if(!break_ros){          
          break;
        }

    size = serial_port422.receive_data(&gnss_buffer422[remain_len], gnss_buffer_size); 
    if (size <= 0){
      // ROS_INFO("[HUACE] RS422 receive no data.");
      usleep(1000);
      continue;
    } 
    // ROS_INFO_STREAM("[HUACA] size  is " << size);
    buf_index = 0;
    int total_size = size + remain_len;

    //ROS_INFO_STREAM("[HUACA] loop rate is " << loop_rate_launch422);
    while((buf_index < total_size) && (buf_index != -1))
    {      
      if(break_while == 1){
        break_while = 0;
        break;  
      }

      remain_len = total_size - buf_index;
      //ROS_INFO_STREAM("[HUACA] remain_len and total_size is " << remain_len 
      //  <<", " <<total_size);

      LongHeader long_header;          
      RawImu raw_imu;
      InsPva ins_pva;
      Heading heading;
      BestPos best_pos;
      Range range_obj;
      GPS_Ephemeris gps_ephemeris;
      GLO_Ephemeris glo_ephemeris;
      BDS_Ephemeris bds_ephemeris;
      BestVel best_vel;

      if(remain_len < sizeof(long_header) + sizeof(raw_imu) + CRC_length){       //< minimum data length : maybe zero
        //ROS_INFO_STREAM("[HUACA] buffer_index , remain_len 1111, " << buf_index << ", " <<remain_len);
        std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
        restart_flag = 0;
        break;
      }

      // ROS_INFO_STREAM("[HUACA] find_header422 begining from " << (int)gnss_buffer422[buf_index] << ", " 
      //     << (int)gnss_buffer422[buf_index + 1] << ", " 
      //     << (int)gnss_buffer422[buf_index + 2] << ", "
      //     << (int)gnss_buffer422[buf_index + 3] << ", "
      //     << (int)gnss_buffer422[buf_index + 4] << ", "
      //     << (int)gnss_buffer422[buf_index + 5] << ", "
      //     << (int)gnss_buffer422[buf_index + 6] << ". "
      //     <<buf_index );
      buf_index = find_header422(buf_index , total_size);
      if(buf_index < 0) {         // || buf_index >= total_size) {
        ROS_INFO_STREAM("[HUACE] buf_index is " << buf_index);
        // break_while = 1;
        break;
      }
      //ROS_INFO_STREAM("[HUACA] return buf_index " << buf_index);

      remain_len = total_size - buf_index; 
      if(remain_len < sizeof(long_header) + sizeof(raw_imu) + CRC_length){       //< minimum data length : maybe zero
        ROS_INFO_STREAM("[HUACA] buffer_index , remain_len 11112, " << buf_index << ", " <<remain_len);
        std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
        restart_flag = 0;
        break;
      }

      std::memcpy(&long_header, &gnss_buffer422[buf_index], sizeof(long_header));    
      uint16_t message_id =  long_header.message_id;
     // ROS_INFO_STREAM("[HUACA] message_id " << (int)(message_id));

      switch(static_cast<int>(message_id)){
        case MessageId::RAWIMU:		//68+5 = 73   bytes and ID:268
        {
	        // ROS_INFO("[HUACA] RAWIMU");
          std::memcpy(&raw_imu, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(raw_imu));
          //check the CRC checksum of data stream
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(raw_imu))){
            handleRawImuPacket(raw_imu, long_header, pub_rawimu, frame_id);
          }
          buf_index += (sizeof(long_header) + sizeof(raw_imu) + CRC_length);        
          remain_len = total_size - buf_index; 
          // ROS_INFO_STREAM("[HUACA] buf_index is and remain_len RAWIMU is " 
          //  << buf_index <<", " << remain_len);
          break;
        }

        case MessageId::HEADING:	//72 + 4 bytes and ID : 971
        {
	        // ROS_INFO("[HUACA] HEADING");
          if(remain_len < sizeof(heading) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
        //  ROS_INFO_STREAM("[gnss_huace] HEADING"); 
          std::memcpy(&heading, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(heading));
          //check the CRC checksum of data stream
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(heading))){
            handleHeadingPacket(heading, long_header, pub_heading, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(heading) + CRC_length);
          remain_len = total_size - buf_index; 
          //ROS_INFO_STREAM("[HUACA] buf_index is and remain_len HEADING is " << buf_index <<", " << remain_len);  
          break;          
        }     

        case MessageId::BESTGNSSPOS:
        {
          ROS_INFO("[HUACA] BESTGNSSPOS");
          if(remain_len < sizeof(best_pos) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
          std::memcpy(&best_pos, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(best_pos));
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(best_pos))){
            handlePosPacket(best_pos, long_header, pub_pos, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(best_pos) + CRC_length);
          remain_len = total_size - buf_index; 
          break; 
        }
    
      //TODO list : 
        case MessageId::RANGE:        //TODO::wait for the protocal
        {
          ROS_INFO("[HUACA] RANGE and jump out. ");
          buf_index += (sizeof(long_header) + CRC_length);
/*          Range range_obj;

	        int length_of_range_in = sizeof(Range_In);
          int range_in_num = (size - 4) / length_of_range_in;  

          std::memcpy(&range_obj, &gnss_buffer[sizeof(long_header)], sizeof(range_obj.obs_num));
          Range_In range_in_temp;
          for(int i = 0; i< range_in_num; i++){
            std::memcpy(&range_in_temp, &gnss_buffer[sizeof(long_header) + sizeof(range_obj.obs_num) + ( i * length_of_range_in)], 
              length_of_range_in);
            range_obj.range_ins.push_back(range_in_temp);
          }          
          handleRangePacket(range_obj, long_header, pub_range, frame_id);
          break;       */
        }

        case MessageId::GPSEPHEMERIS:
        {
          ROS_INFO("[HUACA] GPSEPHEMERIS");
          if(remain_len < sizeof(gps_ephemeris) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
          std::memcpy(&gps_ephemeris, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(gps_ephemeris));
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(gps_ephemeris))){
            handleGPSEphemerisPacket(gps_ephemeris, long_header, pub_gpsephemeris, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(gps_ephemeris) + CRC_length);
          remain_len = total_size - buf_index; 
          break; 
        }

        case MessageId::GLOEPHEMERIS:
        {
          ROS_INFO("[HUACA] GLOEPHEMERIS");
          if(remain_len < sizeof(glo_ephemeris) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
          std::memcpy(&glo_ephemeris, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(glo_ephemeris));
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(glo_ephemeris))){
            handleGLOEphemerisPacket(glo_ephemeris, long_header, pub_gloephemeris, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(glo_ephemeris) + CRC_length);
          remain_len = total_size - buf_index; 
          break; 
        }

        case MessageId::BDSEPHEMERIS:
        {
          ROS_INFO("[HUACA] BDSEPHEMERIS");
          if(remain_len < sizeof(bds_ephemeris) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
          std::memcpy(&bds_ephemeris, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(bds_ephemeris));
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(bds_ephemeris))){
            handleBDSEphemerisPacket(bds_ephemeris, long_header, pub_bdsephemeris, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(bds_ephemeris) + CRC_length);
          remain_len = total_size - buf_index; 
          break; 
        }

        case MessageId::BESTVEL:
        {
          ROS_INFO("[HUACA] BESTVEL");
          if(remain_len < sizeof(best_vel) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer422[0], &gnss_buffer422[buf_index], remain_len);
            restart_flag = 0;
            break_while = 1;
	          break;
          }          
          std::memcpy(&best_vel, &gnss_buffer422[buf_index + sizeof(long_header)], sizeof(best_vel));
          if(check_crc(&gnss_buffer422[buf_index], sizeof(long_header) + sizeof(best_vel))){
            handleVelPacket(best_vel, long_header, pub_vel, frame_id);
          }           
          buf_index += (sizeof(long_header) + sizeof(best_vel) + CRC_length);
          remain_len = total_size - buf_index; 
          break;         
        }

        default:
          break;
      }     //end of switch
      ros::spinOnce();
      loop_rate.sleep();
    }   // end of inner while
  }     //end of while ros.ok
}     //end of receive_novatel422(void)

void receive_novatel232(drivers::gnss::SerialPortObject &serial_port232, ros::Publisher& pub_inspva)
{
  int buf_index = 0; 
  int remain_len = 0;   // = gnss_buffer_size-buf_index; 
  int size = 0;
  int restart_flag = 1;
  int break_while =0;
  bool break_ros = true;

  while (ros::ok())
  {
	ros::Rate loop_rate(loop_rate_launch232);          
        if(!break_ros){          
          break;
        }

    size = serial_port232.receive_data(&gnss_buffer232[remain_len], gnss_buffer_size); 
    if (size <= 0){
      // ROS_INFO("[HUACE] RS232 receive no data.");
      usleep(1000);
      continue;
    }
    //ROS_INFO_STREAM("[HUACA] size  is " << size);
    //continue;
    /*for(int i = 0; i < size; i++){
      ROS_INFO_STREAM("[HUACA] gnss_buffer232[remain_len] " << (int)gnss_buffer232[i]);
    }*/
    buf_index = 0;
    int total_size = size + remain_len;

    //ROS_INFO_STREAM("[HUACA] loop rate is " << loop_rate_launch232);
    while((buf_index < total_size) && (buf_index != -1))
    {      
      if(break_while == 1){
        break_while = 0;
        break;  
      }

      remain_len = total_size - buf_index;
      //ROS_INFO_STREAM("[HUACA] remain_len and total_size is " << remain_len 
      //  <<", " <<total_size);

      LongHeader long_header;          
      RawImu raw_imu;
      InsPva ins_pva;
      Heading heading;
      BestPos best_pos;
      Range range_obj;
      GPS_Ephemeris gps_ephemeris;
      GLO_Ephemeris glo_ephemeris;
      BDS_Ephemeris bds_ephemeris;
      BestVel best_vel;

      if(remain_len < sizeof(long_header) + sizeof(ins_pva) + CRC_length){       //< minimum data length : maybe zero
        //ROS_INFO_STREAM("[HUACA] buffer_index , remain_len 1111, " << buf_index << ", " <<remain_len);
        std::memcpy(&gnss_buffer232[0], &gnss_buffer232[buf_index], remain_len);
        restart_flag = 0;
        break;
      }

      // ROS_INFO_STREAM("[HUACA] find_header232 begining from " << (int)gnss_buffer232[buf_index] << ", " 
      //     << (int)gnss_buffer232[buf_index + 1] << ", " 
      //     << (int)gnss_buffer232[buf_index + 2] << ", "
      //     << (int)gnss_buffer232[buf_index + 3] << ", "
      //     << (int)gnss_buffer232[buf_index + 4] << ", "
      //     << (int)gnss_buffer232[buf_index + 5] << ", "
      //     << (int)gnss_buffer232[buf_index + 6] << ". "
      //     <<buf_index );
      buf_index = find_header232(buf_index , total_size);
      if(buf_index < 0) {         // || buf_index >= total_size) {
        ROS_INFO_STREAM("[HUACE] buf_index is " << buf_index);
        // break_while = 1;
        break;
      }
      //ROS_INFO_STREAM("[HUACA] return buf_index " << buf_index);

      remain_len = total_size - buf_index; 
      if(remain_len < sizeof(long_header) + sizeof(ins_pva) + CRC_length){       //< minimum data length : maybe zero
        ROS_INFO_STREAM("[HUACA] buffer_index , remain_len 11112, " << buf_index << ", " <<remain_len);
        std::memcpy(&gnss_buffer232[0], &gnss_buffer232[buf_index], remain_len);
        restart_flag = 0;
        break;
      }

      std::memcpy(&long_header, &gnss_buffer232[buf_index], sizeof(long_header));    
      uint16_t message_id =  long_header.message_id;
     // ROS_INFO_STREAM("[HUACA] message_id " << (int)(message_id));

      switch(static_cast<int>(message_id)){
        
        case MessageId::INSPVA:		//116+5=121    bytes and ID:705
        {
	    //    ROS_INFO("[HUACA] INSPVA");
          if(remain_len < sizeof(ins_pva) + sizeof(long_header) + CRC_length){
            std::memcpy(&gnss_buffer232[0], &gnss_buffer232[buf_index], remain_len);
            restart_flag = 0;
	          break_while = 1;
            break;
          }          
        //  ROS_INFO_STREAM("[gnss_huace] INSPVA");   
          std::memcpy(&ins_pva, &gnss_buffer232[buf_index + sizeof(long_header)], sizeof(ins_pva));
          //check the CRC checksum of data stream
          if(check_crc(&gnss_buffer232[buf_index], sizeof(long_header) + sizeof(ins_pva))){
            handleInsPvaPacket(ins_pva, long_header, pub_inspva, frame_id);
          }          
          buf_index += (sizeof(long_header) + sizeof(ins_pva) + CRC_length);
          remain_len = total_size - buf_index; 
          //ROS_INFO_STREAM("[HUACA] buf_index is and remain_len INSPVA is " << buf_index <<", " << remain_len);  
          break;          
        }
        default:
          break;
      }     //end of switch
      ros::spinOnce();
      loop_rate.sleep();
    }   // end of inner while
  }     //end of while ros.ok
}     //end of receive_novatel232(serial_port232, pub_inspva)

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gnss_node");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  priv_nh.param("loop_rate232", loop_rate_launch232);
  ROS_INFO_STREAM("[GNSS-huace] loop_rate_launch232 is " << loop_rate_launch232);
  priv_nh.param("loop_rate422", loop_rate_launch422);
  ROS_INFO_STREAM("[GNSS-huace] loop_rate_launch422 is " << loop_rate_launch422);
  priv_nh.param("debug", debug);
  ROS_INFO_STREAM("[GNSS-huace] debug is " << debug);

  int baud_rate = 460800;      //RS232 baud rate
  priv_nh.param("baud_rate", baud_rate);
  int nBits = 8;                //TODO : stop bit?
  priv_nh.getParam("nBits", nBits);  
  std::string nEvent_str = "N";        //parity bit
  priv_nh.getParam("nEvent", nEvent_str);
  char nEvent = nEvent_str[0];
  int nStop = 1;              //stop bit
  priv_nh.getParam("nStop", nStop); 
  priv_nh.getParam("frame_id", frame_id);
  std::string frame_id_vel = "utm";
  priv_nh.getParam("frame_id_vel", frame_id_vel);
  //initialization finish

//RS232 for novatel
  drivers::gnss::SerialPortObject serial_port232;
  if (serial_port232.open_port(1) == -1) {       //1: RS232; 2: RS422
    ROS_ERROR("[GNSS - huace cgi]Serial port RS232 open error.");
  }
  serial_port232.set_opt(baud_rate, nBits, nEvent, nStop);  //波特率，停止位，奇偶校验位，停止位

//RS422 for novatel
  if (serial_port422.open_port(2) == -1) {       //1: RS232; 2: RS422
    ROS_ERROR("[GNSS - huace cgi]Serial port RS422 open error.");
  }
  ROS_INFO("[GNSS - huace cgi] open port seccessful.");
  serial_port422.set_opt(baud_rate, nBits, nEvent, nStop);  //波特率，停止位，奇偶校验位，停止位

  ROS_INFO_STREAM("[GNSS - huace cgi] baud_rate is " << baud_rate << " and nBits is "
	<< nBits << " and nEvent is " << nEvent << " and nStop is " << nStop);

  // pub_gpchc = node.advertise<novatel_gnss_msgs::GpChc>("gnss_huace/gpchc", 2);    //msg data
  pub_rawimu = node.advertise<novatel_gnss_msgs::RawImu>("gnss/rawimu", 50);   //100Hz
  ros::Publisher pub_inspva = node.advertise<novatel_gnss_msgs::InsPva>("gnss/inspva", 50);       //100Hz
  pub_heading = node.advertise<novatel_gnss_msgs::Headingb>("gnss/headingb", 3); //1Hz

  pub_pos = node.advertise<novatel_gnss_msgs::BestPosb>("gnss/bestposb", 10);    //1Hz
  pub_range = node.advertise<novatel_gnss_msgs::Range>("gnss/range", 10);                  //1/2Hz but large data
  pub_gpsephemeris = node.advertise<novatel_gnss_msgs::GpsEphemeris>("gnss/gpsephemeris", 10);   //60s
  pub_gloephemeris = node.advertise<novatel_gnss_msgs::GloEphemeris>("gnss/gloephemeris", 10);      //60s
  pub_bdsephemeris = node.advertise<novatel_gnss_msgs::BdsEphemeris>("gnss/bdsephemeris", 10);    //60s
  pub_vel = node.advertise<novatel_gnss_msgs::BestVelb>("gnss/bestvelb", 10);          //no this protocal up to now

//for RS422 part
  boost::shared_ptr<boost::thread> receive_novatel422_thread = 
      boost::shared_ptr<boost::thread>(new boost::thread(&receive_novatel422));

//for RS232 part
  receive_novatel232(serial_port232, pub_inspva);
  // receive_novatel232(serial_port232, pub_inspva);
  return 0;
}     //end of main
