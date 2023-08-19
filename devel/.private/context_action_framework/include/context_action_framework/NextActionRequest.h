// Generated by gencpp from file context_action_framework/NextActionRequest.msg
// DO NOT EDIT!


#ifndef CONTEXT_ACTION_FRAMEWORK_MESSAGE_NEXTACTIONREQUEST_H
#define CONTEXT_ACTION_FRAMEWORK_MESSAGE_NEXTACTIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace context_action_framework
{
template <class ContainerAllocator>
struct NextActionRequest_
{
  typedef NextActionRequest_<ContainerAllocator> Type;

  NextActionRequest_()
    : success_prev(false)
    , uuid_prev()
    , action_type_prev(0)
    , action_details()  {
    }
  NextActionRequest_(const ContainerAllocator& _alloc)
    : success_prev(false)
    , uuid_prev(_alloc)
    , action_type_prev(0)
    , action_details(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_prev_type;
  _success_prev_type success_prev;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uuid_prev_type;
  _uuid_prev_type uuid_prev;

   typedef int8_t _action_type_prev_type;
  _action_type_prev_type action_type_prev;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _action_details_type;
  _action_details_type action_details;





  typedef boost::shared_ptr< ::context_action_framework::NextActionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::context_action_framework::NextActionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct NextActionRequest_

typedef ::context_action_framework::NextActionRequest_<std::allocator<void> > NextActionRequest;

typedef boost::shared_ptr< ::context_action_framework::NextActionRequest > NextActionRequestPtr;
typedef boost::shared_ptr< ::context_action_framework::NextActionRequest const> NextActionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::context_action_framework::NextActionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::context_action_framework::NextActionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::context_action_framework::NextActionRequest_<ContainerAllocator1> & lhs, const ::context_action_framework::NextActionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.success_prev == rhs.success_prev &&
    lhs.uuid_prev == rhs.uuid_prev &&
    lhs.action_type_prev == rhs.action_type_prev &&
    lhs.action_details == rhs.action_details;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::context_action_framework::NextActionRequest_<ContainerAllocator1> & lhs, const ::context_action_framework::NextActionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace context_action_framework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::NextActionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::NextActionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::NextActionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "027db128eacd14d57b50051b0b808d8a";
  }

  static const char* value(const ::context_action_framework::NextActionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x027db128eacd14d5ULL;
  static const uint64_t static_value2 = 0x7b50051b0b808d8aULL;
};

template<class ContainerAllocator>
struct DataType< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "context_action_framework/NextActionRequest";
  }

  static const char* value(const ::context_action_framework::NextActionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success_prev # did the previous action succeed?\n"
"string uuid_prev # prev action UUID\n"
"int8 action_type_prev # prev action_type\n"
"\n"
"# the previous action can return details\n"
"string action_details # json as string\n"
"\n"
;
  }

  static const char* value(const ::context_action_framework::NextActionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success_prev);
      stream.next(m.uuid_prev);
      stream.next(m.action_type_prev);
      stream.next(m.action_details);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NextActionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::context_action_framework::NextActionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::context_action_framework::NextActionRequest_<ContainerAllocator>& v)
  {
    s << indent << "success_prev: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success_prev);
    s << indent << "uuid_prev: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uuid_prev);
    s << indent << "action_type_prev: ";
    Printer<int8_t>::stream(s, indent + "  ", v.action_type_prev);
    s << indent << "action_details: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.action_details);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTEXT_ACTION_FRAMEWORK_MESSAGE_NEXTACTIONREQUEST_H