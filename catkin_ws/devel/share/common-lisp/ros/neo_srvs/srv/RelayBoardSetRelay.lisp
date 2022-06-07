; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude RelayBoardSetRelay-request.msg.html

(cl:defclass <RelayBoardSetRelay-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardSetRelay-request (<RelayBoardSetRelay-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetRelay-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetRelay-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetRelay-request> is deprecated: use neo_srvs-srv:RelayBoardSetRelay-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RelayBoardSetRelay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:id-val is deprecated.  Use neo_srvs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RelayBoardSetRelay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:state-val is deprecated.  Use neo_srvs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetRelay-request>) ostream)
  "Serializes a message object of type '<RelayBoardSetRelay-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetRelay-request>) istream)
  "Deserializes a message object of type '<RelayBoardSetRelay-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetRelay-request>)))
  "Returns string type for a service object of type '<RelayBoardSetRelay-request>"
  "neo_srvs/RelayBoardSetRelayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetRelay-request)))
  "Returns string type for a service object of type 'RelayBoardSetRelay-request"
  "neo_srvs/RelayBoardSetRelayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetRelay-request>)))
  "Returns md5sum for a message object of type '<RelayBoardSetRelay-request>"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetRelay-request)))
  "Returns md5sum for a message object of type 'RelayBoardSetRelay-request"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetRelay-request>)))
  "Returns full string definition for message of type '<RelayBoardSetRelay-request>"
  (cl:format cl:nil "int16 id~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetRelay-request)))
  "Returns full string definition for message of type 'RelayBoardSetRelay-request"
  (cl:format cl:nil "int16 id~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetRelay-request>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetRelay-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetRelay-request
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude RelayBoardSetRelay-response.msg.html

(cl:defclass <RelayBoardSetRelay-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardSetRelay-response (<RelayBoardSetRelay-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetRelay-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetRelay-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetRelay-response> is deprecated: use neo_srvs-srv:RelayBoardSetRelay-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RelayBoardSetRelay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetRelay-response>) ostream)
  "Serializes a message object of type '<RelayBoardSetRelay-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetRelay-response>) istream)
  "Deserializes a message object of type '<RelayBoardSetRelay-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetRelay-response>)))
  "Returns string type for a service object of type '<RelayBoardSetRelay-response>"
  "neo_srvs/RelayBoardSetRelayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetRelay-response)))
  "Returns string type for a service object of type 'RelayBoardSetRelay-response"
  "neo_srvs/RelayBoardSetRelayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetRelay-response>)))
  "Returns md5sum for a message object of type '<RelayBoardSetRelay-response>"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetRelay-response)))
  "Returns md5sum for a message object of type 'RelayBoardSetRelay-response"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetRelay-response>)))
  "Returns full string definition for message of type '<RelayBoardSetRelay-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetRelay-response)))
  "Returns full string definition for message of type 'RelayBoardSetRelay-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetRelay-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetRelay-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetRelay-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelayBoardSetRelay)))
  'RelayBoardSetRelay-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelayBoardSetRelay)))
  'RelayBoardSetRelay-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetRelay)))
  "Returns string type for a service object of type '<RelayBoardSetRelay>"
  "neo_srvs/RelayBoardSetRelay")