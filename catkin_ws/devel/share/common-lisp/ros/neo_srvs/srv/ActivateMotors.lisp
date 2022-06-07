; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude ActivateMotors-request.msg.html

(cl:defclass <ActivateMotors-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ActivateMotors-request (<ActivateMotors-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActivateMotors-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActivateMotors-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<ActivateMotors-request> is deprecated: use neo_srvs-srv:ActivateMotors-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActivateMotors-request>) ostream)
  "Serializes a message object of type '<ActivateMotors-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActivateMotors-request>) istream)
  "Deserializes a message object of type '<ActivateMotors-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActivateMotors-request>)))
  "Returns string type for a service object of type '<ActivateMotors-request>"
  "neo_srvs/ActivateMotorsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateMotors-request)))
  "Returns string type for a service object of type 'ActivateMotors-request"
  "neo_srvs/ActivateMotorsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActivateMotors-request>)))
  "Returns md5sum for a message object of type '<ActivateMotors-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActivateMotors-request)))
  "Returns md5sum for a message object of type 'ActivateMotors-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActivateMotors-request>)))
  "Returns full string definition for message of type '<ActivateMotors-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActivateMotors-request)))
  "Returns full string definition for message of type 'ActivateMotors-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActivateMotors-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActivateMotors-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActivateMotors-request
))
;//! \htmlinclude ActivateMotors-response.msg.html

(cl:defclass <ActivateMotors-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ActivateMotors-response (<ActivateMotors-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActivateMotors-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActivateMotors-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<ActivateMotors-response> is deprecated: use neo_srvs-srv:ActivateMotors-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ActivateMotors-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActivateMotors-response>) ostream)
  "Serializes a message object of type '<ActivateMotors-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActivateMotors-response>) istream)
  "Deserializes a message object of type '<ActivateMotors-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActivateMotors-response>)))
  "Returns string type for a service object of type '<ActivateMotors-response>"
  "neo_srvs/ActivateMotorsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateMotors-response)))
  "Returns string type for a service object of type 'ActivateMotors-response"
  "neo_srvs/ActivateMotorsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActivateMotors-response>)))
  "Returns md5sum for a message object of type '<ActivateMotors-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActivateMotors-response)))
  "Returns md5sum for a message object of type 'ActivateMotors-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActivateMotors-response>)))
  "Returns full string definition for message of type '<ActivateMotors-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActivateMotors-response)))
  "Returns full string definition for message of type 'ActivateMotors-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActivateMotors-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActivateMotors-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActivateMotors-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActivateMotors)))
  'ActivateMotors-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActivateMotors)))
  'ActivateMotors-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivateMotors)))
  "Returns string type for a service object of type '<ActivateMotors>"
  "neo_srvs/ActivateMotors")