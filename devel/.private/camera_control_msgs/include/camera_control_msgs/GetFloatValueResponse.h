// Generated by gencpp from file camera_control_msgs/GetFloatValueResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUERESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUERESPONSE_H


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
struct GetFloatValueResponse_
{
  typedef GetFloatValueResponse_<ContainerAllocator> Type;

  GetFloatValueResponse_()
    : value(0.0)
    , success(false)
    , message()  {
    }
  GetFloatValueResponse_(const ContainerAllocator& _alloc)
    : value(0.0)
    , success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef float _value_type;
  _value_type value;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetFloatValueResponse_

typedef ::camera_control_msgs::GetFloatValueResponse_<std::allocator<void> > GetFloatValueResponse;

typedef boost::shared_ptr< ::camera_control_msgs::GetFloatValueResponse > GetFloatValueResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::GetFloatValueResponse const> GetFloatValueResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value &&
    lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator1> & lhs, const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43b10f831effee7a7ea5981fb2cf0b2c";
  }

  static const char* value(const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43b10f831effee7aULL;
  static const uint64_t static_value2 = 0x7ea5981fb2cf0b2cULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/GetFloatValueResponse";
  }

  static const char* value(const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 value		# returned value\n"
"bool success   # indicate successful run of triggered service\n"
"string message # informational, e.g. for error messages\n"
;
  }

  static const char* value(const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetFloatValueResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::GetFloatValueResponse_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUERESPONSE_H
