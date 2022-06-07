; Auto-generated. Do not edit!


(cl:in-package neo_msgs-msg)


;//! \htmlinclude RelayBoardV2.msg.html

(cl:defclass <RelayBoardV2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (relayboardv2_state
    :reader relayboardv2_state
    :initarg :relayboardv2_state
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 16 :element-type 'cl:boolean :initial-element cl:nil))
   (communication_state
    :reader communication_state
    :initarg :communication_state
    :type cl:fixnum
    :initform 0)
   (charging_state
    :reader charging_state
    :initarg :charging_state
    :type cl:fixnum
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (charging_current
    :reader charging_current
    :initarg :charging_current
    :type cl:float
    :initform 0.0)
   (relay_states
    :reader relay_states
    :initarg :relay_states
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil))
   (keypad
    :reader keypad
    :initarg :keypad
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (shutdown
    :reader shutdown
    :initarg :shutdown
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardV2 (<RelayBoardV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_msgs-msg:<RelayBoardV2> is deprecated: use neo_msgs-msg:RelayBoardV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:header-val is deprecated.  Use neo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'relayboardv2_state-val :lambda-list '(m))
(cl:defmethod relayboardv2_state-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:relayboardv2_state-val is deprecated.  Use neo_msgs-msg:relayboardv2_state instead.")
  (relayboardv2_state m))

(cl:ensure-generic-function 'communication_state-val :lambda-list '(m))
(cl:defmethod communication_state-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:communication_state-val is deprecated.  Use neo_msgs-msg:communication_state instead.")
  (communication_state m))

(cl:ensure-generic-function 'charging_state-val :lambda-list '(m))
(cl:defmethod charging_state-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:charging_state-val is deprecated.  Use neo_msgs-msg:charging_state instead.")
  (charging_state m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:temperature-val is deprecated.  Use neo_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:battery_voltage-val is deprecated.  Use neo_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'charging_current-val :lambda-list '(m))
(cl:defmethod charging_current-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:charging_current-val is deprecated.  Use neo_msgs-msg:charging_current instead.")
  (charging_current m))

(cl:ensure-generic-function 'relay_states-val :lambda-list '(m))
(cl:defmethod relay_states-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:relay_states-val is deprecated.  Use neo_msgs-msg:relay_states instead.")
  (relay_states m))

(cl:ensure-generic-function 'keypad-val :lambda-list '(m))
(cl:defmethod keypad-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:keypad-val is deprecated.  Use neo_msgs-msg:keypad instead.")
  (keypad m))

(cl:ensure-generic-function 'shutdown-val :lambda-list '(m))
(cl:defmethod shutdown-val ((m <RelayBoardV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_msgs-msg:shutdown-val is deprecated.  Use neo_msgs-msg:shutdown instead.")
  (shutdown m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RelayBoardV2>)))
    "Constants for message type '<RelayBoardV2>"
  '((:CS_NOT_ESTABLISHED . 0)
    (:CS_CONFIGURATION_FAILED . 1)
    (:CS_OK . 2)
    (:CS_LOST . 3)
    (:CS_ERROR . 4)
    (:CHS_NOTCHARGING . 0)
    (:CHS_START_CHARGING . 1)
    (:CHS_CHARGING . 2)
    (:CHS_NO_CHARGER . 3)
    (:CHS_BRAKES_OPEN . 4)
    (:CHS_EMSTOP . 5)
    (:CHS_ABORT . 6)
    (:CHS_FINISHED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RelayBoardV2)))
    "Constants for message type 'RelayBoardV2"
  '((:CS_NOT_ESTABLISHED . 0)
    (:CS_CONFIGURATION_FAILED . 1)
    (:CS_OK . 2)
    (:CS_LOST . 3)
    (:CS_ERROR . 4)
    (:CHS_NOTCHARGING . 0)
    (:CHS_START_CHARGING . 1)
    (:CHS_CHARGING . 2)
    (:CHS_NO_CHARGER . 3)
    (:CHS_BRAKES_OPEN . 4)
    (:CHS_EMSTOP . 5)
    (:CHS_ABORT . 6)
    (:CHS_FINISHED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardV2>) ostream)
  "Serializes a message object of type '<RelayBoardV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'relayboardv2_state))
  (cl:let* ((signed (cl:slot-value msg 'communication_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charging_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'charging_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'relay_states))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'keypad))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shutdown) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardV2>) istream)
  "Deserializes a message object of type '<RelayBoardV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'relayboardv2_state) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'relayboardv2_state)))
    (cl:dotimes (i 16)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'communication_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charging_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charging_current) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'relay_states) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'relay_states)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'keypad) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'keypad)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
    (cl:setf (cl:slot-value msg 'shutdown) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardV2>)))
  "Returns string type for a message object of type '<RelayBoardV2>"
  "neo_msgs/RelayBoardV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardV2)))
  "Returns string type for a message object of type 'RelayBoardV2"
  "neo_msgs/RelayBoardV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardV2>)))
  "Returns md5sum for a message object of type '<RelayBoardV2>"
  "83afb76bbd47cf5ea0d7c64c621b54fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardV2)))
  "Returns md5sum for a message object of type 'RelayBoardV2"
  "83afb76bbd47cf5ea0d7c64c621b54fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardV2>)))
  "Returns full string definition for message of type '<RelayBoardV2>"
  (cl:format cl:nil "# This message holds specific data available from Neobotix RelayBoardV2~%~%std_msgs/Header header~%~%# Possible Communication States~%int16 CS_NOT_ESTABLISHED = 0 		# configuration process has not been started~%int16 CS_CONFIGURATION_FAILED = 1	# configuration process failed~%int16 CS_OK = 2 			# communication is OK~%int16 CS_LOST = 3 			# comminication was lost~%int16 CS_ERROR = 4			# comminication has errors~%~%# Possible Charging States~%int16 CHS_NOTCHARGING = 0 		# no charging in progress; can be started with service /RelayBoardV2/StartCharging~%int16 CHS_START_CHARGING = 1		# RelayBoardV2 is starting charging process~%int16 CHS_CHARGING = 2 			# charging in progress; can be stopped with service /RelayBoardV2/StopCharging~%int16 CHS_NO_CHARGER = 3 		# charging has been started but no charger was connected; this aborts charging~%int16 CHS_BRAKES_OPEN = 4 		# brakes have been opened while charging; this aborts charging~%int16 CHS_EMSTOP = 5 			# EMSTOP has been issued while charging; this aborts charging~%int16 CHS_ABORT = 6 	   		# charging abort by host system~%int16 CHS_FINISHED = 7 			# charging finished~%~%#~%bool[16] relayboardv2_state		# Shows state for all possible errors~%					# relayboardv2_state[0] if true no errors; if false check other fields~%					# relayboardv2_state[1] if true charging relay error; check robot hardware~%					# relayboardv2_state[2] if true release brakes button failed; check robot hardware~%					# relayboardv2_state[3] if true motor error; check robot hardware~%					# relayboardv2_state[4] if true safety relay error; check robot hardware~%					# relayboardv2_state[5] if true Leistungsrelais error; check robot hardware~%					# relayboardv2_state[6] if true EMStop system error; check robot hardware~%					# relayboardv2_state[7] reserved~%					# relayboardv2_state[8] reserved~%					# relayboardv2_state[9] reserved~%					# relayboardv2_state[10] reserved~%					# relayboardv2_state[11] reserved~%					# relayboardv2_state[12] reserved~%					# relayboardv2_state[13] reserved~%					# relayboardv2_state[14] reserved~%					# relayboardv2_state[15] reserved~%~%~%int16 communication_state		# values see above~%~%int16 charging_state			# values see above~%~%int16 temperature			# temperature on relayboardv2 [°C]~%~%float32 battery_voltage			# battery voltage [V]~%~%float32 charging_current		# charging current [A] if not charging = 0~%~%bool[4] relay_states			# state for each relay on RelayBoardV2; True = Active; False = Inactive~%					# relay_states[0] is our charging relay~%					# other are free to use~%~%bool[8] keypad				# state for each key on keypad; True = Pressed~%					# keypad[0] info button~%					# keypad[1] home button~%					# keypad[2] start button~%					# keypad[3] stop button~%					# keypad[4] release brakes button~%					# keypad[5] on demand digital input~%					# keypad[6] on demand digital input~%					# keypad[7] on demand digital input~%~%bool shutdown				# if true host system is asked to shut down~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardV2)))
  "Returns full string definition for message of type 'RelayBoardV2"
  (cl:format cl:nil "# This message holds specific data available from Neobotix RelayBoardV2~%~%std_msgs/Header header~%~%# Possible Communication States~%int16 CS_NOT_ESTABLISHED = 0 		# configuration process has not been started~%int16 CS_CONFIGURATION_FAILED = 1	# configuration process failed~%int16 CS_OK = 2 			# communication is OK~%int16 CS_LOST = 3 			# comminication was lost~%int16 CS_ERROR = 4			# comminication has errors~%~%# Possible Charging States~%int16 CHS_NOTCHARGING = 0 		# no charging in progress; can be started with service /RelayBoardV2/StartCharging~%int16 CHS_START_CHARGING = 1		# RelayBoardV2 is starting charging process~%int16 CHS_CHARGING = 2 			# charging in progress; can be stopped with service /RelayBoardV2/StopCharging~%int16 CHS_NO_CHARGER = 3 		# charging has been started but no charger was connected; this aborts charging~%int16 CHS_BRAKES_OPEN = 4 		# brakes have been opened while charging; this aborts charging~%int16 CHS_EMSTOP = 5 			# EMSTOP has been issued while charging; this aborts charging~%int16 CHS_ABORT = 6 	   		# charging abort by host system~%int16 CHS_FINISHED = 7 			# charging finished~%~%#~%bool[16] relayboardv2_state		# Shows state for all possible errors~%					# relayboardv2_state[0] if true no errors; if false check other fields~%					# relayboardv2_state[1] if true charging relay error; check robot hardware~%					# relayboardv2_state[2] if true release brakes button failed; check robot hardware~%					# relayboardv2_state[3] if true motor error; check robot hardware~%					# relayboardv2_state[4] if true safety relay error; check robot hardware~%					# relayboardv2_state[5] if true Leistungsrelais error; check robot hardware~%					# relayboardv2_state[6] if true EMStop system error; check robot hardware~%					# relayboardv2_state[7] reserved~%					# relayboardv2_state[8] reserved~%					# relayboardv2_state[9] reserved~%					# relayboardv2_state[10] reserved~%					# relayboardv2_state[11] reserved~%					# relayboardv2_state[12] reserved~%					# relayboardv2_state[13] reserved~%					# relayboardv2_state[14] reserved~%					# relayboardv2_state[15] reserved~%~%~%int16 communication_state		# values see above~%~%int16 charging_state			# values see above~%~%int16 temperature			# temperature on relayboardv2 [°C]~%~%float32 battery_voltage			# battery voltage [V]~%~%float32 charging_current		# charging current [A] if not charging = 0~%~%bool[4] relay_states			# state for each relay on RelayBoardV2; True = Active; False = Inactive~%					# relay_states[0] is our charging relay~%					# other are free to use~%~%bool[8] keypad				# state for each key on keypad; True = Pressed~%					# keypad[0] info button~%					# keypad[1] home button~%					# keypad[2] start button~%					# keypad[3] stop button~%					# keypad[4] release brakes button~%					# keypad[5] on demand digital input~%					# keypad[6] on demand digital input~%					# keypad[7] on demand digital input~%~%bool shutdown				# if true host system is asked to shut down~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardV2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'relayboardv2_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
     2
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'relay_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'keypad) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardV2>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardV2
    (cl:cons ':header (header msg))
    (cl:cons ':relayboardv2_state (relayboardv2_state msg))
    (cl:cons ':communication_state (communication_state msg))
    (cl:cons ':charging_state (charging_state msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':charging_current (charging_current msg))
    (cl:cons ':relay_states (relay_states msg))
    (cl:cons ':keypad (keypad msg))
    (cl:cons ':shutdown (shutdown msg))
))
