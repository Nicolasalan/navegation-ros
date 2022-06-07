;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::LCDOutput)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'LCDOutput (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::LCDOUTPUT")
  (make-package "NEO_MSGS::LCDOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude LCDOutput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass neo_msgs::LCDOutput
  :super ros::object
  :slots (_header _msg_line ))

(defmethod neo_msgs::LCDOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:msg_line __msg_line) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _msg_line (string __msg_line))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:msg_line
   (&optional __msg_line)
   (if __msg_line (setq _msg_line __msg_line)) _msg_line)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _msg_line
    4 (length _msg_line)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _msg_line
       (write-long (length _msg_line) s) (princ _msg_line s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _msg_line
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_line (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get neo_msgs::LCDOutput :md5sum-) "7a6e85aa179c4269808f0f1656a095be")
(setf (get neo_msgs::LCDOutput :datatype-) "neo_msgs/LCDOutput")
(setf (get neo_msgs::LCDOutput :definition-)
      "
std_msgs/Header header

string msg_line 	#in mode 1 msg_lines size is limited to 20 chars
			#in mode 2 msg_lines size is limited to 60 chars

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



(provide :neo_msgs/LCDOutput "7a6e85aa179c4269808f0f1656a095be")


