// Generated by gencpp from file zzz_driver_msgs/AuxiliaryReport.msg
// DO NOT EDIT!


#ifndef ZZZ_DRIVER_MSGS_MESSAGE_AUXILIARYREPORT_H
#define ZZZ_DRIVER_MSGS_MESSAGE_AUXILIARYREPORT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zzz_driver_msgs
{
template <class ContainerAllocator>
struct AuxiliaryReport_
{
  typedef AuxiliaryReport_<ContainerAllocator> Type;

  AuxiliaryReport_()
    : fcw_flag(0)
    , aeb_flag(0)
    , acc_flag(0)
    , ldw_flag(0)
    , bsd_flag(0)  {
    }
  AuxiliaryReport_(const ContainerAllocator& _alloc)
    : fcw_flag(0)
    , aeb_flag(0)
    , acc_flag(0)
    , ldw_flag(0)
    , bsd_flag(0)  {
  (void)_alloc;
    }



   typedef uint8_t _fcw_flag_type;
  _fcw_flag_type fcw_flag;

   typedef uint8_t _aeb_flag_type;
  _aeb_flag_type aeb_flag;

   typedef uint8_t _acc_flag_type;
  _acc_flag_type acc_flag;

   typedef uint8_t _ldw_flag_type;
  _ldw_flag_type ldw_flag;

   typedef uint8_t _bsd_flag_type;
  _bsd_flag_type bsd_flag;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(FCW_AVAILABLE)
  #undef FCW_AVAILABLE
#endif
#if defined(_WIN32) && defined(FCW_ALERT)
  #undef FCW_ALERT
#endif
#if defined(_WIN32) && defined(AEB_AVAILABLE)
  #undef AEB_AVAILABLE
#endif
#if defined(_WIN32) && defined(AEB_PRECHARGE)
  #undef AEB_PRECHARGE
#endif
#if defined(_WIN32) && defined(AEB_BRAKING)
  #undef AEB_BRAKING
#endif
#if defined(_WIN32) && defined(ACC_AVAILABLE)
  #undef ACC_AVAILABLE
#endif
#if defined(_WIN32) && defined(ACC_BRAKING)
  #undef ACC_BRAKING
#endif
#if defined(_WIN32) && defined(LDW_AVAILABLE)
  #undef LDW_AVAILABLE
#endif
#if defined(_WIN32) && defined(LDW_LEFT_ALERT)
  #undef LDW_LEFT_ALERT
#endif
#if defined(_WIN32) && defined(LDW_RIGHT_ALERT)
  #undef LDW_RIGHT_ALERT
#endif
#if defined(_WIN32) && defined(BSD_AVAILABLE)
  #undef BSD_AVAILABLE
#endif
#if defined(_WIN32) && defined(BSD_LEFT_ALERT)
  #undef BSD_LEFT_ALERT
#endif
#if defined(_WIN32) && defined(BSD_RIGHT_ALERT)
  #undef BSD_RIGHT_ALERT
#endif

  enum {
    FCW_AVAILABLE = 1u,
    FCW_ALERT = 2u,
    AEB_AVAILABLE = 1u,
    AEB_PRECHARGE = 2u,
    AEB_BRAKING = 4u,
    ACC_AVAILABLE = 1u,
    ACC_BRAKING = 2u,
    LDW_AVAILABLE = 1u,
    LDW_LEFT_ALERT = 2u,
    LDW_RIGHT_ALERT = 4u,
    BSD_AVAILABLE = 1u,
    BSD_LEFT_ALERT = 2u,
    BSD_RIGHT_ALERT = 4u,
  };


  typedef boost::shared_ptr< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> const> ConstPtr;

}; // struct AuxiliaryReport_

typedef ::zzz_driver_msgs::AuxiliaryReport_<std::allocator<void> > AuxiliaryReport;

typedef boost::shared_ptr< ::zzz_driver_msgs::AuxiliaryReport > AuxiliaryReportPtr;
typedef boost::shared_ptr< ::zzz_driver_msgs::AuxiliaryReport const> AuxiliaryReportConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator1> & lhs, const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator2> & rhs)
{
  return lhs.fcw_flag == rhs.fcw_flag &&
    lhs.aeb_flag == rhs.aeb_flag &&
    lhs.acc_flag == rhs.acc_flag &&
    lhs.ldw_flag == rhs.ldw_flag &&
    lhs.bsd_flag == rhs.bsd_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator1> & lhs, const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace zzz_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46bed4f4c85b89c6936b9a6716c138b1";
  }

  static const char* value(const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46bed4f4c85b89c6ULL;
  static const uint64_t static_value2 = 0x936b9a6716c138b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zzz_driver_msgs/AuxiliaryReport";
  }

  static const char* value(const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message provide interface for additional vehicle modules, e.g. ACC, BSD\n"
"\n"
"\n"
"# Forward Collison Warning status\n"
"uint8 fcw_flag\n"
"uint8 FCW_AVAILABLE = 1\n"
"uint8 FCW_ALERT = 2\n"
"\n"
"# Automatic Emergency Brake status\n"
"uint8 aeb_flag\n"
"uint8 AEB_AVAILABLE = 1\n"
"uint8 AEB_PRECHARGE = 2\n"
"uint8 AEB_BRAKING = 4\n"
"\n"
"# Adaptive Cruise Control status\n"
"uint8 acc_flag\n"
"uint8 ACC_AVAILABLE = 1\n"
"uint8 ACC_BRAKING = 2\n"
"\n"
"# Lane Departure Warning status\n"
"uint8 ldw_flag\n"
"uint8 LDW_AVAILABLE = 1\n"
"uint8 LDW_LEFT_ALERT = 2\n"
"uint8 LDW_RIGHT_ALERT = 4\n"
"\n"
"# Blind Spot Detection status\n"
"uint8 bsd_flag\n"
"uint8 BSD_AVAILABLE = 1\n"
"uint8 BSD_LEFT_ALERT = 2\n"
"uint8 BSD_RIGHT_ALERT = 4\n"
;
  }

  static const char* value(const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fcw_flag);
      stream.next(m.aeb_flag);
      stream.next(m.acc_flag);
      stream.next(m.ldw_flag);
      stream.next(m.bsd_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AuxiliaryReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zzz_driver_msgs::AuxiliaryReport_<ContainerAllocator>& v)
  {
    s << indent << "fcw_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fcw_flag);
    s << indent << "aeb_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.aeb_flag);
    s << indent << "acc_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.acc_flag);
    s << indent << "ldw_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ldw_flag);
    s << indent << "bsd_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.bsd_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZZZ_DRIVER_MSGS_MESSAGE_AUXILIARYREPORT_H
