; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude RelayBoardUnSetEMStop-request.msg.html

(cl:defclass <RelayBoardUnSetEMStop-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RelayBoardUnSetEMStop-request (<RelayBoardUnSetEMStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardUnSetEMStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardUnSetEMStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardUnSetEMStop-request> is deprecated: use neo_srvs-srv:RelayBoardUnSetEMStop-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardUnSetEMStop-request>) ostream)
  "Serializes a message object of type '<RelayBoardUnSetEMStop-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardUnSetEMStop-request>) istream)
  "Deserializes a message object of type '<RelayBoardUnSetEMStop-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardUnSetEMStop-request>)))
  "Returns string type for a service object of type '<RelayBoardUnSetEMStop-request>"
  "neo_srvs/RelayBoardUnSetEMStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardUnSetEMStop-request)))
  "Returns string type for a service object of type 'RelayBoardUnSetEMStop-request"
  "neo_srvs/RelayBoardUnSetEMStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardUnSetEMStop-request>)))
  "Returns md5sum for a message object of type '<RelayBoardUnSetEMStop-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardUnSetEMStop-request)))
  "Returns md5sum for a message object of type 'RelayBoardUnSetEMStop-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardUnSetEMStop-request>)))
  "Returns full string definition for message of type '<RelayBoardUnSetEMStop-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardUnSetEMStop-request)))
  "Returns full string definition for message of type 'RelayBoardUnSetEMStop-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardUnSetEMStop-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardUnSetEMStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardUnSetEMStop-request
))
;//! \htmlinclude RelayBoardUnSetEMStop-response.msg.html

(cl:defclass <RelayBoardUnSetEMStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardUnSetEMStop-response (<RelayBoardUnSetEMStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardUnSetEMStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardUnSetEMStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardUnSetEMStop-response> is deprecated: use neo_srvs-srv:RelayBoardUnSetEMStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RelayBoardUnSetEMStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardUnSetEMStop-response>) ostream)
  "Serializes a message object of type '<RelayBoardUnSetEMStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardUnSetEMStop-response>) istream)
  "Deserializes a message object of type '<RelayBoardUnSetEMStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardUnSetEMStop-response>)))
  "Returns string type for a service object of type '<RelayBoardUnSetEMStop-response>"
  "neo_srvs/RelayBoardUnSetEMStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardUnSetEMStop-response)))
  "Returns string type for a service object of type 'RelayBoardUnSetEMStop-response"
  "neo_srvs/RelayBoardUnSetEMStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardUnSetEMStop-response>)))
  "Returns md5sum for a message object of type '<RelayBoardUnSetEMStop-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardUnSetEMStop-response)))
  "Returns md5sum for a message object of type 'RelayBoardUnSetEMStop-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardUnSetEMStop-response>)))
  "Returns full string definition for message of type '<RelayBoardUnSetEMStop-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardUnSetEMStop-response)))
  "Returns full string definition for message of type 'RelayBoardUnSetEMStop-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardUnSetEMStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardUnSetEMStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardUnSetEMStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelayBoardUnSetEMStop)))
  'RelayBoardUnSetEMStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelayBoardUnSetEMStop)))
  'RelayBoardUnSetEMStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardUnSetEMStop)))
  "Returns string type for a service object of type '<RelayBoardUnSetEMStop>"
  "neo_srvs/RelayBoardUnSetEMStop")