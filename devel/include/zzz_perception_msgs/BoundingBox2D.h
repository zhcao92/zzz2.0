// Generated by gencpp from file zzz_perception_msgs/BoundingBox2D.msg
// DO NOT EDIT!


#ifndef ZZZ_PERCEPTION_MSGS_MESSAGE_BOUNDINGBOX2D_H
#define ZZZ_PERCEPTION_MSGS_MESSAGE_BOUNDINGBOX2D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <zzz_perception_msgs/Pose2DWithCovariance.h>
#include <zzz_perception_msgs/Dimension2DWithCovariance.h>

namespace zzz_perception_msgs
{
template <class ContainerAllocator>
struct BoundingBox2D_
{
  typedef BoundingBox2D_<ContainerAllocator> Type;

  BoundingBox2D_()
    : pose()
    , dimension()  {
    }
  BoundingBox2D_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , dimension(_alloc)  {
  (void)_alloc;
    }



   typedef  ::zzz_perception_msgs::Pose2DWithCovariance_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::zzz_perception_msgs::Dimension2DWithCovariance_<ContainerAllocator>  _dimension_type;
  _dimension_type dimension;





  typedef boost::shared_ptr< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> const> ConstPtr;

}; // struct BoundingBox2D_

typedef ::zzz_perception_msgs::BoundingBox2D_<std::allocator<void> > BoundingBox2D;

typedef boost::shared_ptr< ::zzz_perception_msgs::BoundingBox2D > BoundingBox2DPtr;
typedef boost::shared_ptr< ::zzz_perception_msgs::BoundingBox2D const> BoundingBox2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator1> & lhs, const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.dimension == rhs.dimension;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator1> & lhs, const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee985124803fe8633995d77cdc7fb361";
  }

  static const char* value(const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee985124803fe863ULL;
  static const uint64_t static_value2 = 0x3995d77cdc7fb361ULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_perception_msgs/BoundingBox2D";
  }

  static const char* value(const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point\n"
"\n"
"# The position and orientation of the rigid body center\n"
"Pose2DWithCovariance pose\n"
"\n"
"# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.\n"
"Dimension2DWithCovariance dimension\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/Pose2DWithCovariance\n"
"\n"
"float64 x # or u in u-v plane\n"
"float64 y # or v in u-v plane\n"
"float64 theta\n"
"\n"
"# Row-major representation of the 3x3 covariance matrix\n"
"# In order, the parameters are: (x, y, theta)\n"
"float64[9] covariance\n"
"\n"
"================================================================================\n"
"MSG: zzz_perception_msgs/Dimension2DWithCovariance\n"
"# Describing the size object in 2D space (in pixels) with uncertainty\n"
"\n"
"float64 length_x # width\n"
"float64 length_y # length\n"
"\n"
"# Row-major representation of the 2x2 covariance matrix\n"
"# In order, the parameters are: (length_x, length_y)\n"
"float64[4] covariance\n"
;
  }

  static const char* value(const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.dimension);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoundingBox2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_perception_msgs::BoundingBox2D_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::zzz_perception_msgs::Pose2DWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "dimension: ";
    s << std::endl;
    Printer< ::zzz_perception_msgs::Dimension2DWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.dimension);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_PERCEPTION_MSGS_MESSAGE_BOUNDINGBOX2D_H
