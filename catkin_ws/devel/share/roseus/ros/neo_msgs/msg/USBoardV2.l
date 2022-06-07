;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::USBoardV2)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'USBoardV2 (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::USBOARDV2")
  (make-package "NEO_MSGS::USBOARDV2"))

(in-package "ROS")
;;//! \htmlinclude USBoardV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass neo_msgs::USBoardV2
  :super ros::object
  :slots (_header _sensor _analog _active ))

(defmethod neo_msgs::USBoardV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor __sensor) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:analog __analog) (make-array 4 :initial-element 0 :element-type :integer))
    ((:active __active) (let (r) (dotimes (i 16) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor __sensor)
   (setq _analog __analog)
   (setq _active __active)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:analog
   (&optional __analog)
   (if __analog (setq _analog __analog)) _analog)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[16] _sensor
    (* 4    16)
    ;; int16[4] _analog
    (* 2    4)
    ;; bool[16] _active
    (* 1    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[16] _sensor
     (dotimes (i 16)
       (sys::poke (elt _sensor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16[4] _analog
     (dotimes (i 4)
       (write-word (elt _analog i) s)
       )
     ;; bool[16] _active
     (dotimes (i 16)
       (if (elt _active i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[16] _sensor
   (dotimes (i (length _sensor))
     (setf (elt _sensor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; int16[4] _analog
   (dotimes (i (length _analog))
     (setf (elt _analog i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; bool[16] _active
   (dotimes (i (length _active))
     (setf (elt _active i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get neo_msgs::USBoardV2 :md5sum-) "44b18fcbad7e40606fe1cb1fd9a06b3a")
(setf (get neo_msgs::USBoardV2 :datatype-) "neo_msgs/USBoardV2")
(setf (get neo_msgs::USBoardV2 :definition-)
      "# This message holds all data available from Neobotix USBoard

std_msgs/Header header

float32[16] sensor 	#sensor measurement
int16[4] analog 	#analogue input
bool[16] active  	#active
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



(provide :neo_msgs/USBoardV2 "44b18fcbad7e40606fe1cb1fd9a06b3a")


