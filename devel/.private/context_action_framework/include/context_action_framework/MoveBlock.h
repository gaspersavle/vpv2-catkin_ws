// Generated by gencpp from file context_action_framework/MoveBlock.msg
// DO NOT EDIT!


#ifndef CONTEXT_ACTION_FRAMEWORK_MESSAGE_MOVEBLOCK_H
#define CONTEXT_ACTION_FRAMEWORK_MESSAGE_MOVEBLOCK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Transform.h>

namespace context_action_framework
{
template <class ContainerAllocator>
struct MoveBlock_
{
  typedef MoveBlock_<ContainerAllocator> Type;

  MoveBlock_()
    : from_module(0)
    , from_tf()
    , to_module(0)
    , to_tf()
    , obb_3d()
    , robot(0)
    , end_effector(0)  {
    }
  MoveBlock_(const ContainerAllocator& _alloc)
    : from_module(0)
    , from_tf(_alloc)
    , to_module(0)
    , to_tf(_alloc)
    , obb_3d(_alloc)
    , robot(0)
    , end_effector(0)  {
  (void)_alloc;
    }



   typedef int8_t _from_module_type;
  _from_module_type from_module;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _from_tf_type;
  _from_tf_type from_tf;

   typedef int8_t _to_module_type;
  _to_module_type to_module;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _to_tf_type;
  _to_tf_type to_tf;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _obb_3d_type;
  _obb_3d_type obb_3d;

   typedef int8_t _robot_type;
  _robot_type robot;

   typedef int8_t _end_effector_type;
  _end_effector_type end_effector;





  typedef boost::shared_ptr< ::context_action_framework::MoveBlock_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::context_action_framework::MoveBlock_<ContainerAllocator> const> ConstPtr;

}; // struct MoveBlock_

typedef ::context_action_framework::MoveBlock_<std::allocator<void> > MoveBlock;

typedef boost::shared_ptr< ::context_action_framework::MoveBlock > MoveBlockPtr;
typedef boost::shared_ptr< ::context_action_framework::MoveBlock const> MoveBlockConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::context_action_framework::MoveBlock_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::context_action_framework::MoveBlock_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::context_action_framework::MoveBlock_<ContainerAllocator1> & lhs, const ::context_action_framework::MoveBlock_<ContainerAllocator2> & rhs)
{
  return lhs.from_module == rhs.from_module &&
    lhs.from_tf == rhs.from_tf &&
    lhs.to_module == rhs.to_module &&
    lhs.to_tf == rhs.to_tf &&
    lhs.obb_3d == rhs.obb_3d &&
    lhs.robot == rhs.robot &&
    lhs.end_effector == rhs.end_effector;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::context_action_framework::MoveBlock_<ContainerAllocator1> & lhs, const ::context_action_framework::MoveBlock_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace context_action_framework

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::MoveBlock_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::context_action_framework::MoveBlock_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::MoveBlock_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::context_action_framework::MoveBlock_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::MoveBlock_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::context_action_framework::MoveBlock_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::context_action_framework::MoveBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9c379bf0439aa211625fd0ca468ffee9";
  }

  static const char* value(const ::context_action_framework::MoveBlock_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9c379bf0439aa211ULL;
  static const uint64_t static_value2 = 0x625fd0ca468ffee9ULL;
};

template<class ContainerAllocator>
struct DataType< ::context_action_framework::MoveBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "context_action_framework/MoveBlock";
  }

  static const char* value(const ::context_action_framework::MoveBlock_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::context_action_framework::MoveBlock_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Module enum\n"
"int8 from_module\n"
"\n"
"# move from transform\n"
"geometry_msgs/Transform from_tf\n"
"\n"
"# Module enum\n"
"int8 to_module\n"
"\n"
"# move to transform\n"
"geometry_msgs/Transform to_tf\n"
"\n"
"float32[] obb_3d\n"
"\n"
"# Robot enum\n"
"int8 robot\n"
"\n"
"# EndEffector enum\n"
"int8 end_effector\n"
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

  static const char* value(const ::context_action_framework::MoveBlock_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::context_action_framework::MoveBlock_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.from_module);
      stream.next(m.from_tf);
      stream.next(m.to_module);
      stream.next(m.to_tf);
      stream.next(m.obb_3d);
      stream.next(m.robot);
      stream.next(m.end_effector);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveBlock_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::context_action_framework::MoveBlock_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::context_action_framework::MoveBlock_<ContainerAllocator>& v)
  {
    s << indent << "from_module: ";
    Printer<int8_t>::stream(s, indent + "  ", v.from_module);
    s << indent << "from_tf: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.from_tf);
    s << indent << "to_module: ";
    Printer<int8_t>::stream(s, indent + "  ", v.to_module);
    s << indent << "to_tf: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.to_tf);
    s << indent << "obb_3d[]" << std::endl;
    for (size_t i = 0; i < v.obb_3d.size(); ++i)
    {
      s << indent << "  obb_3d[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.obb_3d[i]);
    }
    s << indent << "robot: ";
    Printer<int8_t>::stream(s, indent + "  ", v.robot);
    s << indent << "end_effector: ";
    Printer<int8_t>::stream(s, indent + "  ", v.end_effector);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTEXT_ACTION_FRAMEWORK_MESSAGE_MOVEBLOCK_H