; Auto-generated. Do not edit!


(cl:in-package neo_msgs-msg)


;//! \htmlinclude Keypad.msg.html

(cl:defclass <Keypad> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (button
    :reader button
    :initarg :button
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 5 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass Keypad (<Keypad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keypad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keypad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_msgs-msg:<Keypad> is deprecated: use neo_msgs-msg:Keypad instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Keypad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:header-val is deprecated.  Use neo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'button-val :lambda-list '(m))
(cl:defmethod button-val ((m <Keypad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:button-val is deprecated.  Use neo_msgs-msg:button instead.")
  (button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keypad>) ostream)
  "Serializes a message object of type '<Keypad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'button))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keypad>) istream)
  "Deserializes a message object of type '<Keypad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'button) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'button)))
    (cl:dotimes (i 5)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keypad>)))
  "Returns string type for a message object of type '<Keypad>"
  "neo_msgs/Keypad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keypad)))
  "Returns string type for a message object of type 'Keypad"
  "neo_msgs/Keypad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keypad>)))
  "Returns md5sum for a message object of type '<Keypad>"
  "21d087e667f5f91b3508131e477c1aa8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keypad)))
  "Returns md5sum for a message object of type 'Keypad"
  "21d087e667f5f91b3508131e477c1aa8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keypad>)))
  "Returns full string definition for message of type '<Keypad>"
  (cl:format cl:nil "~%std_msgs/Header header~%~%bool[5] button #5 button keypad~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keypad)))
  "Returns full string definition for message of type 'Keypad"
  (cl:format cl:nil "~%std_msgs/Header header~%~%bool[5] button #5 button keypad~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keypad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'button) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keypad>))
  "Converts a ROS message object to a list"
  (cl:list 'Keypad
    (cl:cons ':header (header msg))
    (cl:cons ':button (button msg))
))
