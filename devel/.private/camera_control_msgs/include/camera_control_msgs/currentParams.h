// Generated by gencpp from file camera_control_msgs/currentParams.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_CURRENTPARAMS_H
#define CAMERA_CONTROL_MSGS_MESSAGE_CURRENTPARAMS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/RegionOfInterest.h>

namespace camera_control_msgs
{
template <class ContainerAllocator>
struct currentParams_
{
  typedef currentParams_<ContainerAllocator> Type;

  currentParams_()
    : offset_x(0)
    , offset_y(0)
    , reverse_x(false)
    , reverse_y(false)
    , black_level(0)
    , pgi_mode(0)
    , demosaicing_mode(0)
    , noise_reduction(0.0)
    , sharpness_enhancement(0.0)
    , light_source_preset(0)
    , balance_white_auto(0)
    , sensor_readout_mode(0)
    , acquisition_frame_count(0)
    , trigger_selector(0)
    , trigger_mode(0)
    , trigger_source(0)
    , trigger_activation(0)
    , trigger_delay(0.0)
    , user_set_selector(0)
    , user_set_default_selector(0)
    , is_sleeping(false)
    , brightness(0.0)
    , exposure(0.0)
    , gain(0.0)
    , gamma(0.0)
    , binning_x(0)
    , binning_y(0)
    , MaxNumBuffer(0)
    , roi()
    , available_image_encoding()
    , current_image_encoding()
    , current_image_ros_encoding()
    , sucess(false)
    , message()
    , temperature(0.0)  {
    }
  currentParams_(const ContainerAllocator& _alloc)
    : offset_x(0)
    , offset_y(0)
    , reverse_x(false)
    , reverse_y(false)
    , black_level(0)
    , pgi_mode(0)
    , demosaicing_mode(0)
    , noise_reduction(0.0)
    , sharpness_enhancement(0.0)
    , light_source_preset(0)
    , balance_white_auto(0)
    , sensor_readout_mode(0)
    , acquisition_frame_count(0)
    , trigger_selector(0)
    , trigger_mode(0)
    , trigger_source(0)
    , trigger_activation(0)
    , trigger_delay(0.0)
    , user_set_selector(0)
    , user_set_default_selector(0)
    , is_sleeping(false)
    , brightness(0.0)
    , exposure(0.0)
    , gain(0.0)
    , gamma(0.0)
    , binning_x(0)
    , binning_y(0)
    , MaxNumBuffer(0)
    , roi(_alloc)
    , available_image_encoding(_alloc)
    , current_image_encoding(_alloc)
    , current_image_ros_encoding(_alloc)
    , sucess(false)
    , message(_alloc)
    , temperature(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _offset_x_type;
  _offset_x_type offset_x;

   typedef uint32_t _offset_y_type;
  _offset_y_type offset_y;

   typedef uint8_t _reverse_x_type;
  _reverse_x_type reverse_x;

   typedef uint8_t _reverse_y_type;
  _reverse_y_type reverse_y;

   typedef int32_t _black_level_type;
  _black_level_type black_level;

   typedef int32_t _pgi_mode_type;
  _pgi_mode_type pgi_mode;

   typedef int32_t _demosaicing_mode_type;
  _demosaicing_mode_type demosaicing_mode;

   typedef float _noise_reduction_type;
  _noise_reduction_type noise_reduction;

   typedef float _sharpness_enhancement_type;
  _sharpness_enhancement_type sharpness_enhancement;

   typedef int32_t _light_source_preset_type;
  _light_source_preset_type light_source_preset;

   typedef int32_t _balance_white_auto_type;
  _balance_white_auto_type balance_white_auto;

   typedef int32_t _sensor_readout_mode_type;
  _sensor_readout_mode_type sensor_readout_mode;

   typedef int32_t _acquisition_frame_count_type;
  _acquisition_frame_count_type acquisition_frame_count;

   typedef int32_t _trigger_selector_type;
  _trigger_selector_type trigger_selector;

   typedef int32_t _trigger_mode_type;
  _trigger_mode_type trigger_mode;

   typedef int32_t _trigger_source_type;
  _trigger_source_type trigger_source;

   typedef int32_t _trigger_activation_type;
  _trigger_activation_type trigger_activation;

   typedef float _trigger_delay_type;
  _trigger_delay_type trigger_delay;

   typedef int32_t _user_set_selector_type;
  _user_set_selector_type user_set_selector;

   typedef int32_t _user_set_default_selector_type;
  _user_set_default_selector_type user_set_default_selector;

   typedef uint8_t _is_sleeping_type;
  _is_sleeping_type is_sleeping;

   typedef float _brightness_type;
  _brightness_type brightness;

   typedef float _exposure_type;
  _exposure_type exposure;

   typedef float _gain_type;
  _gain_type gain;

   typedef float _gamma_type;
  _gamma_type gamma;

   typedef uint32_t _binning_x_type;
  _binning_x_type binning_x;

   typedef uint32_t _binning_y_type;
  _binning_y_type binning_y;

   typedef int32_t _MaxNumBuffer_type;
  _MaxNumBuffer_type MaxNumBuffer;

   typedef  ::sensor_msgs::RegionOfInterest_<ContainerAllocator>  _roi_type;
  _roi_type roi;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _available_image_encoding_type;
  _available_image_encoding_type available_image_encoding;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _current_image_encoding_type;
  _current_image_encoding_type current_image_encoding;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _current_image_ros_encoding_type;
  _current_image_ros_encoding_type current_image_ros_encoding;

   typedef uint8_t _sucess_type;
  _sucess_type sucess;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;

   typedef float _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::camera_control_msgs::currentParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::currentParams_<ContainerAllocator> const> ConstPtr;

}; // struct currentParams_

typedef ::camera_control_msgs::currentParams_<std::allocator<void> > currentParams;

typedef boost::shared_ptr< ::camera_control_msgs::currentParams > currentParamsPtr;
typedef boost::shared_ptr< ::camera_control_msgs::currentParams const> currentParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::currentParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::currentParams_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::camera_control_msgs::currentParams_<ContainerAllocator1> & lhs, const ::camera_control_msgs::currentParams_<ContainerAllocator2> & rhs)
{
  return lhs.offset_x == rhs.offset_x &&
    lhs.offset_y == rhs.offset_y &&
    lhs.reverse_x == rhs.reverse_x &&
    lhs.reverse_y == rhs.reverse_y &&
    lhs.black_level == rhs.black_level &&
    lhs.pgi_mode == rhs.pgi_mode &&
    lhs.demosaicing_mode == rhs.demosaicing_mode &&
    lhs.noise_reduction == rhs.noise_reduction &&
    lhs.sharpness_enhancement == rhs.sharpness_enhancement &&
    lhs.light_source_preset == rhs.light_source_preset &&
    lhs.balance_white_auto == rhs.balance_white_auto &&
    lhs.sensor_readout_mode == rhs.sensor_readout_mode &&
    lhs.acquisition_frame_count == rhs.acquisition_frame_count &&
    lhs.trigger_selector == rhs.trigger_selector &&
    lhs.trigger_mode == rhs.trigger_mode &&
    lhs.trigger_source == rhs.trigger_source &&
    lhs.trigger_activation == rhs.trigger_activation &&
    lhs.trigger_delay == rhs.trigger_delay &&
    lhs.user_set_selector == rhs.user_set_selector &&
    lhs.user_set_default_selector == rhs.user_set_default_selector &&
    lhs.is_sleeping == rhs.is_sleeping &&
    lhs.brightness == rhs.brightness &&
    lhs.exposure == rhs.exposure &&
    lhs.gain == rhs.gain &&
    lhs.gamma == rhs.gamma &&
    lhs.binning_x == rhs.binning_x &&
    lhs.binning_y == rhs.binning_y &&
    lhs.MaxNumBuffer == rhs.MaxNumBuffer &&
    lhs.roi == rhs.roi &&
    lhs.available_image_encoding == rhs.available_image_encoding &&
    lhs.current_image_encoding == rhs.current_image_encoding &&
    lhs.current_image_ros_encoding == rhs.current_image_ros_encoding &&
    lhs.sucess == rhs.sucess &&
    lhs.message == rhs.message &&
    lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::camera_control_msgs::currentParams_<ContainerAllocator1> & lhs, const ::camera_control_msgs::currentParams_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::currentParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::currentParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::currentParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::currentParams_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::currentParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::currentParams_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::currentParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "442a674eef3748e9fe89b83004286960";
  }

