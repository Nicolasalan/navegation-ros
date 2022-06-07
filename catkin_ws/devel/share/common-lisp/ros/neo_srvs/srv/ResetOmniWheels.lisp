; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude ResetOmniWheels-request.msg.html

(cl:defclass <ResetOmniWheels-request> (roslisp-msg-protocol:ros-message)
  ((steer_angles_rad
    :reader steer_angles_rad
    :initarg :steer_angles_rad
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ResetOmniWheels-request (<ResetOmniWheels-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOmniWheels-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOmniWheels-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<ResetOmniWheels-request> is deprecated: use neo_srvs-srv:ResetOmniWheels-request instead.")))

(cl:ensure-generic-function 'steer_angles_rad-val :lambda-list '(m))
(cl:defmethod steer_angles_rad-val ((m <ResetOmniWheels-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:steer_angles_rad-val is deprecated.  Use neo_srvs-srv:steer_angles_rad instead.")
  (steer_angles_rad m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOmniWheels-request>) ostream)
  "Serializes a message object of type '<ResetOmniWheels-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'steer_angles_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'steer_angles_rad))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOmniWheels-request>) istream)
  "Deserializes a message object of type '<ResetOmniWheels-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'steer_angles_rad) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'steer_angles_rad)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOmniWheels-request>)))
  "Returns string type for a service object of type '<ResetOmniWheels-request>"
  "neo_srvs/ResetOmniWheelsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOmniWheels-request)))
  "Returns string type for a service object of type 'ResetOmniWheels-request"
  "neo_srvs/ResetOmniWheelsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOmniWheels-request>)))
  "Returns md5sum for a message object of type '<ResetOmniWheels-request>"
  "fc4174458451e931b5704dcb756e00b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOmniWheels-request)))
  "Returns md5sum for a message object of type 'ResetOmniWheels-request"
  "fc4174458451e931b5704dcb756e00b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOmniWheels-request>)))
  "Returns full string definition for message of type '<ResetOmniWheels-request>"
  (cl:format cl:nil "float32[] steer_angles_rad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOmniWheels-request)))
  "Returns full string definition for message of type 'ResetOmniWheels-request"
  (cl:format cl:nil "float32[] steer_angles_rad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOmniWheels-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'steer_angles_rad) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOmniWheels-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOmniWheels-request
    (cl:cons ':steer_angles_rad (steer_angles_rad msg))
))
;//! \htmlinclude ResetOmniWheels-response.msg.html

(cl:defclass <ResetOmniWheels-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetOmniWheels-response (<ResetOmniWheels-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetOmniWheels-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetOmniWheels-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<ResetOmniWheels-response> is deprecated: use neo_srvs-srv:ResetOmniWheels-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetOmniWheels-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetOmniWheels-response>) ostream)
  "Serializes a message object of type '<ResetOmniWheels-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetOmniWheels-response>) istream)
  "Deserializes a message object of type '<ResetOmniWheels-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetOmniWheels-response>)))
  "Returns string type for a service object of type '<ResetOmniWheels-response>"
  "neo_srvs/ResetOmniWheelsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOmniWheels-response)))
  "Returns string type for a service object of type 'ResetOmniWheels-response"
  "neo_srvs/ResetOmniWheelsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetOmniWheels-response>)))
  "Returns md5sum for a message object of type '<ResetOmniWheels-response>"
  "fc4174458451e931b5704dcb756e00b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetOmniWheels-response)))
  "Returns md5sum for a message object of type 'ResetOmniWheels-response"
  "fc4174458451e931b5704dcb756e00b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetOmniWheels-response>)))
  "Returns full string definition for message of type '<ResetOmniWheels-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetOmniWheels-response)))
  "Returns full string definition for message of type 'ResetOmniWheels-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetOmniWheels-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetOmniWheels-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetOmniWheels-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetOmniWheels)))
  'ResetOmniWheels-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetOmniWheels)))
  'ResetOmniWheels-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetOmniWheels)))
  "Returns string type for a service object of type '<ResetOmniWheels>"
  "neo_srvs/ResetOmniWheels")