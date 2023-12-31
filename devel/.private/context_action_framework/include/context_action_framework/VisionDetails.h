// Generated by gencpp from file context_action_framework/VisionDetails.msg
// DO NOT EDIT!


#ifndef CONTEXT_ACTION_FRAMEWORK_MESSAGE_VISIONDETAILS_H
#define CONTEXT_ACTION_FRAMEWORK_MESSAGE_VISIONDETAILS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <context_action_framework/Detection.h>
#include <context_action_framework/Gap.h>

namespace context_action_framework
{
template <class ContainerAllocator>
struct VisionDetails_
{
  typedef VisionDetails_<ContainerAllocator> Type;

  VisionDetails_()
    : header()
    , camera_acquisition_stamp()
    , gap_detection(false)
    , detections()
    , gaps()  {
    }
  VisionDetails_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , camera_acquisition_stamp()
    , gap_detection(false)
    , detections(_alloc)
    , gaps(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef ros::Time _camera_acquisition_stamp_type;
  _camera_acquisition_stamp_type camera_acquisition_stamp;

   typedef uint8_t _gap_detection_type;
  _gap_detection_type gap_detection;

   typedef std::vector< ::context_action_framework::Detection_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::context_action_framework::Detection_<ContainerAllocator> >> _detections_type;
  _detections_type detections;

   typedef std::vector< ::context_action_framework::Gap_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::context_action_framework::Gap_<ContainerAllocator> >> _gaps_type;
  _gaps_type gaps;





  typedef boost::shared_ptr< ::context_action_framework::VisionDetails_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::context_action_framework::VisionDetails_<ContainerAllocator> const> ConstPtr;

}; // struct VisionDetails_

typedef ::context_action_framework::VisionDetails_<std::allocator<void> > VisionDetails;

typedef boost::shared_ptr< ::context_action_framework::VisionDetails > VisionDetailsPtr;
typedef boost::shared_ptr< ::context_action_framework::VisionDetails const> VisionDetailsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::context_action_framework::VisionDetails_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::context_action_framework::VisionDetails_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::context_action_framework::VisionDetails_<ContainerAllocator1> & lhs, const ::context_action_framework::VisionDetails_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.camera_acquisition_stamp == rhs.camera_acquisition_stamp &&
    lhs.gap_detection == rhs.gap_detection &&
    lhs.detections == rhs.detections &&
    lhs.gaps == rhs.gaps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::context_action_framework::VisionDetails_<ContainerAllocator1> & lhs, const ::context_action_framework::VisionDetails_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace context_action_framework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::VisionDetails_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::VisionDetails_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::VisionDetails_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::VisionDetails_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::VisionDetails_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::VisionDetails_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::context_action_framework::VisionDetails_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3eb2653d2dafc55117673781a5c8184";
  }

  static const char* value(const ::context_action_framework::VisionDetails_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3eb2653d2dafc55ULL;
  static const uint64_t static_value2 = 0x117673781a5c8184ULL;
};

template<class ContainerAllocator>
struct DataType< ::context_action_framework::VisionDetails_<ContainerAllocator> >
{
  static const char* value()
  {
    return "context_action_framework/VisionDetails";
  }

  static const char* value(const ::context_action_framework::VisionDetails_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::context_action_framework::VisionDetails_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"time camera_acquisition_stamp\n"
"bool gap_detection\n"
"context_action_framework/Detection[] detections\n"
"context_action_framework/Gap[] gaps\n"
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
"\n"
"================================================================================\n"
"MSG: context_action_framework/Gap\n"
"int8 id\n"
"\n"
"# transform start of levering\n"
"geometry_msgs/Transform from_tf\n"
"\n"
"# transform end of levering\n"
"geometry_msgs/Transform to_tf\n"
"\n"
"# depth in meters\n"
"float32 from_depth\n"
"float32 to_depth\n"
"\n"
"# on which detection does the levering start\n"
"# context_action_framework/Detection from_det\n"
"\n"
"# on/in which detection does the levering end\n"
"# context_action_framework/Detection to_det\n"
"\n"
"# oriented bounding box of gap (meters)\n"
"float32[] obb\n"
"\n"
"# 3d oriented bounding box of gap (meters)\n"
"float32[] obb_3d\n"
;
  }

  static const char* value(const ::context_action_framework::VisionDetails_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::context_action_framework::VisionDetails_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.camera_acquisition_stamp);
      stream.next(m.gap_detection);
      stream.next(m.detections);
      stream.next(m.gaps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VisionDetails_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::context_action_framework::VisionDetails_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::context_action_framework::VisionDetails_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "camera_acquisition_stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.camera_acquisition_stamp);
    s << indent << "gap_detection: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gap_detection);
    s << indent << "detections[]" << std::endl;
    for (size_t i = 0; i < v.detections.size(); ++i)
    {
      s << indent << "  detections[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::context_action_framework::Detection_<ContainerAllocator> >::stream(s, indent + "    ", v.detections[i]);
    }
    s << indent << "gaps[]" << std::endl;
    for (size_t i = 0; i < v.gaps.size(); ++i)
    {
      s << indent << "  gaps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::context_action_framework::Gap_<ContainerAllocator> >::stream(s, indent + "    ", v.gaps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTEXT_ACTION_FRAMEWORK_MESSAGE_VISIONDETAILS_H
