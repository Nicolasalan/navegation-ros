; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude UnlockPlatform-request.msg.html

(cl:defclass <UnlockPlatform-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UnlockPlatform-request (<UnlockPlatform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnlockPlatform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnlockPlatform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<UnlockPlatform-request> is deprecated: use neo_srvs-srv:UnlockPlatform-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnlockPlatform-request>) ostream)
  "Serializes a message object of type '<UnlockPlatform-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnlockPlatform-request>) istream)
  "Deserializes a message object of type '<UnlockPlatform-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnlockPlatform-request>)))
  "Returns string type for a service object of type '<UnlockPlatform-request>"
  "neo_srvs/UnlockPlatformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnlockPlatform-request)))
  "Returns string type for a service object of type 'UnlockPlatform-request"
  "neo_srvs/UnlockPlatformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnlockPlatform-request>)))
  "Returns md5sum for a message object of type '<UnlockPlatform-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnlockPlatform-request)))
  "Returns md5sum for a message object of type 'UnlockPlatform-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnlockPlatform-request>)))
  "Returns full string definition for message of type '<UnlockPlatform-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnlockPlatform-request)))
  "Returns full string definition for message of type 'UnlockPlatform-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnlockPlatform-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnlockPlatform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UnlockPlatform-request
))
;//! \htmlinclude UnlockPlatform-response.msg.html

(cl:defclass <UnlockPlatform-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UnlockPlatform-response (<UnlockPlatform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnlockPlatform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnlockPlatform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<UnlockPlatform-response> is deprecated: use neo_srvs-srv:UnlockPlatform-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UnlockPlatform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnlockPlatform-response>) ostream)
  "Serializes a message object of type '<UnlockPlatform-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnlockPlatform-response>) istream)
  "Deserializes a message object of type '<UnlockPlatform-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnlockPlatform-response>)))
  "Returns string type for a service object of type '<UnlockPlatform-response>"
  "neo_srvs/UnlockPlatformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnlockPlatform-response)))
  "Returns string type for a service object of type 'UnlockPlatform-response"
  "neo_srvs/UnlockPlatformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnlockPlatform-response>)))
  "Returns md5sum for a message object of type '<UnlockPlatform-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnlockPlatform-response)))
  "Returns md5sum for a message object of type 'UnlockPlatform-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnlockPlatform-response>)))
  "Returns full string definition for message of type '<UnlockPlatform-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnlockPlatform-response)))
  "Returns full string definition for message of type 'UnlockPlatform-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnlockPlatform-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnlockPlatform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UnlockPlatform-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UnlockPlatform)))
  'UnlockPlatform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UnlockPlatform)))
  'UnlockPlatform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnlockPlatform)))
  "Returns string type for a service object of type '<UnlockPlatform>"
  "neo_srvs/UnlockPlatform")