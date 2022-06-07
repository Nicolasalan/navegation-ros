; Auto-generated. Do not edit!


(cl:in-package neo_msgs-msg)


;//! \htmlinclude IOBoard.msg.html

(cl:defclass <IOBoard> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (digital_inputs
    :reader digital_inputs
    :initarg :digital_inputs
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 16 :element-type 'cl:boolean :initial-element cl:nil))
   (digital_outputs
    :reader digital_outputs
    :initarg :digital_outputs
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 16 :element-type 'cl:boolean :initial-element cl:nil))
   (analog_inputs
    :reader analog_inputs
    :initarg :analog_inputs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass IOBoard (<IOBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_msgs-msg:<IOBoard> is deprecated: use neo_msgs-msg:IOBoard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IOBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:header-val is deprecated.  Use neo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'digital_inputs-val :lambda-list '(m))
(cl:defmethod digital_inputs-val ((m <IOBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:digital_inputs-val is deprecated.  Use neo_msgs-msg:digital_inputs instead.")
  (digital_inputs m))

(cl:ensure-generic-function 'digital_outputs-val :lambda-list '(m))
(cl:defmethod digital_outputs-val ((m <IOBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:digital_outputs-val is deprecated.  Use neo_msgs-msg:digital_outputs instead.")
  (digital_outputs m))

(cl:ensure-generic-function 'analog_inputs-val :lambda-list '(m))
(cl:defmethod analog_inputs-val ((m <IOBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:analog_inputs-val is deprecated.  Use neo_msgs-msg:analog_inputs instead.")
  (analog_inputs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOBoard>) ostream)
  "Serializes a message object of type '<IOBoard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'digital_inputs))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'digital_outputs))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'analog_inputs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOBoard>) istream)
  "Deserializes a message object of type '<IOBoard>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'digital_inputs) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'digital_inputs)))
    (cl:dotimes (i 16)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'digital_outputs) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'digital_outputs)))
    (cl:dotimes (i 16)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'analog_inputs) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'analog_inputs)))
    (cl:dotimes (i 8)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOBoard>)))
  "Returns string type for a message object of type '<IOBoard>"
  "neo_msgs/IOBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOBoard)))
  "Returns string type for a message object of type 'IOBoard"
  "neo_msgs/IOBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOBoard>)))
  "Returns md5sum for a message object of type '<IOBoard>"
  "6e9085371cb5e95c2cbe1368025a2f19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOBoard)))
  "Returns md5sum for a message object of type 'IOBoard"
  "6e9085371cb5e95c2cbe1368025a2f19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOBoard>)))
  "Returns full string definition for message of type '<IOBoard>"
  (cl:format cl:nil "# This message holds all data available from Neobotix IOBoard~%~%std_msgs/Header header~%~%bool[16] digital_inputs			# state for all digital inputs~%bool[16] digital_outputs		# state for all digital outputs~%~%int16[8] analog_inputs			# analog input values~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOBoard)))
  "Returns full string definition for message of type 'IOBoard"
  (cl:format cl:nil "# This message holds all data available from Neobotix IOBoard~%~%std_msgs/Header header~%~%bool[16] digital_inputs			# state for all digital inputs~%bool[16] digital_outputs		# state for all digital outputs~%~%int16[8] analog_inputs			# analog input values~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOBoard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_outputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'analog_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'IOBoard
    (cl:cons ':header (header msg))
    (cl:cons ':digital_inputs (digital_inputs msg))
    (cl:cons ':digital_outputs (digital_outputs msg))
    (cl:cons ':analog_inputs (analog_inputs msg))
))
