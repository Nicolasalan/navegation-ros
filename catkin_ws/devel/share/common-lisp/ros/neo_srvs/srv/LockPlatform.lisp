; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude LockPlatform-request.msg.html

(cl:defclass <LockPlatform-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LockPlatform-request (<LockPlatform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LockPlatform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LockPlatform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<LockPlatform-request> is deprecated: use neo_srvs-srv:LockPlatform-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LockPlatform-request>) ostream)
  "Serializes a message object of type '<LockPlatform-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LockPlatform-request>) istream)
  "Deserializes a message object of type '<LockPlatform-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LockPlatform-request>)))
  "Returns string type for a service object of type '<LockPlatform-request>"
  "neo_srvs/LockPlatformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LockPlatform-request)))
  "Returns string type for a service object of type 'LockPlatform-request"
  "neo_srvs/LockPlatformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LockPlatform-request>)))
  "Returns md5sum for a message object of type '<LockPlatform-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LockPlatform-request)))
  "Returns md5sum for a message object of type 'LockPlatform-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LockPlatform-request>)))
  "Returns full string definition for message of type '<LockPlatform-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LockPlatform-request)))
  "Returns full string definition for message of type 'LockPlatform-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LockPlatform-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LockPlatform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LockPlatform-request
))
;//! \htmlinclude LockPlatform-response.msg.html

(cl:defclass <LockPlatform-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LockPlatform-response (<LockPlatform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LockPlatform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LockPlatform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<LockPlatform-response> is deprecated: use neo_srvs-srv:LockPlatform-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LockPlatform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LockPlatform-response>) ostream)
  "Serializes a message object of type '<LockPlatform-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LockPlatform-response>) istream)
  "Deserializes a message object of type '<LockPlatform-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LockPlatform-response>)))
  "Returns string type for a service object of type '<LockPlatform-response>"
  "neo_srvs/LockPlatformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LockPlatform-response)))
  "Returns string type for a service object of type 'LockPlatform-response"
  "neo_srvs/LockPlatformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LockPlatform-response>)))
  "Returns md5sum for a message object of type '<LockPlatform-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LockPlatform-response)))
  "Returns md5sum for a message object of type 'LockPlatform-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LockPlatform-response>)))
  "Returns full string definition for message of type '<LockPlatform-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LockPlatform-response)))
  "Returns full string definition for message of type 'LockPlatform-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LockPlatform-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LockPlatform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LockPlatform-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LockPlatform)))
  'LockPlatform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LockPlatform)))
  'LockPlatform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LockPlatform)))
  "Returns string type for a service object of type '<LockPlatform>"
  "neo_srvs/LockPlatform")