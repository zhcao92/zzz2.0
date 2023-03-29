// Generated by gencpp from file zzz_navigation_msgs/LaneBoundary.msg
// DO NOT EDIT!


#ifndef ZZZ_NAVIGATION_MSGS_MESSAGE_LANEBOUNDARY_H
#define ZZZ_NAVIGATION_MSGS_MESSAGE_LANEBOUNDARY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <zzz_navigation_msgs/LanePoint.h>

namespace zzz_navigation_msgs
{
template <class ContainerAllocator>
struct LaneBoundary_
{
  typedef LaneBoundary_<ContainerAllocator> Type;

  LaneBoundary_()
    : boundary_point()
    , boundary_type(0)
    , confidence(0.0)  {
    }
  LaneBoundary_(const ContainerAllocator& _alloc)
    : boundary_point(_alloc)
    , boundary_type(0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef  ::zzz_navigation_msgs::LanePoint_<ContainerAllocator>  _boundary_point_type;
  _boundary_point_type boundary_point;

   typedef uint8_t _boundary_type_type;
  _boundary_type_type boundary_type;

   typedef float _confidence_type;
  _confidence_type confidence;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(BOUNDARY_UNKNOWN)
  #undef BOUNDARY_UNKNOWN
#endif
#if defined(_WIN32) && defined(BOUNDARY_DASHED_WHITE)
  #undef BOUNDARY_DASHED_WHITE
#endif
#if defined(_WIN32) && defined(BOUNDARY_DASHED_YELLOW)
  #undef BOUNDARY_DASHED_YELLOW
#endif
#if defined(_WIN32) && defined(BOUNDARY_SOLID_WHITE)
  #undef BOUNDARY_SOLID_WHITE
#endif
#if defined(_WIN32) && defined(BOUNDARY_SOLID_YELLOW)
  #undef BOUNDARY_SOLID_YELLOW
#endif
#if defined(_WIN32) && defined(BOUNDARY_SOLID_YELLOW_TURN)
  #undef BOUNDARY_SOLID_YELLOW_TURN
#endif
#if defined(_WIN32) && defined(BOUNDARY_CURB)
  #undef BOUNDARY_CURB
#endif

  enum {
    BOUNDARY_UNKNOWN = 0u,
    BOUNDARY_DASHED_WHITE = 1u,
    BOUNDARY_DASHED_YELLOW = 2u,
    BOUNDARY_SOLID_WHITE = 3u,
    BOUNDARY_SOLID_YELLOW = 4u,
    BOUNDARY_SOLID_YELLOW_TURN = 5u,
    BOUNDARY_CURB = 6u,
  };


  typedef boost::shared_ptr< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> const> ConstPtr;

}; // struct LaneBoundary_

typedef ::zzz_navigation_msgs::LaneBoundary_<std::allocator<void> > LaneBoundary;

typedef boost::shared_ptr< ::zzz_navigation_msgs::LaneBoundary > LaneBoundaryPtr;
typedef boost::shared_ptr< ::zzz_navigation_msgs::LaneBoundary const> LaneBoundaryConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator1> & lhs, const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator2> & rhs)
{
  return lhs.boundary_point == rhs.boundary_point &&
    lhs.boundary_type == rhs.boundary_type &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator1> & lhs, const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa651533f9c7508c5cea4c2a98d9e055";
  }

  static const char* value(const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa651533f9c7508cULL;
  static const uint64_t static_value2 = 0x5cea4c2a98d9e055ULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_navigation_msgs/LaneBoundary";
  }

  static const char* value(const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message describe the boundary type of a part of a lane\n"
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
;
  }

  static const char* value(const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.boundary_point);
      stream.next(m.boundary_type);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneBoundary_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_navigation_msgs::LaneBoundary_<ContainerAllocator>& v)
  {
    s << indent << "boundary_point: ";
    s << std::endl;
    Printer< ::zzz_navigation_msgs::LanePoint_<ContainerAllocator> >::stream(s, indent + "  ", v.boundary_point);
    s << indent << "boundary_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.boundary_type);
    s << indent << "confidence: ";
    Printer<float>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_NAVIGATION_MSGS_MESSAGE_LANEBOUNDARY_H
