// Generated by gencpp from file zzz_perception_msgs/CooperativeMsg.msg
// DO NOT EDIT!


#ifndef ZZZ_PERCEPTION_MSGS_MESSAGE_COOPERATIVEMSG_H
#define ZZZ_PERCEPTION_MSGS_MESSAGE_COOPERATIVEMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <zzz_perception_msgs/TrackingBoxArray.h>
#include <nav_msgs/Odometry.h>

namespace zzz_perception_msgs
{
template <class ContainerAllocator>
struct CooperativeMsg_
{
  typedef CooperativeMsg_<ContainerAllocator> Type;

  CooperativeMsg_()
    : header()
    , tbox_arr()
    , odo_msg()  {
    }
  CooperativeMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tbox_arr(_alloc)
    , odo_msg(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::zzz_perception_msgs::TrackingBoxArray_<ContainerAllocator>  _tbox_arr_type;
  _tbox_arr_type tbox_arr;

   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _odo_msg_type;
  _odo_msg_type odo_msg;





  typedef boost::shared_ptr< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> const> ConstPtr;

}; // struct CooperativeMsg_

typedef ::zzz_perception_msgs::CooperativeMsg_<std::allocator<void> > CooperativeMsg;

typedef boost::shared_ptr< ::zzz_perception_msgs::CooperativeMsg > CooperativeMsgPtr;
typedef boost::shared_ptr< ::zzz_perception_msgs::CooperativeMsg const> CooperativeMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator1> & lhs, const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.tbox_arr == rhs.tbox_arr &&
    lhs.odo_msg == rhs.odo_msg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator1> & lhs, const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1eb7e08de1b3eb164f8e2508c317da20";
  }

  static const char* value(const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1eb7e08de1b3eb16ULL;
  static const uint64_t static_value2 = 0x4f8e2508c317da20ULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_perception_msgs/CooperativeMsg";
  }

