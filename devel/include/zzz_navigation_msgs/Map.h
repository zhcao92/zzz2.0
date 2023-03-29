// Generated by gencpp from file zzz_navigation_msgs/Map.msg
// DO NOT EDIT!


#ifndef ZZZ_NAVIGATION_MSGS_MESSAGE_MAP_H
#define ZZZ_NAVIGATION_MSGS_MESSAGE_MAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <zzz_navigation_msgs/Lane.h>
#include <geometry_msgs/Polygon.h>
#include <geometry_msgs/Polygon.h>
#include <zzz_navigation_msgs/Lane.h>

namespace zzz_navigation_msgs
{
template <class ContainerAllocator>
struct Map_
{
  typedef Map_<ContainerAllocator> Type;

  Map_()
    : header()
    , in_junction(false)
    , exit_lane_index()
    , lanes()
    , drivable_area()
    , next_drivable_area()
    , next_lanes()
    , next_road_id(0)  {
    }
  Map_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , in_junction(false)
    , exit_lane_index(_alloc)
    , lanes(_alloc)
    , drivable_area(_alloc)
    , next_drivable_area(_alloc)
    , next_lanes(_alloc)
    , next_road_id(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _in_junction_type;
  _in_junction_type in_junction;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _exit_lane_index_type;
  _exit_lane_index_type exit_lane_index;

   typedef std::vector< ::zzz_navigation_msgs::Lane_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::zzz_navigation_msgs::Lane_<ContainerAllocator> >::other >  _lanes_type;
  _lanes_type lanes;

   typedef  ::geometry_msgs::Polygon_<ContainerAllocator>  _drivable_area_type;
  _drivable_area_type drivable_area;

   typedef  ::geometry_msgs::Polygon_<ContainerAllocator>  _next_drivable_area_type;
  _next_drivable_area_type next_drivable_area;

   typedef std::vector< ::zzz_navigation_msgs::Lane_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::zzz_navigation_msgs::Lane_<ContainerAllocator> >::other >  _next_lanes_type;
  _next_lanes_type next_lanes;

   typedef int8_t _next_road_id_type;
  _next_road_id_type next_road_id;





  typedef boost::shared_ptr< ::zzz_navigation_msgs::Map_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_navigation_msgs::Map_<ContainerAllocator> const> ConstPtr;

}; // struct Map_

typedef ::zzz_navigation_msgs::Map_<std::allocator<void> > Map;

typedef boost::shared_ptr< ::zzz_navigation_msgs::Map > MapPtr;
typedef boost::shared_ptr< ::zzz_navigation_msgs::Map const> MapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_navigation_msgs::Map_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_navigation_msgs::Map_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_navigation_msgs::Map_<ContainerAllocator1> & lhs, const ::zzz_navigation_msgs::Map_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.in_junction == rhs.in_junction &&
    lhs.exit_lane_index == rhs.exit_lane_index &&
    lhs.lanes == rhs.lanes &&
    lhs.drivable_area == rhs.drivable_area &&
    lhs.next_drivable_area == rhs.next_drivable_area &&
    lhs.next_lanes == rhs.next_lanes &&
    lhs.next_road_id == rhs.next_road_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_navigation_msgs::Map_<ContainerAllocator1> & lhs, const ::zzz_navigation_msgs::Map_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_navigation_msgs::Map_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_navigation_msgs::Map_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_navigation_msgs::Map_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a0ce8991715e99e47d9ef00be19691c";
  }

  static const char* value(const ::zzz_navigation_msgs::Map_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a0ce8991715e99eULL;
  static const uint64_t static_value2 = 0x47d9ef00be19691cULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_navigation_msgs/Map";
  }

