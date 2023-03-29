/**
 * @file node.cpp
 * @brief GNSS newton_m2 node : initial, start and run.
 * @author yafei.sun@novauto.com.cn
 * @version 0.0.1
 * @date 2020-04-01
 */

#include <ros/ros.h>
#include <novatel_gnss_msgs/BdsEphemeris.h>                         // ROS messages
#include <novatel_gnss_msgs/BestPosb.h>
#include <novatel_gnss_msgs/BestVelb.h>
#include <novatel_gnss_msgs/GloEphemeris.h>
#include <novatel_gnss_msgs/GpsEphemeris.h>
#include <novatel_gnss_msgs/Headingb.h>
#include <novatel_gnss_msgs/InsPva.h>
#include <novatel_gnss_msgs/Range.h>
#include <novatel_gnss_msgs/RawImu.h>
#include <novatel_gnss_msgs/CorrImuDada.h>
#include <novatel_gnss_msgs/Heading2b.h>
#include <novatel_gnss_msgs/InsPvax.h>
#include "dispatch.h"                                                                     // Packet structure
#include <arpa/inet.h>                                                                  // Ethernet
#include "boost_udp.h"                                                                //for GNSS

#include <sys/stat.h>
#include <string>

// UINT16_MAX is not defined by default in Ubuntu Saucy
#ifndef UINT16_MAX
#define UINT16_MAX (65535)
#endif

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

static inline void handleCorrImuDataPacket(const CorrImuData& corr_imu, const LongHeader& long_header, 
    ros::Publisher &pub_corrimudata, const std::string frame_id){

  static int msg_seq = 0;
  novatel_gnss_msgs::CorrImuDada corr_imu_msg;
  if(msg_seq < UINT16_MAX){
    corr_imu_msg.header.seq = msg_seq++;
  }
  else {
    corr_imu_msg.header.seq = 0;
    msg_seq = 0;
  }
  corr_imu_msg.header.stamp = ros::Time::now();
  corr_imu_msg.header.frame_id = frame_id;

  std::memcpy(&corr_imu_msg.long_header, &long_header, sizeof(long_header));

  corr_imu_msg.gps_week = corr_imu.gps_week;
  corr_imu_msg.gps_seconds = corr_imu.gps_seconds;

  corr_imu_msg.z_velocity_change = corr_imu.z_velocity_change;
  corr_imu_msg.y_velocity_change = corr_imu.y_velocity_change;
  corr_imu_msg.x_velocity_change = corr_imu.x_velocity_change;
  corr_imu_msg.z_angle_change = corr_imu.z_angle_change;
  corr_imu_msg.y_angle_change = corr_imu.y_angle_change;     //char[] to string
  corr_imu_msg.x_angle_change = corr_imu.x_angle_change;

  pub_corrimudata.publish(corr_imu_msg);
}

static inline void handleInsPvaPacket(const InsPva& ins_pva,  const LongHeader& long_header, 
    ros::Publisher &pub_inspva, const std::string frame_id){

  //ROS_INFO("[GNSS_M2]INSPVA handle start");  
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
  // ROS_INFO_STREAM("[GNSS_M2]INSPVA header stamp is " << std::to_string(ins_pva_msg.header.stamp.toSec()));  
  ins_pva_msg.header.frame_id = frame_id;

  //ROS_INFO("[GNSS_M2]INSPVA handle before memcpy long_header");  
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
  //ROS_INFO("[GNSS_M2]INSPVA handle before pub_inspva");
  pub_inspva.publish(ins_pva_msg);
}

