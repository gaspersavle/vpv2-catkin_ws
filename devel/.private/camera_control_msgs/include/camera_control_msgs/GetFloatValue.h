// Generated by gencpp from file camera_control_msgs/GetFloatValue.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUE_H

#include <ros/service_traits.h>


#include <camera_control_msgs/GetFloatValueRequest.h>
#include <camera_control_msgs/GetFloatValueResponse.h>


namespace camera_control_msgs
{

struct GetFloatValue
{

typedef GetFloatValueRequest Request;
typedef GetFloatValueResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetFloatValue
} // namespace camera_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_control_msgs::GetFloatValue > {
  static const char* value()
  {
    return "43b10f831effee7a7ea5981fb2cf0b2c";
  }

  static const char* value(const ::camera_control_msgs::GetFloatValue&) { return value(); }
};

template<>
struct DataType< ::camera_control_msgs::GetFloatValue > {
  static const char* value()
  {
    return "camera_control_msgs/GetFloatValue";
  }

  static const char* value(const ::camera_control_msgs::GetFloatValue&) { return value(); }
};


// service_traits::MD5Sum< ::camera_control_msgs::GetFloatValueRequest> should match
// service_traits::MD5Sum< ::camera_control_msgs::GetFloatValue >
template<>
struct MD5Sum< ::camera_control_msgs::GetFloatValueRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::GetFloatValue >::value();
  }
  static const char* value(const ::camera_control_msgs::GetFloatValueRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::GetFloatValueRequest> should match
// service_traits::DataType< ::camera_control_msgs::GetFloatValue >
template<>
struct DataType< ::camera_control_msgs::GetFloatValueRequest>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::GetFloatValue >::value();
  }
  static const char* value(const ::camera_control_msgs::GetFloatValueRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_control_msgs::GetFloatValueResponse> should match
// service_traits::MD5Sum< ::camera_control_msgs::GetFloatValue >
template<>
struct MD5Sum< ::camera_control_msgs::GetFloatValueResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::GetFloatValue >::value();
  }
  static const char* value(const ::camera_control_msgs::GetFloatValueResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::GetFloatValueResponse> should match
// service_traits::DataType< ::camera_control_msgs::GetFloatValue >
template<>
struct DataType< ::camera_control_msgs::GetFloatValueResponse>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::GetFloatValue >::value();
  }
  static const char* value(const ::camera_control_msgs::GetFloatValueResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_GETFLOATVALUE_H