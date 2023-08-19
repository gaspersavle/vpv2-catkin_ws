// Generated by gencpp from file camera_control_msgs/SetWhiteBalanceResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETWHITEBALANCERESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETWHITEBALANCERESPONSE_H


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
struct SetWhiteBalanceResponse_
{
  typedef SetWhiteBalanceResponse_<ContainerAllocator> Type;

  SetWhiteBalanceResponse_()
    : success(false)
    , message()  {
    }
  SetWhiteBalanceResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetWhiteBalanceResponse_

typedef ::camera_control_msgs::SetWhiteBalanceResponse_<std::allocator<void> > SetWhiteBalanceResponse;

typedef boost::shared_ptr< ::camera_control_msgs::SetWhiteBalanceResponse > SetWhiteBalanceResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetWhiteBalanceResponse const> SetWhiteBalanceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetWhiteBalanceResponse";
  }

  static const char* value(const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success   # indicate successful run of triggered service\n"
"string message # informational, e.g. for error messages\n"
;
  }

  static const char* value(const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetWhiteBalanceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetWhiteBalanceResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETWHITEBALANCERESPONSE_H
