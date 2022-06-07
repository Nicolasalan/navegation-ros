; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude RelayBoardSetEMStop-request.msg.html

(cl:defclass <RelayBoardSetEMStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RelayBoardSetEMStop-request (<RelayBoardSetEMStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetEMStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetEMStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetEMStop-request> is deprecated: use neo_srvs-srv:RelayBoardSetEMStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetEMStop-request>) ostream)
  "Serializes a message object of type '<RelayBoardSetEMStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetEMStop-request>) istream)
  "Deserializes a message object of type '<RelayBoardSetEMStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetEMStop-request>)))
  "Returns string type for a service object of type '<RelayBoardSetEMStop-request>"
  "neo_srvs/RelayBoardSetEMStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetEMStop-request)))
  "Returns string type for a service object of type 'RelayBoardSetEMStop-request"
  "neo_srvs/RelayBoardSetEMStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetEMStop-request>)))
  "Returns md5sum for a message object of type '<RelayBoardSetEMStop-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetEMStop-request)))
  "Returns md5sum for a message object of type 'RelayBoardSetEMStop-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetEMStop-request>)))
  "Returns full string definition for message of type '<RelayBoardSetEMStop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetEMStop-request)))
  "Returns full string definition for message of type 'RelayBoardSetEMStop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetEMStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetEMStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetEMStop-request
))
;//! \htmlinclude RelayBoardSetEMStop-response.msg.html

(cl:defclass <RelayBoardSetEMStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardSetEMStop-response (<RelayBoardSetEMStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetEMStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetEMStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetEMStop-response> is deprecated: use neo_srvs-srv:RelayBoardSetEMStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RelayBoardSetEMStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetEMStop-response>) ostream)
  "Serializes a message object of type '<RelayBoardSetEMStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetEMStop-response>) istream)
  "Deserializes a message object of type '<RelayBoardSetEMStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetEMStop-response>)))
  "Returns string type for a service object of type '<RelayBoardSetEMStop-response>"
  "neo_srvs/RelayBoardSetEMStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetEMStop-response)))
  "Returns string type for a service object of type 'RelayBoardSetEMStop-response"
  "neo_srvs/RelayBoardSetEMStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetEMStop-response>)))
  "Returns md5sum for a message object of type '<RelayBoardSetEMStop-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetEMStop-response)))
  "Returns md5sum for a message object of type 'RelayBoardSetEMStop-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetEMStop-response>)))
  "Returns full string definition for message of type '<RelayBoardSetEMStop-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetEMStop-response)))
  "Returns full string definition for message of type 'RelayBoardSetEMStop-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetEMStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetEMStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetEMStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelayBoardSetEMStop)))
  'RelayBoardSetEMStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelayBoardSetEMStop)))
  'RelayBoardSetEMStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetEMStop)))
  "Returns string type for a service object of type '<RelayBoardSetEMStop>"
  "neo_srvs/RelayBoardSetEMStop")