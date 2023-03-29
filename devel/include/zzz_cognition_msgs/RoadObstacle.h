// Generated by gencpp from file zzz_cognition_msgs/RoadObstacle.msg
// DO NOT EDIT!


#ifndef ZZZ_COGNITION_MSGS_MESSAGE_ROADOBSTACLE_H
#define ZZZ_COGNITION_MSGS_MESSAGE_ROADOBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <zzz_perception_msgs/ObjectClass.h>
#include <zzz_driver_msgs/RigidBodyState.h>
#include <zzz_driver_msgs/FrenetSerretState2D.h>
#include <geometry_msgs/Polygon.h>
#include <zzz_perception_msgs/DimensionWithCovariance.h>

namespace zzz_cognition_msgs
{
template <class ContainerAllocator>
struct RoadObstacle_
{
  typedef RoadObstacle_<ContainerAllocator> Type;

  RoadObstacle_()
    : uid(0)
    , confidence(0.0)
    , cls()
    , state()
    , ffstate()
    , lane_index(0.0)
    , lane_anglediff(0.0)
    , lane_dist_left_t(0.0)
    , lane_dist_right_t(0.0)
    , lane_dist_s(0.0)
    , is_static(false)
    , shape_type(0)
    , shape()
    , dimension()
    , shape_uncertainty()
    , behavior(0)
    , priority(0)  {
    }
  RoadObstacle_(const ContainerAllocator& _alloc)
    : uid(0)
    , confidence(0.0)
    , cls(_alloc)
    , state(_alloc)
    , ffstate(_alloc)
    , lane_index(0.0)
    , lane_anglediff(0.0)
    , lane_dist_left_t(0.0)
    , lane_dist_right_t(0.0)
    , lane_dist_s(0.0)
    , is_static(false)
    , shape_type(0)
    , shape(_alloc)
    , dimension(_alloc)
    , shape_uncertainty(_alloc)
    , behavior(0)
    , priority(0)  {
  (void)_alloc;
    }



   typedef uint64_t _uid_type;
  _uid_type uid;

   typedef float _confidence_type;
  _confidence_type confidence;

   typedef  ::zzz_perception_msgs::ObjectClass_<ContainerAllocator>  _cls_type;
  _cls_type cls;

   typedef  ::zzz_driver_msgs::RigidBodyState_<ContainerAllocator>  _state_type;
  _state_type state;

   typedef  ::zzz_driver_msgs::FrenetSerretState2D_<ContainerAllocator>  _ffstate_type;
  _ffstate_type ffstate;

   typedef float _lane_index_type;
  _lane_index_type lane_index;

   typedef float _lane_anglediff_type;
  _lane_anglediff_type lane_anglediff;

   typedef float _lane_dist_left_t_type;
  _lane_dist_left_t_type lane_dist_left_t;

   typedef float _lane_dist_right_t_type;
  _lane_dist_right_t_type lane_dist_right_t;

   typedef float _lane_dist_s_type;
  _lane_dist_s_type lane_dist_s;

   typedef uint8_t _is_static_type;
  _is_static_type is_static;

   typedef uint8_t _shape_type_type;
  _shape_type_type shape_type;

   typedef  ::geometry_msgs::Polygon_<ContainerAllocator>  _shape_type;
  _shape_type shape;

   typedef  ::zzz_perception_msgs::DimensionWithCovariance_<ContainerAllocator>  _dimension_type;
  _dimension_type dimension;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _shape_uncertainty_type;
  _shape_uncertainty_type shape_uncertainty;

   typedef uint8_t _behavior_type;
  _behavior_type behavior;

   typedef uint8_t _priority_type;
  _priority_type priority;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SHAPE_UNDEFINED)
  #undef SHAPE_UNDEFINED
#endif
#if defined(_WIN32) && defined(SHAPE_POLYGON)
  #undef SHAPE_POLYGON
#endif
#if defined(_WIN32) && defined(BEHAVIOR_UNKNOWN)
  #undef BEHAVIOR_UNKNOWN
#endif
#if defined(_WIN32) && defined(BEHAVIOR_STOPPING)
  #undef BEHAVIOR_STOPPING
#endif
#if defined(_WIN32) && defined(BEHAVIOR_FOLLOW)
  #undef BEHAVIOR_FOLLOW
#endif
#if defined(_WIN32) && defined(BEHAVIOR_MOVING_LEFT)
  #undef BEHAVIOR_MOVING_LEFT
#endif
#if defined(_WIN32) && defined(BEHAVIOR_MOVING_RIGHT)
  #undef BEHAVIOR_MOVING_RIGHT
#endif
#if defined(_WIN32) && defined(PRIORITY_UNKNOWN)
  #undef PRIORITY_UNKNOWN
#endif
#if defined(_WIN32) && defined(PRIORITY_NORMAL)
  #undef PRIORITY_NORMAL
#endif
#if defined(_WIN32) && defined(PRIORITY_CAUTIOUS)
  #undef PRIORITY_CAUTIOUS
#endif
#if defined(_WIN32) && defined(PRIORITY_STOP)
  #undef PRIORITY_STOP
#endif

