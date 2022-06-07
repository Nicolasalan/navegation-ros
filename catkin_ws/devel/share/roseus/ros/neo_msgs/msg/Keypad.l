;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::Keypad)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'Keypad (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::KEYPAD")
  (make-package "NEO_MSGS::KEYPAD"))

(in-package "ROS")
;;//! \htmlinclude Keypad.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass neo_msgs::Keypad
  :super ros::object
  :slots (_header _button ))

(defmethod neo_msgs::Keypad
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:button __button) (let (r) (dotimes (i 5) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _button __button)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[5] _button
    (* 1    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[5] _button
     (dotimes (i 5)
       (if (elt _button i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[5] _button
   (dotimes (i (length _button))
     (setf (elt _button i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get neo_msgs::Keypad :md5sum-) "21d087e667f5f91b3508131e477c1aa8")
(setf (get neo_msgs::Keypad :datatype-) "neo_msgs/Keypad")
(setf (get neo_msgs::Keypad :definition-)
      "
std_msgs/Header header

bool[5] button #5 button keypad

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :neo_msgs/Keypad "21d087e667f5f91b3508131e477c1aa8")


