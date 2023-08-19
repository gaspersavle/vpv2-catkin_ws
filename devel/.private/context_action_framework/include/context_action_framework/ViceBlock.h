// Generated by gencpp from file context_action_framework/ViceBlock.msg
// DO NOT EDIT!


#ifndef CONTEXT_ACTION_FRAMEWORK_MESSAGE_VICEBLOCK_H
#define CONTEXT_ACTION_FRAMEWORK_MESSAGE_VICEBLOCK_H


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
struct ViceBlock_
{
  typedef ViceBlock_<ContainerAllocator> Type;

  ViceBlock_()
    : module(0)
    , clamp(false)
    , turn_over(false)  {
    }
  ViceBlock_(const ContainerAllocator& _alloc)
    : module(0)
    , clamp(false)
    , turn_over(false)  {
  (void)_alloc;
    }



   typedef int8_t _module_type;
  _module_type module;

   typedef uint8_t _clamp_type;
  _clamp_type clamp;

   typedef uint8_t _turn_over_type;
  _turn_over_type turn_over;





  typedef boost::shared_ptr< ::context_action_framework::ViceBlock_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::context_action_framework::ViceBlock_<ContainerAllocator> const> ConstPtr;

}; // struct ViceBlock_

typedef ::context_action_framework::ViceBlock_<std::allocator<void> > ViceBlock;

typedef boost::shared_ptr< ::context_action_framework::ViceBlock > ViceBlockPtr;
typedef boost::shared_ptr< ::context_action_framework::ViceBlock const> ViceBlockConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::context_action_framework::ViceBlock_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::context_action_framework::ViceBlock_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::context_action_framework::ViceBlock_<ContainerAllocator1> & lhs, const ::context_action_framework::ViceBlock_<ContainerAllocator2> & rhs)
{
  return lhs.module == rhs.module &&
    lhs.clamp == rhs.clamp &&
    lhs.turn_over == rhs.turn_over;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::context_action_framework::ViceBlock_<ContainerAllocator1> & lhs, const ::context_action_framework::ViceBlock_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace context_action_framework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::ViceBlock_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::ViceBlock_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::ViceBlock_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::ViceBlock_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::ViceBlock_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::ViceBlock_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::context_action_framework::ViceBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bc5ee0d433fee744520e4f066921b9b";
  }

  static const char* value(const ::context_action_framework::ViceBlock_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bc5ee0d433fee74ULL;
  static const uint64_t static_value2 = 0x4520e4f066921b9bULL;
};

template<class ContainerAllocator>
struct DataType< ::context_action_framework::ViceBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "context_action_framework/ViceBlock";
  }

  static const char* value(const ::context_action_framework::ViceBlock_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::context_action_framework::ViceBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Module enum\n"
"int8 module\n"
"\n"
"bool clamp\n"
"\n"
"bool turn_over\n"
;
  }

  static const char* value(const ::context_action_framework::ViceBlock_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::context_action_framework::ViceBlock_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.module);
      stream.next(m.clamp);
      stream.next(m.turn_over);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ViceBlock_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::context_action_framework::ViceBlock_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::context_action_framework::ViceBlock_<ContainerAllocator>& v)
  {
    s << indent << "module: ";
    Printer<int8_t>::stream(s, indent + "  ", v.module);
    s << indent << "clamp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.clamp);
    s << indent << "turn_over: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.turn_over);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTEXT_ACTION_FRAMEWORK_MESSAGE_VICEBLOCK_H
