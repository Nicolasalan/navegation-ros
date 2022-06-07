;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::USBoard)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'USBoard (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::USBOARD")
  (make-package "NEO_MSGS::USBOARD"))

(in-package "ROS")
;;//! \htmlinclude USBoard.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass neo_msgs::USBoard
  :super ros::object
  :slots (_header _sensor _analog ))

(defmethod neo_msgs::USBoard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor __sensor) (make-array 16 :initial-element 0 :element-type :char))
    ((:analog __analog) (make-array 4 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor __sensor)
   (setq _analog __analog)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[16] _sensor
    (* 1    16)
    ;; int16[4] _analog
    (* 2    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[16] _sensor
     (princ _sensor s)
     ;; int16[4] _analog
     (dotimes (i 4)
       (write-word (elt _analog i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[16] _sensor
   (setq _sensor (make-array 16 :element-type :char))
   (replace _sensor buf :start2 ptr-) (incf ptr- 16)
   ;; int16[4] _analog
   (dotimes (i (length _analog))
     (setf (elt _analog i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get neo_msgs::USBoard :md5sum-) "7c6108e86b47cd55a9e322285c748455")
(setf (get neo_msgs::USBoard :datatype-) "neo_msgs/USBoard")
(setf (get neo_msgs::USBoard :definition-)
      "# This message holds all data available from Neobotix USBoard

std_msgs/Header header

uint8[16] sensor 	#sensor measurement
int16[4] analog 	#analogue input

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



(provide :neo_msgs/USBoard "7c6108e86b47cd55a9e322285c748455")