  enum {
    SHAPE_UNDEFINED = 0u,
    SHAPE_POLYGON = 1u,
    BEHAVIOR_UNKNOWN = 0u,
    BEHAVIOR_STOPPING = 1u,
    BEHAVIOR_FOLLOW = 2u,
    BEHAVIOR_MOVING_LEFT = 3u,
    BEHAVIOR_MOVING_RIGHT = 4u,
    PRIORITY_UNKNOWN = 0u,
    PRIORITY_NORMAL = 1u,
    PRIORITY_CAUTIOUS = 2u,
    PRIORITY_STOP = 3u,
  };


  typedef boost::shared_ptr< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> const> ConstPtr;

}; // struct RoadObstacle_

typedef ::zzz_cognition_msgs::RoadObstacle_<std::allocator<void> > RoadObstacle;

typedef boost::shared_ptr< ::zzz_cognition_msgs::RoadObstacle > RoadObstaclePtr;
typedef boost::shared_ptr< ::zzz_cognition_msgs::RoadObstacle const> RoadObstacleConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator1> & lhs, const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator2> & rhs)
{
  return lhs.uid == rhs.uid &&
    lhs.confidence == rhs.confidence &&
    lhs.cls == rhs.cls &&
    lhs.state == rhs.state &&
    lhs.ffstate == rhs.ffstate &&
    lhs.lane_index == rhs.lane_index &&
    lhs.lane_anglediff == rhs.lane_anglediff &&
    lhs.lane_dist_left_t == rhs.lane_dist_left_t &&
    lhs.lane_dist_right_t == rhs.lane_dist_right_t &&
    lhs.lane_dist_s == rhs.lane_dist_s &&
    lhs.is_static == rhs.is_static &&
    lhs.shape_type == rhs.shape_type &&
    lhs.shape == rhs.shape &&
    lhs.dimension == rhs.dimension &&
    lhs.shape_uncertainty == rhs.shape_uncertainty &&
    lhs.behavior == rhs.behavior &&
    lhs.priority == rhs.priority;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator1> & lhs, const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_cognition_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "88c2dcf03d4744032d7b40f81015259b";
  }

  static const char* value(const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x88c2dcf03d474403ULL;
  static const uint64_t static_value2 = 0x2d7b40f81015259bULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_cognition_msgs/RoadObstacle";
  }

  static const char* value(const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains all the information that planning needs for a road object\n"
"\n"
"\n"
"# Unique indentity of the obstacle\n"
"uint64 uid\n"
"\n"
"# The confidence of existence, can be used to determine whether this object is valid, or invalid\n"
"# A possible way of get the confidence is by using tracking age\n"
"float32 confidence\n"
"\n"
"# The best guess of obstacle type\n"
"zzz_perception_msgs/ObjectClass cls\n"
"\n"
"# Estimated kinematic properties\n"
"zzz_driver_msgs/RigidBodyState state\n"
"# Kinematic properties in Frenet Frame\n"
"zzz_driver_msgs/FrenetSerretState2D ffstate\n"
"\n"
"# Relationship to lane, for prediction or locating\n"
"float32 lane_index # in which lane\n"
"float32 lane_anglediff # angle difference\n"
"float32 lane_dist_left_t # distance to lane\n"
"float32 lane_dist_right_t\n"
"float32 lane_dist_s # s position in the road\n"
"\n"
"# A flag to mark whether the object is static\n"
"bool is_static\n"
"\n"
"# XXX: Do we need history trajectories?\n"
"\n"
"# ----- Physical Boundary (Optional) -----\n"
"uint8 shape_type\n"
"uint8 SHAPE_UNDEFINED = 0\n"
"uint8 SHAPE_POLYGON = 1\n"
"\n"
"# Representation of the object if it's represented by polygon\n"
"geometry_msgs/Polygon shape\n"
"\n"
"# bbox, refer to BoundingBox in zzz_perception_msgs\n"
"\n"
"zzz_perception_msgs/DimensionWithCovariance dimension\n"
"#uint8 dimension\n"
"\n"
"# Null uncertainty of Inf uncertainty means that the shape is not actually generated\n"
"float32[] shape_uncertainty\n"
"\n"
"# ----- High level behavior estimation -----\n"
"\n"
"uint8 behavior\n"
"uint8 BEHAVIOR_UNKNOWN = 0\n"
"uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped\n"
"uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line\n"
"uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left\n"
"uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right\n"
"\n"
"# This field is preserved to adapt to yield situation.\n"
"# Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.\n"
"# Yield means if your path conflict with the object's, you should wait for the object\n"
"# to go through the conflict point.\n"
"uint8 priority\n"
"uint8 PRIORITY_UNKNOWN = 0\n"
"uint8 PRIORITY_NORMAL = 1\n"
"uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away\n"
"uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move\n"
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
"MSG: zzz_driver_msgs/RigidBodyState\n"
"# This message contains commonly used state variables of rigid body\n"
"\n"
"# ID of frame fixed to the rigid body\n"
"string child_frame_id\n"
"\n"
"# Location and orientatation of the object\n"
"geometry_msgs/PoseWithCovariance  pose\n"
"\n"
"# Linear and angular velocity of the object\n"
"geometry_msgs/TwistWithCovariance twist\n"
"\n"
"# Linear and angular acceleration of the object\n"
"geometry_msgs/AccelWithCovariance accel\n"
"\n"
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
"MSG: zzz_driver_msgs/FrenetSerretState2D\n"
"# This message describes a state in 2d Frenet-Serret Frame\n"
"# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction\n"
"# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas\n"
"\n"
"# 2D states\n"
"float32 s # Offset in tanget direction\n"
"float32 d # Offset in normal direction\n"
"          # we omit the offset in binormal direction\n"
"float32 psi # Heading angle in s-d plane\n"
"float32[9] pose_covariance\n"
"\n"
"# First order derivatives\n"
"float32 vs\n"
"float32 vd\n"
"float32 omega\n"
"float32[9] twist_covariance\n"
"\n"
"# Second order derivatives\n"
"float32 sa # prevent keyword conflict\n"
"float32 ad\n"
"float32 epsilon\n"
"float32[9] accel_covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
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
;
  }

  static const char* value(const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.uid);
      stream.next(m.confidence);
      stream.next(m.cls);
      stream.next(m.state);
      stream.next(m.ffstate);
      stream.next(m.lane_index);
      stream.next(m.lane_anglediff);
      stream.next(m.lane_dist_left_t);
      stream.next(m.lane_dist_right_t);
      stream.next(m.lane_dist_s);
      stream.next(m.is_static);
      stream.next(m.shape_type);
      stream.next(m.shape);
      stream.next(m.dimension);
      stream.next(m.shape_uncertainty);
      stream.next(m.behavior);
      stream.next(m.priority);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RoadObstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_cognition_msgs::RoadObstacle_<ContainerAllocator>& v)
  {
    s << indent << "uid: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.uid);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
    s << indent << "cls: ";
    s << std::endl;
    Printer< ::zzz_perception_msgs::ObjectClass_<ContainerAllocator> >::stream(s, indent + "  ", v.cls);
    s << indent << "state: ";
    s << std::endl;
    Printer< ::zzz_driver_msgs::RigidBodyState_<ContainerAllocator> >::stream(s, indent + "  ", v.state);
    s << indent << "ffstate: ";
    s << std::endl;
    Printer< ::zzz_driver_msgs::FrenetSerretState2D_<ContainerAllocator> >::stream(s, indent + "  ", v.ffstate);
    s << indent << "lane_index: ";
    Printer<float>::stream(s, indent + "  ", v.lane_index);
    s << indent << "lane_anglediff: ";
    Printer<float>::stream(s, indent + "  ", v.lane_anglediff);
    s << indent << "lane_dist_left_t: ";
    Printer<float>::stream(s, indent + "  ", v.lane_dist_left_t);
    s << indent << "lane_dist_right_t: ";
    Printer<float>::stream(s, indent + "  ", v.lane_dist_right_t);
    s << indent << "lane_dist_s: ";
    Printer<float>::stream(s, indent + "  ", v.lane_dist_s);
    s << indent << "is_static: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_static);
    s << indent << "shape_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.shape_type);
    s << indent << "shape: ";
    s << std::endl;
    Printer< ::geometry_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "  ", v.shape);
    s << indent << "dimension: ";
    s << std::endl;
    Printer< ::zzz_perception_msgs::DimensionWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.dimension);
    s << indent << "shape_uncertainty[]" << std::endl;
    for (size_t i = 0; i < v.shape_uncertainty.size(); ++i)
    {
      s << indent << "  shape_uncertainty[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.shape_uncertainty[i]);
    }
    s << indent << "behavior: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.behavior);
    s << indent << "priority: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.priority);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_COGNITION_MSGS_MESSAGE_ROADOBSTACLE_H
