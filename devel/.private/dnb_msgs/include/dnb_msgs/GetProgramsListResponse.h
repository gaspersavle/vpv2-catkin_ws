// Generated by gencpp from file dnb_msgs/GetProgramsListResponse.msg
// DO NOT EDIT!


#ifndef DNB_MSGS_MESSAGE_GETPROGRAMSLISTRESPONSE_H
#define DNB_MSGS_MESSAGE_GETPROGRAMSLISTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dnb_msgs/Program.h>

namespace dnb_msgs
{
template <class ContainerAllocator>
struct GetProgramsListResponse_
{
  typedef GetProgramsListResponse_<ContainerAllocator> Type;

  GetProgramsListResponse_()
    : programs()  {
    }
  GetProgramsListResponse_(const ContainerAllocator& _alloc)
    : programs(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::dnb_msgs::Program_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dnb_msgs::Program_<ContainerAllocator> >> _programs_type;
  _programs_type programs;





  typedef boost::shared_ptr< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetProgramsListResponse_

typedef ::dnb_msgs::GetProgramsListResponse_<std::allocator<void> > GetProgramsListResponse;

typedef boost::shared_ptr< ::dnb_msgs::GetProgramsListResponse > GetProgramsListResponsePtr;
typedef boost::shared_ptr< ::dnb_msgs::GetProgramsListResponse const> GetProgramsListResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator1> & lhs, const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator2> & rhs)
{
  return lhs.programs == rhs.programs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator1> & lhs, const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dnb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "72cea8df2b0c1e870498322f5ffbab0b";
  }

  static const char* value(const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x72cea8df2b0c1e87ULL;
  static const uint64_t static_value2 = 0x0498322f5ffbab0bULL;
};

template<class ContainerAllocator>
struct DataType< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnb_msgs/GetProgramsListResponse";
  }

  static const char* value(const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Program[] programs\n"
"\n"
"================================================================================\n"
"MSG: dnb_msgs/Program\n"
"string name\n"
"Argument[] arguments\n"
"================================================================================\n"
"MSG: dnb_msgs/Argument\n"
"string name\n"
"string type\n"
"string value\n"
;
  }

  static const char* value(const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.programs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetProgramsListResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnb_msgs::GetProgramsListResponse_<ContainerAllocator>& v)
  {
    s << indent << "programs[]" << std::endl;
    for (size_t i = 0; i < v.programs.size(); ++i)
    {
      s << indent << "  programs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dnb_msgs::Program_<ContainerAllocator> >::stream(s, indent + "    ", v.programs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNB_MSGS_MESSAGE_GETPROGRAMSLISTRESPONSE_H
