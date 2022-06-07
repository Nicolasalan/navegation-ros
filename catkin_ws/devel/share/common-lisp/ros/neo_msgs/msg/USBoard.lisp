; Auto-generated. Do not edit!


(cl:in-package neo_msgs-msg)


;//! \htmlinclude USBoard.msg.html

(cl:defclass <USBoard> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sensor
    :reader sensor
    :initarg :sensor
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0))
   (analog
    :reader analog
    :initarg :analog
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass USBoard (<USBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <USBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'USBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_msgs-msg:<USBoard> is deprecated: use neo_msgs-msg:USBoard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <USBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:header-val is deprecated.  Use neo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <USBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:sensor-val is deprecated.  Use neo_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'analog-val :lambda-list '(m))
(cl:defmethod analog-val ((m <USBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:analog-val is deprecated.  Use neo_msgs-msg:analog instead.")
  (analog m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <USBoard>) ostream)
  "Serializes a message object of type '<USBoard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'sensor))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'analog))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <USBoard>) istream)
  "Deserializes a message object of type '<USBoard>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'sensor) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'sensor)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'analog) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'analog)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<USBoard>)))
  "Returns string type for a message object of type '<USBoard>"
  "neo_msgs/USBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'USBoard)))
  "Returns string type for a message object of type 'USBoard"
  "neo_msgs/USBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<USBoard>)))
  "Returns md5sum for a message object of type '<USBoard>"
  "7c6108e86b47cd55a9e322285c748455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'USBoard)))
  "Returns md5sum for a message object of type 'USBoard"
  "7c6108e86b47cd55a9e322285c748455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<USBoard>)))
  "Returns full string definition for message of type '<USBoard>"
  (cl:format cl:nil "# This message holds all data available from Neobotix USBoard~%~%std_msgs/Header header~%~%uint8[16] sensor 	#sensor measurement~%int16[4] analog 	#analogue input~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'USBoard)))
  "Returns full string definition for message of type 'USBoard"
  (cl:format cl:nil "# This message holds all data available from Neobotix USBoard~%~%std_msgs/Header header~%~%uint8[16] sensor 	#sensor measurement~%int16[4] analog 	#analogue input~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <USBoard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sensor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'analog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <USBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'USBoard
    (cl:cons ':header (header msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':analog (analog msg))
))
