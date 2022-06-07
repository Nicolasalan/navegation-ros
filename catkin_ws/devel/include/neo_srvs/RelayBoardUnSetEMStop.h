// Generated by gencpp from file neo_srvs/RelayBoardUnSetEMStop.msg
// DO NOT EDIT!


#ifndef NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOP_H
#define NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOP_H

#include <ros/service_traits.h>


#include <neo_srvs/RelayBoardUnSetEMStopRequest.h>
#include <neo_srvs/RelayBoardUnSetEMStopResponse.h>


namespace neo_srvs
{

struct RelayBoardUnSetEMStop
{

typedef RelayBoardUnSetEMStopRequest Request;
typedef RelayBoardUnSetEMStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RelayBoardUnSetEMStop
} // namespace neo_srvs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::neo_srvs::RelayBoardUnSetEMStop > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStop&) { return value(); }
};

template<>
struct DataType< ::neo_srvs::RelayBoardUnSetEMStop > {
  static const char* value()
  {
    return "neo_srvs/RelayBoardUnSetEMStop";
  }

  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStop&) { return value(); }
};


// service_traits::MD5Sum< ::neo_srvs::RelayBoardUnSetEMStopRequest> should match
// service_traits::MD5Sum< ::neo_srvs::RelayBoardUnSetEMStop >
template<>
struct MD5Sum< ::neo_srvs::RelayBoardUnSetEMStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::neo_srvs::RelayBoardUnSetEMStop >::value();
  }
  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::neo_srvs::RelayBoardUnSetEMStopRequest> should match
// service_traits::DataType< ::neo_srvs::RelayBoardUnSetEMStop >
template<>
struct DataType< ::neo_srvs::RelayBoardUnSetEMStopRequest>
{
  static const char* value()
  {
    return DataType< ::neo_srvs::RelayBoardUnSetEMStop >::value();
  }
  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::neo_srvs::RelayBoardUnSetEMStopResponse> should match
// service_traits::MD5Sum< ::neo_srvs::RelayBoardUnSetEMStop >
template<>
struct MD5Sum< ::neo_srvs::RelayBoardUnSetEMStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::neo_srvs::RelayBoardUnSetEMStop >::value();
  }
  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::neo_srvs::RelayBoardUnSetEMStopResponse> should match
// service_traits::DataType< ::neo_srvs::RelayBoardUnSetEMStop >
template<>
struct DataType< ::neo_srvs::RelayBoardUnSetEMStopResponse>
{
  static const char* value()
  {
    return DataType< ::neo_srvs::RelayBoardUnSetEMStop >::value();
  }
  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOP_H