  static const char* value(const ::camera_control_msgs::currentParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x442a674eef3748e9ULL;
  static const uint64_t static_value2 = 0xfe89b83004286960ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::currentParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/currentParams";
  }

  static const char* value(const ::camera_control_msgs::currentParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::currentParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 offset_x # -20000 = Error	\n"
"uint32 offset_y # -20000 = Error\n"
"bool reverse_x\n"
"bool reverse_y\n"
"\n"
"int32 black_level # -10000 = error/not available\n"
"\n"
"int32 pgi_mode # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Off, 1 = On\n"
"int32 demosaicing_mode # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Simple, 1 = BaslerPGI\n"
"float32 noise_reduction # -20000.0 = Error, -10000.0 = Not available \n"
"float32 sharpness_enhancement # -20000.0 = Error, -10000.0 = Not available \n"
"int32 light_source_preset # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Off, 1 = Daylight5000K, 2 = Daylight6500K, 3 = Tungsten2800K\n"
"int32 balance_white_auto # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Off, 1 = Once, 2 = Continuous\n"
"\n"
"int32 sensor_readout_mode # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Normal, 1 = Fast\n"
"int32 acquisition_frame_count # -20000 = Error, -10000 = Not available \n"
"int32 trigger_selector # -3 = Unknown, -2 = Error, -1 = Not available, 0 = FrameStart, 1 = FrameBurstStart(USB)/AcquisitionStart(GigE)\n"
"int32 trigger_mode # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Off, 1 = On\n"
"int32 trigger_source # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Software, 1 = Line1, 2 = Line3, 3 = Line4, 4 = Action1(Selected Gige)\n"
"int32 trigger_activation # -3 = Unknown, -2 = Error, -1 = Not available, 0 = RisingEdge, 1 = FallingEdge\n"
"float32 trigger_delay # -20000.0 = Error, -10000.0 = Not available \n"
"\n"
"int32 user_set_selector # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Default, 1 = UserSet1, 2 = UserSet2, 3 = UserSet3, 4 = HighGain, 5 = AutoFunctions, 6 = ColorRaw\n"
"int32 user_set_default_selector # -3 = Unknown, -2 = Error, -1 = Not available, 0 = Default, 1 = UserSet1, 2 = UserSet2, 3 = UserSet3, 4 = HighGain, 5 = AutoFunctions, 6 = ColorRaw \n"
"\n"
"bool is_sleeping\n"
"float32 brightness\n"
"float32 exposure\n"
"float32 gain\n"
"float32 gamma \n"
"uint32 binning_x\n"
"uint32 binning_y\n"
"int32 MaxNumBuffer		# -2 = Error, -1 = Not available\n"
"sensor_msgs/RegionOfInterest roi\n"
"\n"
"string[] available_image_encoding\n"
"string current_image_encoding\n"
"string current_image_ros_encoding\n"
"\n"
"bool sucess\n"
"string message\n"
"\n"
"float32 temperature # Shows the camera temperature. If not available, then 0.0. USB uses DeviceTemperature and GigE TemperatureAbs parameters.\n"
"================================================================================\n"
"MSG: sensor_msgs/RegionOfInterest\n"
"# This message is used to specify a region of interest within an image.\n"
"#\n"
"# When used to specify the ROI setting of the camera when the image was\n"
"# taken, the height and width fields should either match the height and\n"
"# width fields for the associated image; or height = width = 0\n"
"# indicates that the full resolution image was captured.\n"
"\n"
"uint32 x_offset  # Leftmost pixel of the ROI\n"
"                 # (0 if the ROI includes the left edge of the image)\n"
"uint32 y_offset  # Topmost pixel of the ROI\n"
"                 # (0 if the ROI includes the top edge of the image)\n"
"uint32 height    # Height of ROI\n"
"uint32 width     # Width of ROI\n"
"\n"
"# True if a distinct rectified ROI should be calculated from the \"raw\"\n"
"# ROI in this message. Typically this should be False if the full image\n"
"# is captured (ROI not used), and True if a subwindow is captured (ROI\n"
"# used).\n"
"bool do_rectify\n"
;
  }

