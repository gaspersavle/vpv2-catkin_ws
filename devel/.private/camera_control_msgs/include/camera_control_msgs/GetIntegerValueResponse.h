// Generated by gencpp from file camera_control_msgs/GetIntegerValueResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_GETINTEGERVALUERESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_GETINTEGERVALUERESPONSE_H


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
struct GetIntegerValueResponse_
{
  typedef GetIntegerValueResponse_<ContainerAllocator> Type;

  GetIntegerValueResponse_()
    : value(0)
    , success(false)
    , message()  {
    }
  GetIntegerValueResponse_(const ContainerAllocator& _alloc)
    : value(0)
    , success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _value_type;
  _value_type value;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetIntegerValueResponse_

typedef ::camera_control_msgs::GetIntegerValueResponse_<std::allocator<void> > GetIntegerValueResponse;

typedef boost::shared_ptr< ::camera_control_msgs::GetIntegerValueResponse > GetIntegerValueResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::GetIntegerValueResponse const> GetIntegerValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value &&
    lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e594fdfa2675fb84aef8c993fb08db4";
  }

  static const char* value(const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e594fdfa2675fb8ULL;
  static const uint64_t static_value2 = 0x4aef8c993fb08db4ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/GetIntegerValueResponse";
  }

  static const char* value(const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 value		# returned value\n"
"bool success   # indicate successful run of triggered service\n"
"string message # informational, e.g. for error messages\n"
;
  }

  static const char* value(const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetIntegerValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::GetIntegerValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<int32_t>::stream(s, indent + "  ", v.value);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_GETINTEGERVALUERESPONSE_H
