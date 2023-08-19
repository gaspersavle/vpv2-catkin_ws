// Generated by gencpp from file context_action_framework/Detections.msg
// DO NOT EDIT!


#ifndef CONTEXT_ACTION_FRAMEWORK_MESSAGE_DETECTIONS_H
#define CONTEXT_ACTION_FRAMEWORK_MESSAGE_DETECTIONS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <context_action_framework/Detection.h>

namespace context_action_framework
{
template <class ContainerAllocator>
struct Detections_
{
  typedef Detections_<ContainerAllocator> Type;

  Detections_()
    : header()
    , camera_acquisition_stamp()
    , detections()  {
    }
  Detections_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , camera_acquisition_stamp()
    , detections(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef ros::Time _camera_acquisition_stamp_type;
  _camera_acquisition_stamp_type camera_acquisition_stamp;

   typedef std::vector< ::context_action_framework::Detection_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::context_action_framework::Detection_<ContainerAllocator> >> _detections_type;
  _detections_type detections;





  typedef boost::shared_ptr< ::context_action_framework::Detections_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::context_action_framework::Detections_<ContainerAllocator> const> ConstPtr;

}; // struct Detections_

typedef ::context_action_framework::Detections_<std::allocator<void> > Detections;

typedef boost::shared_ptr< ::context_action_framework::Detections > DetectionsPtr;
typedef boost::shared_ptr< ::context_action_framework::Detections const> DetectionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::context_action_framework::Detections_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::context_action_framework::Detections_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::context_action_framework::Detections_<ContainerAllocator1> & lhs, const ::context_action_framework::Detections_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.camera_acquisition_stamp == rhs.camera_acquisition_stamp &&
    lhs.detections == rhs.detections;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::context_action_framework::Detections_<ContainerAllocator1> & lhs, const ::context_action_framework::Detections_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace context_action_framework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::Detections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::Detections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::Detections_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::Detections_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::Detections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::Detections_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::context_action_framework::Detections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5d4d5bef425fa42fd27b9e6117794d66";
  }

  static const char* value(const ::context_action_framework::Detections_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5d4d5bef425fa42fULL;
  static const uint64_t static_value2 = 0xd27b9e6117794d66ULL;
};

template<class ContainerAllocator>
struct DataType< ::context_action_framework::Detections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "context_action_framework/Detections";
  }

  static const char* value(const ::context_action_framework::Detections_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::context_action_framework::Detections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"time camera_acquisition_stamp\n"
"context_action_framework/Detection[] detections\n"
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
"MSG: context_action_framework/Detection\n"
"int64 id\n"
"int64 tracking_id\n"
"\n"
"int8 label    # Label intEnum\n"
"float32 score # segmentation score\n"
"\n"
"# in pixel coords\n"
"geometry_msgs/Transform tf_px   # transform of object center\n"
"float32[] box_px                # non-oriented bounding box\n"
"float32[] obb_px                # oriented bounding box\n"
"float32[] center_px\n"
"float32[] polygon_px\n"
"\n"
"# in world coords (meters)\n"
"geometry_msgs/Transform tf\n"
"float32[] box\n"
"float32[] obb\n"
"float32[] center\n"
"float32[] polygon\n"
"\n"
"# in world coords the cuboid containing the object\n"
"float32[] obb_3d\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Transform\n"
"# This represents the transform between two coordinate frames in free space.\n"
"\n"
"Vector3 translation\n"
"Quaternion rotation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::context_action_framework::Detections_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::context_action_framework::Detections_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.camera_acquisition_stamp);
      stream.next(m.detections);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Detections_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::context_action_framework::Detections_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::context_action_framework::Detections_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "camera_acquisition_stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.camera_acquisition_stamp);
    s << indent << "detections[]" << std::endl;
    for (size_t i = 0; i < v.detections.size(); ++i)
    {
      s << indent << "  detections[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::context_action_framework::Detection_<ContainerAllocator> >::stream(s, indent + "    ", v.detections[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTEXT_ACTION_FRAMEWORK_MESSAGE_DETECTIONS_H