  static const char* value(const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Combined msg of zzz_perception_msgs/TrackingBoxArray and nav_msgs/Odometry Message\n"
"\n"
"Header header\n"
"\n"
"TrackingBoxArray tbox_arr\n"
"nav_msgs/Odometry odo_msg\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/TrackingBoxArray\n"
"# Describe a list of 3D tracking targets, for a multi-object 3D detector.\n"
"\n"
"Header header\n"
"\n"
"# A list of the detected targets.\n"
"TrackingBox[] targets\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/TrackingBox\n"
"# Defines a box-shaped 3D tracking result.\n"
"\n"
"# Unique id to determine the identification of tracked object.\n"
"# This field could be a increasing number from zero or random hash number\n"
"uint64 uid\n"
"\n"
"# Defines the (existence) confidence of the object [-1 ~ 1].\n"
"# The confidence can be negative to demonstrate that this object is invalid.\n"
"# This confidence should not be fed into decision system. It should be used for validation purpose.\n"
"float32 confidence\n"
"\n"
"# Describe several classification result for the object\n"
"# This field is required to be sorted in descending order of scores\n"
"ObjectClass[] classes\n"
"\n"
"# This field contains the behavior identification based on light signal or hand signal\n"
"ObjectSignals signal\n"
"\n"
"# Current 3D bounding box.\n"
"BoundingBox bbox\n"
"\n"
"# Estimated 3D velocity and accelaration\n"
"geometry_msgs/TwistWithCovariance twist\n"
"geometry_msgs/AccelWithCovariance accel\n"
"\n"
"# This field is for store auxiliary text or data\n"
"string comments\n"
"\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/ObjectClass\n"
"# The size of (in meters) the bounding box surrounding the object's center pose.\n"
"\n"
"# The unique numeric classification ID of object detected\n"
"uint32 classid\n"
"\n"
"# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.\n"
"float32 score\n"
"\n"
"# Other information about the class (e.g. class name). Only for debug\n"
"string comments\n"
"\n"
"##############################################################\n"
"###   Here is a hierarchical table of all included types   ###\n"
"##############################################################\n"
"# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level\n"
"\n"
"uint32 UNKNOWN                          = 0     # 0x0000\n"
"uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010\n"
"uint32 UNKNOWN_STATIC                   = 32    # 0x0020\n"
"\n"
"uint32 VEHICLE                          = 1     # 0x0001\n"
"uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles\n"
"uint32 VEHICEL_VAN                      = 33    # 0x0021\n"
"uint32 VEHICLE_TRUCK                    = 49    # 0x0031\n"
"uint32 VEHICLE_BUS                      = 65    # 0x0041\n"
"uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141\n"
"uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141\n"
"uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including \n"
"uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151\n"
"uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151\n"
"uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251\n"
"uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251\n"
"uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks\n"
"uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351\n"
"\n"
"uint32 HUMAN                            = 2     # 0x0002\n"
"uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012\n"
"uint32 HUMAN_ROADWORKER                 = 34    # 0x0022\n"
"\n"
"uint32 CYCLIST                          = 3     # 0x0003\n"
"uint32 CYCLIST_BICYCLE                  = 19    # 0x0013\n"
"uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023\n"
"uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033\n"
"\n"
"uint32 ANIMAL                           = 4     # 0x0004\n"
"uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.\n"
"uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.\n"
"uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.\n"
"\n"
"uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area\n"
"uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone\n"
"uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign\n"
"\n"
"uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side\n"
"uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016\n"
"uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026\n"
"uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation\n"
"\n"
"uint32 LEVEL_MASK_0                     = 15    # 0x000f\n"
"uint32 LEVEL_MASK_1                     = 255   # 0x00ff\n"
"uint32 LEVEL_MASK_2                     = 4095  # 0x0fff\n"
"uint32 LEVEL_MASK_3                     = 65535 # 0xffff\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/ObjectSignals\n"
"# This message is used to represent detected vehicle light signals or human hand signals\n"
"\n"
"# Signal flags. Multiple signal emission can exists in the same time.\n"
"uint16 flags\n"
"\n"
"uint16 UNKNOWN                          = 0     # 0x00\n"
"uint16 NONE                             = 16    # 0x10\n"
"\n"
"# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting\n"
"uint16 VEHICLE_SIGNAL                   = 1     # 0x01\n"
"uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11\n"
"uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21\n"
"uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31\n"
"uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41\n"
"uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51\n"
"uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61\n"
"\n"
"# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects\n"
"uint16 TRAFFIC_LIGHT                    = 2     # 0x02\n"
"uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12\n"
"uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22\n"
"uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32\n"
"uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42\n"
"uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42\n"
"\n"
"# Confidence of the signal detection\n"
"float32 score\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/BoundingBox\n"
"\n"
"# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters\n"
"\n"
"# The position and orientation of the rigid body center\n"
"geometry_msgs/PoseWithCovariance pose\n"
"\n"
"# The size of (in meters) the bounding box surrounding the object's center pose.\n"
"DimensionWithCovariance dimension\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/DimensionWithCovariance\n"
"# Describing the size object in 3D space (in meters) with uncertainty\n"
"\n"
"float64 length_x # length(longitudinal direction)\n"
"float64 length_y # width(lateral direction)\n"
"float64 length_z # height\n"
"\n"
"# Row-major representation of the 3x3 covariance matrix\n"
"# In order, the parameters are: (length_x, length_y, length_z)\n"
"float64[9] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/AccelWithCovariance\n"
"# This expresses acceleration in free space with uncertainty.\n"
"\n"
"Accel accel\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/Odometry\n"
"# This represents an estimate of a position and velocity in free space.  \n"
"# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n"
"# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n"
"Header header\n"
"string child_frame_id\n"
"geometry_msgs/PoseWithCovariance pose\n"
"geometry_msgs/TwistWithCovariance twist\n"
;
  }

  static const char* value(const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tbox_arr);
      stream.next(m.odo_msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CooperativeMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_perception_msgs::CooperativeMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tbox_arr: ";
    s << std::endl;
    Printer< ::zzz_perception_msgs::TrackingBoxArray_<ContainerAllocator> >::stream(s, indent + "  ", v.tbox_arr);
    s << indent << "odo_msg: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.odo_msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_PERCEPTION_MSGS_MESSAGE_COOPERATIVEMSG_H
