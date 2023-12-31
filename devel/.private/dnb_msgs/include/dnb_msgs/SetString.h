// Generated by gencpp from file dnb_msgs/SetString.msg
// DO NOT EDIT!


#ifndef DNB_MSGS_MESSAGE_SETSTRING_H
#define DNB_MSGS_MESSAGE_SETSTRING_H

#include <ros/service_traits.h>


#include <dnb_msgs/SetStringRequest.h>
#include <dnb_msgs/SetStringResponse.h>


namespace dnb_msgs
{

struct SetString
{

typedef SetStringRequest Request;
typedef SetStringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetString
} // namespace dnb_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dnb_msgs::SetString > {
  static const char* value()
  {
    return "546971982e3fbbd5a41e60fb6432e357";
  }

  static const char* value(const ::dnb_msgs::SetString&) { return value(); }
};

template<>
struct DataType< ::dnb_msgs::SetString > {
  static const char* value()
  {
    return "dnb_msgs/SetString";
  }

  static const char* value(const ::dnb_msgs::SetString&) { return value(); }
};


// service_traits::MD5Sum< ::dnb_msgs::SetStringRequest> should match
// service_traits::MD5Sum< ::dnb_msgs::SetString >
template<>
struct MD5Sum< ::dnb_msgs::SetStringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dnb_msgs::SetString >::value();
  }
  static const char* value(const ::dnb_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dnb_msgs::SetStringRequest> should match
// service_traits::DataType< ::dnb_msgs::SetString >
template<>
struct DataType< ::dnb_msgs::SetStringRequest>
{
  static const char* value()
  {
    return DataType< ::dnb_msgs::SetString >::value();
  }
  static const char* value(const ::dnb_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dnb_msgs::SetStringResponse> should match
// service_traits::MD5Sum< ::dnb_msgs::SetString >
template<>
struct MD5Sum< ::dnb_msgs::SetStringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dnb_msgs::SetString >::value();
  }
  static const char* value(const ::dnb_msgs::SetStringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dnb_msgs::SetStringResponse> should match
// service_traits::DataType< ::dnb_msgs::SetString >
template<>
struct DataType< ::dnb_msgs::SetStringResponse>
{
  static const char* value()
  {
    return DataType< ::dnb_msgs::SetString >::value();
  }
  static const char* value(const ::dnb_msgs::SetStringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DNB_MSGS_MESSAGE_SETSTRING_H