  static const char* value(const ::zzz_navigation_msgs::Map_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describes a static local map. This map contains all essential\n"
"# information that should be generated by map provider. Generally this map is\n"
"# limited in a scope of a road section (i.e. road network edge)\n"
"# For extension, the junction shape information is provided\n"
"# For safety concerns, the next unit (i.e. edge or junction) is provided\n"
"\n"
"Header header\n"
"\n"
"# Whether the map is in a structured environment\n"
"bool in_junction # = True\n"
"\n"
"# Target lane index at the end of the section.\n"
"int8[] exit_lane_index\n"
"\n"
"# Lanes if it's in a structured road, should be sorted by ascending index\n"
"# The index is starting from right most lane, i.e. the right most lane is indexed as 0\n"
"Lane[] lanes\n"
"\n"
"# Road area if in junction\n"
"geometry_msgs/Polygon drivable_area\n"
"\n"
"# Next unit\n"
"geometry_msgs/Polygon next_drivable_area\n"
"Lane[] next_lanes\n"
"int8 next_road_id\n"
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
"MSG: zzz_navigation_msgs/Lane\n"
"# This message describe a lane with polyline representation\n"
"\n"
"# ----- Basic properties -----\n"
"# the rightest lane is 0, reference lane is -1\n"
"# TODO: remove this field\n"
"int16 index\n"
"\n"
"# Speed limit (km/h)\n"
"float32 speed_limit\n"
"\n"
"# Length of the lane. Provided for easy computation\n"
"float32 length\n"
"float32 width\n"
"\n"
"# Whether this lane allow two way traffic\n"
"# This can be true when the road is too narrow or in the center turning lane\n"
"bool bidirectional # = False\n"
"\n"
"# The situation when lane ends. This field could be updated with dynamic info.\n"
"uint8 stop_state # = 0\n"
"uint8 STOP_STATE_UNKNOWN = 0\n"
"uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light\n"
"uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light\n"
"uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light\n"
"uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light\n"
"uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign\n"
"\n"
"# ----- Central path representation -----\n"
"# The central_path_points field is used when central_path_type is waypoint.\n"
"# Otherwise, central_path_coeffs should be used\n"
"LanePoint[] central_path_points\n"
"float32[] central_path_coeffs\n"
"\n"
"uint8 central_path_type # = 0\n"
"uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized\n"
"uint8 CENTRAL_PATH_LINE = 1\n"
"uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola\n"
"uint8 CENTRAL_PATH_POLYNOMIAL = 3 #\n"
"uint8 CENTRAL_PATH_BEZIER = 4\n"
"\n"
"# ----- Boundary representation -----\n"
"# The boundary description of current lane.\n"
"# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder\n"
"LaneBoundary[] left_boundaries\n"
"LaneBoundary[] right_boundaries\n"
"\n"
"# ----- Auxiliary information of the lane -----\n"
"# Road situations on this line. This field could be updated with dynamic info.\n"
"LaneSituation[] situations\n"
"\n"
"# ---- traffic ligth position ------ \n"
"float32[] traffic_light_pos\n"
"================================================================================\n"
"MSG: zzz_navigation_msgs/LanePoint\n"
"# This message describe a road point from polyline represented lane\n"
"\n"
"# The 3D position of the lane point\n"
"geometry_msgs/Point position\n"
"\n"
"# ----- Other useful information -----\n"
"# Distance from lane start to current point. The distance of the first point should be zero\n"
"float32 s\n"
"\n"
"# Slope at current position of the road\n"
"# Can be used to control the throttle\n"
"float32 slope\n"
"\n"
"# Road curvature at current position of the road\n"
"# Can be used to slow down before turning\n"
"float32 curvature\n"
"\n"
"# The yaw angle of tangent line (in radian)\n"
"float32 tangent\n"
"\n"
"# Road width at current position\n"
"# Can be used to determine the carefulness of driving\n"
"float32 width\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: zzz_navigation_msgs/LaneBoundary\n"
"# This message describe the boundary type of a part of a lane\n"
"\n"
"# Lane boundary point\n"
"LanePoint boundary_point\n"
"\n"
"# Boundary type from between `s` and `s` of the next section start\n"
"uint8 boundary_type\n"
"uint8 BOUNDARY_UNKNOWN = 0\n"
"uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.\n"
"uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.\n"
"uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.\n"
"uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.\n"
"uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.\n"
"uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder\n"
"\n"
"# Confidence of the lane boundary classification\n"
"float32 confidence\n"
"\n"
"================================================================================\n"
"MSG: zzz_navigation_msgs/LaneSituation\n"
"# This message store any uncommon situations on a road\n"
"# Situation can be a map specified object or fresh events\n"
"\n"
"# The location of the situation in a lane (distance from lane start)\n"
"float32 s\n"
"\n"
"# How long this situation affect along the lane.\n"
"# Inf means take effect until lane ends\n"
"float32 length\n"
"\n"
"# Type of situation\n"
"uint8 situation_type\n"
"uint8 SITUATION_NOT_SPECIFIED = 0\n"
"uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here\n"
"uint8 SITUATION_CROSSWALK = 2 # Crosswalk\n"
"uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc\n"
"\n"
"# ------- Situation information -------\n"
"# The new speed limit. Zero means the vehicle is required to stop\n"
"float32 reduced_max_speed\n"
"\n"
"# Additional information\n"
"string comments\n"
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
;
  }

  static const char* value(const ::zzz_navigation_msgs::Map_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.in_junction);
      stream.next(m.exit_lane_index);
      stream.next(m.lanes);
      stream.next(m.drivable_area);
      stream.next(m.next_drivable_area);
      stream.next(m.next_lanes);
      stream.next(m.next_road_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Map_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_navigation_msgs::Map_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_navigation_msgs::Map_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "in_junction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.in_junction);
    s << indent << "exit_lane_index[]" << std::endl;
    for (size_t i = 0; i < v.exit_lane_index.size(); ++i)
    {
      s << indent << "  exit_lane_index[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.exit_lane_index[i]);
    }
    s << indent << "lanes[]" << std::endl;
    for (size_t i = 0; i < v.lanes.size(); ++i)
    {
      s << indent << "  lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::zzz_navigation_msgs::Lane_<ContainerAllocator> >::stream(s, indent + "    ", v.lanes[i]);
    }
    s << indent << "drivable_area: ";
    s << std::endl;
    Printer< ::geometry_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "  ", v.drivable_area);
    s << indent << "next_drivable_area: ";
    s << std::endl;
    Printer< ::geometry_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "  ", v.next_drivable_area);
    s << indent << "next_lanes[]" << std::endl;
    for (size_t i = 0; i < v.next_lanes.size(); ++i)
    {
      s << indent << "  next_lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::zzz_navigation_msgs::Lane_<ContainerAllocator> >::stream(s, indent + "    ", v.next_lanes[i]);
    }
    s << indent << "next_road_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.next_road_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_NAVIGATION_MSGS_MESSAGE_MAP_H
