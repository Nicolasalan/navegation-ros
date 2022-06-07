;; Auto-generated. Do not edit!


(when (boundp 'neo_msgs::RelayBoardV2)
  (if (not (find-package "NEO_MSGS"))
    (make-package "NEO_MSGS"))
  (shadow 'RelayBoardV2 (find-package "NEO_MSGS")))
(unless (find-package "NEO_MSGS::RELAYBOARDV2")
  (make-package "NEO_MSGS::RELAYBOARDV2"))

(in-package "ROS")
;;//! \htmlinclude RelayBoardV2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CS_NOT_ESTABLISHED*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CS_NOT_ESTABLISHED* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CS_NOT_ESTABLISHED* 0)
(intern "*CS_CONFIGURATION_FAILED*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CS_CONFIGURATION_FAILED* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CS_CONFIGURATION_FAILED* 1)
(intern "*CS_OK*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CS_OK* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CS_OK* 2)
(intern "*CS_LOST*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CS_LOST* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CS_LOST* 3)
(intern "*CS_ERROR*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CS_ERROR* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CS_ERROR* 4)
(intern "*CHS_NOTCHARGING*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_NOTCHARGING* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_NOTCHARGING* 0)
(intern "*CHS_START_CHARGING*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_START_CHARGING* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_START_CHARGING* 1)
(intern "*CHS_CHARGING*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_CHARGING* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_CHARGING* 2)
(intern "*CHS_NO_CHARGER*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_NO_CHARGER* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_NO_CHARGER* 3)
(intern "*CHS_BRAKES_OPEN*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_BRAKES_OPEN* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_BRAKES_OPEN* 4)
(intern "*CHS_EMSTOP*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_EMSTOP* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_EMSTOP* 5)
(intern "*CHS_ABORT*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_ABORT* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_ABORT* 6)
(intern "*CHS_FINISHED*" (find-package "NEO_MSGS::RELAYBOARDV2"))
(shadow '*CHS_FINISHED* (find-package "NEO_MSGS::RELAYBOARDV2"))
(defconstant neo_msgs::RelayBoardV2::*CHS_FINISHED* 7)

(defun neo_msgs::RelayBoardV2-to-symbol (const)
  (cond
        ((= const 0) 'neo_msgs::RelayBoardV2::*CS_NOT_ESTABLISHED*)
        ((= const 1) 'neo_msgs::RelayBoardV2::*CS_CONFIGURATION_FAILED*)
        ((= const 2) 'neo_msgs::RelayBoardV2::*CS_OK*)
        ((= const 3) 'neo_msgs::RelayBoardV2::*CS_LOST*)
        ((= const 4) 'neo_msgs::RelayBoardV2::*CS_ERROR*)
        ((= const 0) 'neo_msgs::RelayBoardV2::*CHS_NOTCHARGING*)
        ((= const 1) 'neo_msgs::RelayBoardV2::*CHS_START_CHARGING*)
        ((= const 2) 'neo_msgs::RelayBoardV2::*CHS_CHARGING*)
        ((= const 3) 'neo_msgs::RelayBoardV2::*CHS_NO_CHARGER*)
        ((= const 4) 'neo_msgs::RelayBoardV2::*CHS_BRAKES_OPEN*)
        ((= const 5) 'neo_msgs::RelayBoardV2::*CHS_EMSTOP*)
        ((= const 6) 'neo_msgs::RelayBoardV2::*CHS_ABORT*)
        ((= const 7) 'neo_msgs::RelayBoardV2::*CHS_FINISHED*)
        (t nil)))

(defclass neo_msgs::RelayBoardV2
  :super ros::object
  :slots (_header _relayboardv2_state _communication_state _charging_state _temperature _battery_voltage _charging_current _relay_states _keypad _shutdown ))

(defmethod neo_msgs::RelayBoardV2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:relayboardv2_state __relayboardv2_state) (let (r) (dotimes (i 16) (push nil r)) r))
    ((:communication_state __communication_state) 0)
    ((:charging_state __charging_state) 0)
    ((:temperature __temperature) 0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:charging_current __charging_current) 0.0)
    ((:relay_states __relay_states) (let (r) (dotimes (i 4) (push nil r)) r))
    ((:keypad __keypad) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:shutdown __shutdown) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _relayboardv2_state __relayboardv2_state)
   (setq _communication_state (round __communication_state))
   (setq _charging_state (round __charging_state))
   (setq _temperature (round __temperature))
   (setq _battery_voltage (float __battery_voltage))
   (setq _charging_current (float __charging_current))
   (setq _relay_states __relay_states)
   (setq _keypad __keypad)
   (setq _shutdown __shutdown)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:relayboardv2_state
   (&optional __relayboardv2_state)
   (if __relayboardv2_state (setq _relayboardv2_state __relayboardv2_state)) _relayboardv2_state)
  (:communication_state
   (&optional __communication_state)
   (if __communication_state (setq _communication_state __communication_state)) _communication_state)
  (:charging_state
   (&optional __charging_state)
   (if __charging_state (setq _charging_state __charging_state)) _charging_state)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:charging_current
   (&optional __charging_current)
   (if __charging_current (setq _charging_current __charging_current)) _charging_current)
  (:relay_states
   (&optional __relay_states)
   (if __relay_states (setq _relay_states __relay_states)) _relay_states)
  (:keypad
   (&optional __keypad)
   (if __keypad (setq _keypad __keypad)) _keypad)
  (:shutdown
   (&optional (__shutdown :null))
   (if (not (eq __shutdown :null)) (setq _shutdown __shutdown)) _shutdown)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[16] _relayboardv2_state
    (* 1    16)
    ;; int16 _communication_state
    2
    ;; int16 _charging_state
    2
    ;; int16 _temperature
    2
    ;; float32 _battery_voltage
    4
    ;; float32 _charging_current
    4
    ;; bool[4] _relay_states
    (* 1    4)
    ;; bool[8] _keypad
    (* 1    8)
    ;; bool _shutdown
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[16] _relayboardv2_state
     (dotimes (i 16)
       (if (elt _relayboardv2_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int16 _communication_state
       (write-word _communication_state s)
     ;; int16 _charging_state
       (write-word _charging_state s)
     ;; int16 _temperature
       (write-word _temperature s)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _charging_current
       (sys::poke _charging_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool[4] _relay_states
     (dotimes (i 4)
       (if (elt _relay_states i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[8] _keypad
     (dotimes (i 8)
       (if (elt _keypad i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _shutdown
       (if _shutdown (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[16] _relayboardv2_state
   (dotimes (i (length _relayboardv2_state))
     (setf (elt _relayboardv2_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; int16 _communication_state
     (setq _communication_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _charging_state
     (setq _charging_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _temperature
     (setq _temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _charging_current
     (setq _charging_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool[4] _relay_states
   (dotimes (i (length _relay_states))
     (setf (elt _relay_states i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[8] _keypad
   (dotimes (i (length _keypad))
     (setf (elt _keypad i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool _shutdown
     (setq _shutdown (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get neo_msgs::RelayBoardV2 :md5sum-) "83afb76bbd47cf5ea0d7c64c621b54fb")
(setf (get neo_msgs::RelayBoardV2 :datatype-) "neo_msgs/RelayBoardV2")
(setf (get neo_msgs::RelayBoardV2 :definition-)
      "# This message holds specific data available from Neobotix RelayBoardV2

std_msgs/Header header

# Possible Communication States
int16 CS_NOT_ESTABLISHED = 0 		# configuration process has not been started
int16 CS_CONFIGURATION_FAILED = 1	# configuration process failed
int16 CS_OK = 2 			# communication is OK
int16 CS_LOST = 3 			# comminication was lost
int16 CS_ERROR = 4			# comminication has errors

# Possible Charging States
int16 CHS_NOTCHARGING = 0 		# no charging in progress; can be started with service /RelayBoardV2/StartCharging
int16 CHS_START_CHARGING = 1		# RelayBoardV2 is starting charging process
int16 CHS_CHARGING = 2 			# charging in progress; can be stopped with service /RelayBoardV2/StopCharging
int16 CHS_NO_CHARGER = 3 		# charging has been started but no charger was connected; this aborts charging
int16 CHS_BRAKES_OPEN = 4 		# brakes have been opened while charging; this aborts charging
int16 CHS_EMSTOP = 5 			# EMSTOP has been issued while charging; this aborts charging
int16 CHS_ABORT = 6 	   		# charging abort by host system
int16 CHS_FINISHED = 7 			# charging finished

#
bool[16] relayboardv2_state		# Shows state for all possible errors
					# relayboardv2_state[0] if true no errors; if false check other fields
					# relayboardv2_state[1] if true charging relay error; check robot hardware
					# relayboardv2_state[2] if true release brakes button failed; check robot hardware
					# relayboardv2_state[3] if true motor error; check robot hardware
					# relayboardv2_state[4] if true safety relay error; check robot hardware
					# relayboardv2_state[5] if true Leistungsrelais error; check robot hardware
					# relayboardv2_state[6] if true EMStop system error; check robot hardware
					# relayboardv2_state[7] reserved
					# relayboardv2_state[8] reserved
					# relayboardv2_state[9] reserved
					# relayboardv2_state[10] reserved
					# relayboardv2_state[11] reserved
					# relayboardv2_state[12] reserved
					# relayboardv2_state[13] reserved
					# relayboardv2_state[14] reserved
					# relayboardv2_state[15] reserved


int16 communication_state		# values see above

int16 charging_state			# values see above

int16 temperature			# temperature on relayboardv2 [°C]

float32 battery_voltage			# battery voltage [V]

float32 charging_current		# charging current [A] if not charging = 0

bool[4] relay_states			# state for each relay on RelayBoardV2; True = Active; False = Inactive
					# relay_states[0] is our charging relay
					# other are free to use

bool[8] keypad				# state for each key on keypad; True = Pressed
					# keypad[0] info button
					# keypad[1] home button
					# keypad[2] start button
					# keypad[3] stop button
					# keypad[4] release brakes button
					# keypad[5] on demand digital input
					# keypad[6] on demand digital input
					# keypad[7] on demand digital input

bool shutdown				# if true host system is asked to shut down



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



(provide :neo_msgs/RelayBoardV2 "83afb76bbd47cf5ea0d7c64c621b54fb")


