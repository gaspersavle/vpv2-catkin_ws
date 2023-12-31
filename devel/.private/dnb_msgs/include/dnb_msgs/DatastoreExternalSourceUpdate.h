// Generated by gencpp from file dnb_msgs/DatastoreExternalSourceUpdate.msg
// DO NOT EDIT!


#ifndef DNB_MSGS_MESSAGE_DATASTOREEXTERNALSOURCEUPDATE_H
#define DNB_MSGS_MESSAGE_DATASTOREEXTERNALSOURCEUPDATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <dnb_msgs/DatastoreExternalEntry.h>

namespace dnb_msgs
{
template <class ContainerAllocator>
struct DatastoreExternalSourceUpdate_
{
  typedef DatastoreExternalSourceUpdate_<ContainerAllocator> Type;

  DatastoreExternalSourceUpdate_()
    : header()
    , source()
    , entries()  {
    }
  DatastoreExternalSourceUpdate_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , source(_alloc)
    , entries(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _source_type;
  _source_type source;

   typedef std::vector< ::dnb_msgs::DatastoreExternalEntry_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::dnb_msgs::DatastoreExternalEntry_<ContainerAllocator> >> _entries_type;
  _entries_type entries;





  typedef boost::shared_ptr< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct DatastoreExternalSourceUpdate_

typedef ::dnb_msgs::DatastoreExternalSourceUpdate_<std::allocator<void> > DatastoreExternalSourceUpdate;

typedef boost::shared_ptr< ::dnb_msgs::DatastoreExternalSourceUpdate > DatastoreExternalSourceUpdatePtr;
typedef boost::shared_ptr< ::dnb_msgs::DatastoreExternalSourceUpdate const> DatastoreExternalSourceUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator1> & lhs, const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.source == rhs.source &&
    lhs.entries == rhs.entries;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator1> & lhs, const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace dnb_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5d33e29f01329ea3b4ee770fb21f027e";
  }

  static const char* value(const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5d33e29f01329ea3ULL;
  static const uint64_t static_value2 = 0xb4ee770fb21f027eULL;
};

template<class ContainerAllocator>
struct DataType< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnb_msgs/DatastoreExternalSourceUpdate";
  }

  static const char* value(const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string source\n"
"DatastoreExternalEntry[] entries\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: dnb_msgs/DatastoreExternalEntry\n"
"string source\n"
"string source_id\n"
"string value\n"
"string type\n"
"string display_title\n"
"bool editable\n"
;
  }

  static const char* value(const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.source);
      stream.next(m.entries);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DatastoreExternalSourceUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnb_msgs::DatastoreExternalSourceUpdate_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "source: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.source);
    s << indent << "entries[]" << std::endl;
    for (size_t i = 0; i < v.entries.size(); ++i)
    {
      s << indent << "  entries[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dnb_msgs::DatastoreExternalEntry_<ContainerAllocator> >::stream(s, indent + "    ", v.entries[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNB_MSGS_MESSAGE_DATASTOREEXTERNALSOURCEUPDATE_H
