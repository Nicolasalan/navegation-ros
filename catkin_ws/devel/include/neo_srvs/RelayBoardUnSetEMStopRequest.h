// Generated by gencpp from file neo_srvs/RelayBoardUnSetEMStopRequest.msg
// DO NOT EDIT!


#ifndef NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOPREQUEST_H
#define NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace neo_srvs
{
template <class ContainerAllocator>
struct RelayBoardUnSetEMStopRequest_
{
  typedef RelayBoardUnSetEMStopRequest_<ContainerAllocator> Type;

  RelayBoardUnSetEMStopRequest_()
    {
    }
  RelayBoardUnSetEMStopRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RelayBoardUnSetEMStopRequest_

typedef ::neo_srvs::RelayBoardUnSetEMStopRequest_<std::allocator<void> > RelayBoardUnSetEMStopRequest;

typedef boost::shared_ptr< ::neo_srvs::RelayBoardUnSetEMStopRequest > RelayBoardUnSetEMStopRequestPtr;
typedef boost::shared_ptr< ::neo_srvs::RelayBoardUnSetEMStopRequest const> RelayBoardUnSetEMStopRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace neo_srvs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "neo_srvs/RelayBoardUnSetEMStopRequest";
  }

  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelayBoardUnSetEMStopRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::neo_srvs::RelayBoardUnSetEMStopRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // NEO_SRVS_MESSAGE_RELAYBOARDUNSETEMSTOPREQUEST_H