  static const char* value(const ::camera_control_msgs::currentParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::currentParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.offset_x);
      stream.next(m.offset_y);
      stream.next(m.reverse_x);
      stream.next(m.reverse_y);
      stream.next(m.black_level);
      stream.next(m.pgi_mode);
      stream.next(m.demosaicing_mode);
      stream.next(m.noise_reduction);
      stream.next(m.sharpness_enhancement);
      stream.next(m.light_source_preset);
      stream.next(m.balance_white_auto);
      stream.next(m.sensor_readout_mode);
      stream.next(m.acquisition_frame_count);
      stream.next(m.trigger_selector);
      stream.next(m.trigger_mode);
      stream.next(m.trigger_source);
      stream.next(m.trigger_activation);
      stream.next(m.trigger_delay);
      stream.next(m.user_set_selector);
      stream.next(m.user_set_default_selector);
      stream.next(m.is_sleeping);
      stream.next(m.brightness);
      stream.next(m.exposure);
      stream.next(m.gain);
      stream.next(m.gamma);
      stream.next(m.binning_x);
      stream.next(m.binning_y);
      stream.next(m.MaxNumBuffer);
      stream.next(m.roi);
      stream.next(m.available_image_encoding);
      stream.next(m.current_image_encoding);
      stream.next(m.current_image_ros_encoding);
      stream.next(m.sucess);
      stream.next(m.message);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct currentParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::currentParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::currentParams_<ContainerAllocator>& v)
  {
    s << indent << "offset_x: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.offset_x);
    s << indent << "offset_y: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.offset_y);
    s << indent << "reverse_x: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reverse_x);
    s << indent << "reverse_y: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reverse_y);
    s << indent << "black_level: ";
    Printer<int32_t>::stream(s, indent + "  ", v.black_level);
    s << indent << "pgi_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.pgi_mode);
    s << indent << "demosaicing_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.demosaicing_mode);
    s << indent << "noise_reduction: ";
    Printer<float>::stream(s, indent + "  ", v.noise_reduction);
    s << indent << "sharpness_enhancement: ";
    Printer<float>::stream(s, indent + "  ", v.sharpness_enhancement);
    s << indent << "light_source_preset: ";
    Printer<int32_t>::stream(s, indent + "  ", v.light_source_preset);
    s << indent << "balance_white_auto: ";
    Printer<int32_t>::stream(s, indent + "  ", v.balance_white_auto);
    s << indent << "sensor_readout_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sensor_readout_mode);
    s << indent << "acquisition_frame_count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.acquisition_frame_count);
    s << indent << "trigger_selector: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trigger_selector);
    s << indent << "trigger_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trigger_mode);
    s << indent << "trigger_source: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trigger_source);
    s << indent << "trigger_activation: ";
    Printer<int32_t>::stream(s, indent + "  ", v.trigger_activation);
    s << indent << "trigger_delay: ";
    Printer<float>::stream(s, indent + "  ", v.trigger_delay);
    s << indent << "user_set_selector: ";
    Printer<int32_t>::stream(s, indent + "  ", v.user_set_selector);
    s << indent << "user_set_default_selector: ";
    Printer<int32_t>::stream(s, indent + "  ", v.user_set_default_selector);
    s << indent << "is_sleeping: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_sleeping);
    s << indent << "brightness: ";
    Printer<float>::stream(s, indent + "  ", v.brightness);
    s << indent << "exposure: ";
    Printer<float>::stream(s, indent + "  ", v.exposure);
    s << indent << "gain: ";
    Printer<float>::stream(s, indent + "  ", v.gain);
    s << indent << "gamma: ";
    Printer<float>::stream(s, indent + "  ", v.gamma);
    s << indent << "binning_x: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.binning_x);
    s << indent << "binning_y: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.binning_y);
    s << indent << "MaxNumBuffer: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MaxNumBuffer);
    s << indent << "roi: ";
    s << std::endl;
    Printer< ::sensor_msgs::RegionOfInterest_<ContainerAllocator> >::stream(s, indent + "  ", v.roi);
    s << indent << "available_image_encoding[]" << std::endl;
    for (size_t i = 0; i < v.available_image_encoding.size(); ++i)
    {
      s << indent << "  available_image_encoding[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.available_image_encoding[i]);
    }
    s << indent << "current_image_encoding: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.current_image_encoding);
    s << indent << "current_image_ros_encoding: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.current_image_ros_encoding);
    s << indent << "sucess: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sucess);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_CURRENTPARAMS_H