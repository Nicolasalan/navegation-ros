;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::IOBoard)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'IOBoard (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::IOBOARD")
  (make-package "NEO_MSGS::IOBOARD"))

(in-package "ROS")
;;//! \htmlinclude IOBoard.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass neo_msgs::IOBoard
  :super ros::object
  :slots (_header _digital_inputs _digital_outputs _analog_inputs ))

(defmethod neo_msgs::IOBoard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:digital_inputs __digital_inputs) (let (r) (dotimes (i 16) (push nil r)) r))
    ((:digital_outputs __digital_outputs) (let (r) (dotimes (i 16) (push nil r)) r))
    ((:analog_inputs __analog_inputs) (make-array 8 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _digital_inputs __digital_inputs)
   (setq _digital_outputs __digital_outputs)
   (setq _analog_inputs __analog_inputs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:digital_inputs
   (&optional __digital_inputs)
   (if __digital_inputs (setq _digital_inputs __digital_inputs)) _digital_inputs)
  (:digital_outputs
   (&optional __digital_outputs)
   (if __digital_outputs (setq _digital_outputs __digital_outputs)) _digital_outputs)
  (:analog_inputs
   (&optional __analog_inputs)
   (if __analog_inputs (setq _analog_inputs __analog_inputs)) _analog_inputs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[16] _digital_inputs
    (* 1    16)
    ;; bool[16] _digital_outputs
    (* 1    16)
    ;; int16[8] _analog_inputs
    (* 2    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[16] _digital_inputs
     (dotimes (i 16)
       (if (elt _digital_inputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[16] _digital_outputs
     (dotimes (i 16)
       (if (elt _digital_outputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int16[8] _analog_inputs
     (dotimes (i 8)
       (write-word (elt _analog_inputs i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[16] _digital_inputs
   (dotimes (i (length _digital_inputs))
     (setf (elt _digital_inputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[16] _digital_outputs
   (dotimes (i (length _digital_outputs))
     (setf (elt _digital_outputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; int16[8] _analog_inputs
   (dotimes (i (length _analog_inputs))
     (setf (elt _analog_inputs i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get neo_msgs::IOBoard :md5sum-) "6e9085371cb5e95c2cbe1368025a2f19")
(setf (get neo_msgs::IOBoard :datatype-) "neo_msgs/IOBoard")
(setf (get neo_msgs::IOBoard :definition-)
      "# This message holds all data available from Neobotix IOBoard

std_msgs/Header header

bool[16] digital_inputs			# state for all digital inputs
bool[16] digital_outputs		# state for all digital outputs

int16[8] analog_inputs			# analog input values



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



(provide :neo_msgs/IOBoard "6e9085371cb5e95c2cbe1368025a2f19")