static inline void handleInsPvaxPacket(const InsPvax& ins_pvax,  const LongHeader& long_header, 
    ros::Publisher &pub_inspvax, const std::string frame_id){

  //ROS_INFO("[GNSS_M2]INSPVA handle start");  
  static int msg_seq = 0;
  novatel_gnss_msgs::InsPvax ins_pvax_msg;
  if(msg_seq < UINT16_MAX){
    ins_pvax_msg.header.seq = msg_seq++;
  }
  else {
    ins_pvax_msg.header.seq = 0;
    msg_seq = 0;
  }
  ins_pvax_msg.header.stamp = ros::Time::now();
  // ROS_INFO_STREAM("[GNSS_M2]INSPVA header stamp is " << std::to_string(ins_pvax_msg.header.stamp.toSec()));  
  ins_pvax_msg.header.frame_id = frame_id;

  //ROS_INFO("[GNSS_M2]INSPVA handle before memcpy long_header");  
  std::memcpy(&ins_pvax_msg.long_header, &long_header, sizeof(long_header));

  ins_pvax_msg.ins_status = ins_pvax.ins_status;
  ins_pvax_msg.pos_type = ins_pvax.pos_type;
  ins_pvax_msg.latitude = ins_pvax.latitude;
  ins_pvax_msg.longitude = ins_pvax.longitude;
  ins_pvax_msg.height = ins_pvax.height;
  ins_pvax_msg.undulation = ins_pvax.undulation;
  
  ins_pvax_msg.north_velocity = ins_pvax.north_velocity;
  ins_pvax_msg.east_velocity = ins_pvax.east_velocity;
  ins_pvax_msg.up_velocity = ins_pvax.up_velocity;
  ins_pvax_msg.roll = ins_pvax.roll;
  ins_pvax_msg.pitch = ins_pvax.pitch;
  ins_pvax_msg.azimuth = ins_pvax.azimuth;

  ins_pvax_msg.latitude_std = ins_pvax.latitude_std;
  ins_pvax_msg.longitude_std = ins_pvax.longitude_std;
  ins_pvax_msg.height_std = ins_pvax.height_std;
  ins_pvax_msg.north_velocity_std = ins_pvax.north_velocity_std;
  ins_pvax_msg.east_velocity_std = ins_pvax.east_velocity_std;
  ins_pvax_msg.up_velocity_std = ins_pvax.up_velocity_std;

  ins_pvax_msg.roll_std = ins_pvax.roll_std;
  ins_pvax_msg.pitch_std = ins_pvax.pitch_std;
  ins_pvax_msg.azimuth_std = ins_pvax.azimuth_std;
  ins_pvax_msg.ext_slo_stat = ins_pvax.ext_slo_stat;
  ins_pvax_msg.elapsed_time = ins_pvax.elapsed_time;
  //ROS_INFO("[GNSS_M2]INSPVA handle before pub_inspva");
  pub_inspvax.publish(ins_pvax_msg);
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
  //printf("handlePosPacket\n");
  //pos_msg.solution_status = static_cast<uint32_t>(best_pos.solution_status) && 0xFF;
  //pos_msg.position_type = static_cast<uint32_t>(best_pos.position_type) && 0xFF;     
  pos_msg.solution_status =  static_cast<uint32_t>(best_pos.solution_status) ;
  pos_msg.position_type =  static_cast<uint32_t>(best_pos.position_type) ;     
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

static inline void handleHeading2Packet(const Heading2& heading2,  const LongHeader& long_header, 
    ros::Publisher &pub_heading2, const std::string frame_id){
  static int msg_seq = 0;
  novatel_gnss_msgs::Heading2b heading2_msg;
  if(msg_seq < UINT16_MAX){
    heading2_msg.header.seq = msg_seq++;
  }
  else {
    heading2_msg.header.seq = 0;
    msg_seq = 0;
  }
  heading2_msg.header.stamp = ros::Time::now();
  heading2_msg.header.frame_id = frame_id;

  std::memcpy(&heading2_msg.long_header, &long_header, sizeof(long_header));
  heading2_msg.solution_status = static_cast<uint32_t>(heading2.solution_status) && 0xFF;
  heading2_msg.position_type = static_cast<uint32_t>(heading2.position_type) && 0xFF;
  heading2_msg.length = heading2.length;
  heading2_msg.heading = heading2.heading;
  heading2_msg.pitch = heading2.pitch;
  heading2_msg.reserved = heading2.reserved;          //reserved
  heading2_msg.heading_std_dev = heading2.heading_std_dev;
  heading2_msg.pitch_std_dev = heading2.pitch_std_dev;
  heading2_msg.rover_station_id = heading2.rover_station_id;
  heading2_msg.master_station_id = heading2.master_station_id;
  heading2_msg.num_sats_tracked = heading2.num_sats_tracked;
  heading2_msg.num_sats_in_solution = heading2.num_sats_in_solution;
  heading2_msg.num_sats_ele = heading2.num_sats_ele;
  heading2_msg.num_sats_l2 = heading2.num_sats_l2;
  heading2_msg.solution_source = heading2.solution_source;
  heading2_msg.extended_solution_status = heading2.extended_solution_status;
  heading2_msg.galileo_beidou_sig_mask = heading2.galileo_beidou_sig_mask;
  heading2_msg.gps_glonass_sig_mask = heading2.gps_glonass_sig_mask;

  pub_heading2.publish(heading2_msg);
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


int main(int argc, char **argv)
{
  ros::init(argc, argv, "m2_gnss_node");
  ros::NodeHandle node;
  ros::NodeHandle priv_nh("~");

  std::string gnss_device_name = "/dev/newton_m2";
  node.param("gnss_device", gnss_device_name, std::string("/dev/newton_m2"));

  std::string interface = "";
  priv_nh.getParam("interface", interface);

  std::string host_address = "192.168.110.50";       //can be set by $cmd,set,localip,192,168,0,11*ff
  priv_nh.getParam("host_address", host_address);

  int host_port = 7000;    //net0:7000 net1:7001
  priv_nh.getParam("host_port", host_port);

  std::string target_address = "192.168.110.61";       //can be set by $cmd,set,localip,192,168,0,11*ff
  priv_nh.getParam("target_address", target_address);

  int target_port = 8000;    //net:8000 and 8001
  priv_nh.getParam("target_port", target_port);

  std::string frame_id = "gnss";
  priv_nh.getParam("frame_id", frame_id);

  std::string frame_id_vel = "utm";
  priv_nh.getParam("frame_id_vel", frame_id_vel);

  if (host_port > UINT16_MAX) {
    ROS_ERROR("Host port %u greater than maximum value of %u", host_port, UINT16_MAX);
  }

  if (target_port > UINT16_MAX) {
    ROS_ERROR("Target port %u greater than maximum value of %u", target_port, UINT16_MAX);
  }

  boost::asio::io_service io_service;
  drivers::gnss::BoostUdp* boost_udp_;
  drivers::gnss::BoostUdp* boost_udp = new drivers::gnss::BoostUdp(io_service,
      host_address, host_port, target_address, target_port);
  boost_udp_ = boost_udp;
  boost_udp_->start_sock();
  //ROS_INFO("[GNSS_M2]start socket finish. ");

  ros::Publisher pub_rawimu = node.advertise<novatel_gnss_msgs::RawImu>("gnss/rawimu", 2);
  ros::Publisher pub_corrimudata = node.advertise<novatel_gnss_msgs::CorrImuDada>("gnss/corr_imu_data", 2);
  ros::Publisher pub_inspva = node.advertise<novatel_gnss_msgs::InsPva>("gnss/inspva", 2);
  ros::Publisher pub_inspvax = node.advertise<novatel_gnss_msgs::InsPvax>("gnss/inspvax", 2);
  ros::Publisher pub_pos = node.advertise<novatel_gnss_msgs::BestPosb>("gnss/bestposb", 2);
  ros::Publisher pub_range = node.advertise<novatel_gnss_msgs::Range>("gnss/range", 2);
  ros::Publisher pub_gpsephemeris = node.advertise<novatel_gnss_msgs::GpsEphemeris>("gnss/gpsephemeris", 2);
  ros::Publisher pub_gloephemeris = node.advertise<novatel_gnss_msgs::GloEphemeris>("gnss/gloephemeris", 2);
  ros::Publisher pub_bdsephemeris = node.advertise<novatel_gnss_msgs::BdsEphemeris>("gnss/bdsephemeris", 2);
  ros::Publisher pub_heading = node.advertise<novatel_gnss_msgs::Headingb>("gnss/headingb", 2);
  ros::Publisher pub_heading2 = node.advertise<novatel_gnss_msgs::Heading2b>("gnss/heading2b", 2);
  ros::Publisher pub_vel = node.advertise<novatel_gnss_msgs::BestVelb>("gnss/bestvelb", 2);

  uint8_t gnss_buffer[2048];
  //ROS_INFO_STREAM("[GNSS_M2]before enter while cycle and ros.ok is " << (int)ros::ok());
  // Loop until shutdown
  while (ros::ok()) {
      ros::Rate loop_rate(500);
      // ROS_INFO("[GNSS-M2] in ros ok cycle");
      size_t size = boost_udp_->receive_data(gnss_buffer);      //receive data and store in gnss_buffer.
        //ROS_INFO_STREAM("[GNSS_M2]receive data length is " << (int)size);                
      if((int)size <= 0){
        ROS_INFO_STREAM("[GNSS_M2]receive data length is " << (int)size);
        continue;
      }
      else if((int)size >= 1024){
	      //ROS_INFO_STREAM("[GNSS_M2]receive data length is " << (int)size);
      }
      // ROS_INFO_STREAM("[GNSS_M2]receive data first three are " 
          // <<(int)gnss_buffer[0] << ", " <<(int)gnss_buffer[1] << ", "<<(int)gnss_buffer[2]);

      LongHeader long_header;
      std::memcpy(&long_header, &gnss_buffer, sizeof(long_header));       //TODO: check if it will work
      uint16_t message_id =  long_header.message_id;
      if((int)message_id != MessageId::RAWIMU && (int)message_id != MessageId::INSPVA){
	     //ROS_INFO_STREAM("[GNSS_M2]receive data message_id is " << (int)message_id);
      }
      switch(static_cast<int>(message_id)){
        case MessageId::RAWIMU:
        {
          RawImu raw_imu;
          std::memcpy(&raw_imu, &gnss_buffer[sizeof(long_header)], sizeof(raw_imu));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(raw_imu))){
            handleRawImuPacket(raw_imu, long_header, pub_rawimu, frame_id);}
          break;
        }

        case MessageId::CORRIMUDATA:
        {
          CorrImuData corr_imu_data;
          std::memcpy(&corr_imu_data, &gnss_buffer[sizeof(long_header)], sizeof(corr_imu_data));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(corr_imu_data))){
            handleCorrImuDataPacket(corr_imu_data, long_header, pub_corrimudata, frame_id);}
          break;
        }

        case MessageId::INSPVA:
        {
          InsPva ins_pva;
	  //ROS_INFO_STREAM("[GNSS_M2]INSPVA sizeof(ins_pva) is " << sizeof(ins_pva) 
		//<< ", and size of long_header is " << sizeof(long_header));
	  //ROS_INFO("[GNSS_M2] INSPVA");
          std::memcpy(&ins_pva, &gnss_buffer[sizeof(long_header)], sizeof(ins_pva));
	  //ROS_INFO("[GNSS_M2]INSPVA after memcpy");
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(ins_pva))){
            handleInsPvaPacket(ins_pva, long_header, pub_inspva, frame_id);}
	  //ROS_INFO("[GNSS_M2]INSPVA after handle");

          break;          
        }

        case MessageId::INSPVAX:
        {
          InsPvax ins_pvax;
	  //ROS_INFO_STREAM("[GNSS_M2]INSPVA sizeof(ins_pva) is " << sizeof(ins_pva) 
		//<< ", and size of long_header is " << sizeof(long_header));
	  //ROS_INFO("[GNSS_M2] INSPVA");
          std::memcpy(&ins_pvax, &gnss_buffer[sizeof(long_header)], sizeof(ins_pvax));
	  //ROS_INFO("[GNSS_M2]INSPVA after memcpy");
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(ins_pvax))){
            handleInsPvaxPacket(ins_pvax, long_header, pub_inspvax, frame_id);}
	  //ROS_INFO("[GNSS_M2]INSPVA after handle");
          break;          
        }

        // case MessageId::BESTGNSSPOS:
        case MessageId::BESTPOS:
        {
          BestPos best_pos;
          std::memcpy(&best_pos, &gnss_buffer[sizeof(long_header)], sizeof(best_pos));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(best_pos))){
            handlePosPacket(best_pos, long_header, pub_pos, frame_id);
          }
	        break; }

        case MessageId::RANGE:        //TODO::wait for the protocal
        {
          Range range_obj;
          //ROS_INFO_STREAM("[GNSS_M2]receive data length is " << (int)size <<
          //	", and message_id is " << (int)message_id);    
          //ROS_INFO_STREAM("[GNSS_M2]RANGE sizeof(range_obj) is " << sizeof(range_obj) 
          //<< ", and size of long_header is " << sizeof(long_header));
          //break;
	        int length_of_range_in = sizeof(Range_In);
          int range_in_num = (size - 4) / length_of_range_in;  

          std::memcpy(&range_obj, &gnss_buffer[sizeof(long_header)], sizeof(range_obj.obs_num));
          //ROS_INFO_STREAM("[GNSS-M2] range in number is " << range_in_num);
          Range_In range_in_temp;
          for(int i = 0; i< range_in_num; i++){
            std::memcpy(&range_in_temp, &gnss_buffer[sizeof(long_header) + sizeof(range_obj.obs_num) + ( i * length_of_range_in)], 
              length_of_range_in);
            range_obj.range_ins.push_back(range_in_temp);
          }          
	        //ROS_INFO("[GNSS_M2]RANGE after memcpy");
          handleRangePacket(range_obj, long_header, pub_range, frame_id);
	        //ROS_INFO("[GNSS_M2]RANGE after handle");
          break;       
        }

        case MessageId::GPSEPHEMERIS:
        {
          GPS_Ephemeris gps_ephemeris;
          std::memcpy(&gps_ephemeris, &gnss_buffer[sizeof(long_header)], sizeof(gps_ephemeris));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(gps_ephemeris))){
            handleGPSEphemerisPacket(gps_ephemeris, long_header, pub_gpsephemeris, frame_id);}
          break;   
        }
        
        case MessageId::GLOEPHEMERIS:
        {
          GLO_Ephemeris glo_ephemeris;
          std::memcpy(&glo_ephemeris, &gnss_buffer[sizeof(long_header)], sizeof(glo_ephemeris));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(glo_ephemeris))){
            handleGLOEphemerisPacket(glo_ephemeris, long_header, pub_gloephemeris, frame_id);}
          break; 
        }

        case MessageId::BDSEPHEMERIS:
        {
          BDS_Ephemeris bds_ephemeris;
          std::memcpy(&bds_ephemeris, &gnss_buffer[sizeof(long_header)], sizeof(bds_ephemeris));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(bds_ephemeris))){
            handleBDSEphemerisPacket(bds_ephemeris, long_header, pub_bdsephemeris, frame_id);}
          break;
        }
        
        case MessageId::HEADING:
        {
          Heading heading;
          std::memcpy(&heading, &gnss_buffer[sizeof(long_header)], sizeof(heading));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(heading))){
            handleHeadingPacket(heading, long_header, pub_heading, frame_id);}
          break;          
        }

        case MessageId::HEADING2:
        {
          Heading2 heading2;
          std::memcpy(&heading2, &gnss_buffer[sizeof(long_header)], sizeof(heading2));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(heading2))){
            handleHeading2Packet(heading2, long_header, pub_heading2, frame_id);}
          break;          
        }

        case MessageId::BESTVEL:
        {
          BestVel best_vel;
          std::memcpy(&best_vel, &gnss_buffer[sizeof(long_header)], sizeof(best_vel));
          if(check_crc(gnss_buffer, sizeof(long_header) + sizeof(best_vel))){
            handleVelPacket(best_vel, long_header, pub_vel, frame_id);}
          break;          
        }

        default:
	  ROS_INFO_STREAM("[GNSS_M2]switch default message_id is " << (int)message_id);
          break;
      }     //end of switch

    ros::spinOnce();
    loop_rate.sleep();
  }       //end of while
  boost_udp_->close_sock();
  delete boost_udp;     //at last, nor boost_udp_ will lose reference.

  return 0;
}     //end of main
