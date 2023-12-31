// Generated by gencpp from file camera_control_msgs/SetGainRequest.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETGAINREQUEST_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETGAINREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace camera_control_msgs
{
template <class ContainerAllocator>
struct SetGainRequest_
{
  typedef SetGainRequest_<ContainerAllocator> Type;

  SetGainRequest_()
    : target_gain(0.0)  {
    }
  SetGainRequest_(const ContainerAllocator& _alloc)
    : target_gain(0.0)  {
  (void)_alloc;
    }



   typedef float _target_gain_type;
  _target_gain_type target_gain;





  typedef boost::shared_ptr< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetGainRequest_

typedef ::camera_control_msgs::SetGainRequest_<std::allocator<void> > SetGainRequest;

typedef boost::shared_ptr< ::camera_control_msgs::SetGainRequest > SetGainRequestPtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetGainRequest const> SetGainRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetGainRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::camera_control_msgs::SetGainRequest_<ContainerAllocator1> & lhs, const ::camera_control_msgs::SetGainRequest_<ContainerAllocator2> & rhs)
{
  return lhs.target_gain == rhs.target_gain;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::camera_control_msgs::SetGainRequest_<ContainerAllocator1> & lhs, const ::camera_control_msgs::SetGainRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e755c5a3e141e0e1df554ec3425596f";
  }

  static const char* value(const ::camera_control_msgs::SetGainRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e755c5a3e141e0eULL;
  static const uint64_t static_value2 = 0x1df554ec3425596fULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetGainRequest";
  }

  static const char* value(const ::camera_control_msgs::SetGainRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The target gain in percent of the maximal value the camera supports.\n"
"# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so\n"
"# called 'device specific units'.\n"
"float32 target_gain\n"
;
  }

  static const char* value(const ::camera_control_msgs::SetGainRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_gain);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetGainRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetGainRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetGainRequest_<ContainerAllocator>& v)
  {
    s << indent << "target_gain: ";
    Printer<float>::stream(s, indent + "  ", v.target_gain);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETGAINREQUEST_H
