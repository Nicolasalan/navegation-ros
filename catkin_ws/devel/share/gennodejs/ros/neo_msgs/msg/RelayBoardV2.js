// Auto-generated. Do not edit!

// (in-package neo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RelayBoardV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.relayboardv2_state = null;
      this.communication_state = null;
      this.charging_state = null;
      this.temperature = null;
      this.battery_voltage = null;
      this.charging_current = null;
      this.relay_states = null;
      this.keypad = null;
      this.shutdown = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('relayboardv2_state')) {
        this.relayboardv2_state = initObj.relayboardv2_state
      }
      else {
        this.relayboardv2_state = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('communication_state')) {
        this.communication_state = initObj.communication_state
      }
      else {
        this.communication_state = 0;
      }
      if (initObj.hasOwnProperty('charging_state')) {
        this.charging_state = initObj.charging_state
      }
      else {
        this.charging_state = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('charging_current')) {
        this.charging_current = initObj.charging_current
      }
      else {
        this.charging_current = 0.0;
      }
      if (initObj.hasOwnProperty('relay_states')) {
        this.relay_states = initObj.relay_states
      }
      else {
        this.relay_states = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('keypad')) {
        this.keypad = initObj.keypad
      }
      else {
        this.keypad = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('shutdown')) {
        this.shutdown = initObj.shutdown
      }
      else {
        this.shutdown = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelayBoardV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [relayboardv2_state] has the right length
    if (obj.relayboardv2_state.length !== 16) {
      throw new Error('Unable to serialize array field relayboardv2_state - length must be 16')
    }
    // Serialize message field [relayboardv2_state]
    bufferOffset = _arraySerializer.bool(obj.relayboardv2_state, buffer, bufferOffset, 16);
    // Serialize message field [communication_state]
    bufferOffset = _serializer.int16(obj.communication_state, buffer, bufferOffset);
    // Serialize message field [charging_state]
    bufferOffset = _serializer.int16(obj.charging_state, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int16(obj.temperature, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float32(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [charging_current]
    bufferOffset = _serializer.float32(obj.charging_current, buffer, bufferOffset);
    // Check that the constant length array field [relay_states] has the right length
    if (obj.relay_states.length !== 4) {
      throw new Error('Unable to serialize array field relay_states - length must be 4')
    }
    // Serialize message field [relay_states]
    bufferOffset = _arraySerializer.bool(obj.relay_states, buffer, bufferOffset, 4);
    // Check that the constant length array field [keypad] has the right length
    if (obj.keypad.length !== 8) {
      throw new Error('Unable to serialize array field keypad - length must be 8')
    }
    // Serialize message field [keypad]
    bufferOffset = _arraySerializer.bool(obj.keypad, buffer, bufferOffset, 8);
    // Serialize message field [shutdown]
    bufferOffset = _serializer.bool(obj.shutdown, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelayBoardV2
    let len;
    let data = new RelayBoardV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [relayboardv2_state]
    data.relayboardv2_state = _arrayDeserializer.bool(buffer, bufferOffset, 16)
    // Deserialize message field [communication_state]
    data.communication_state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [charging_state]
    data.charging_state = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charging_current]
    data.charging_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relay_states]
    data.relay_states = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [keypad]
    data.keypad = _arrayDeserializer.bool(buffer, bufferOffset, 8)
    // Deserialize message field [shutdown]
    data.shutdown = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neo_msgs/RelayBoardV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83afb76bbd47cf5ea0d7c64c621b54fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message holds specific data available from Neobotix RelayBoardV2
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelayBoardV2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.relayboardv2_state !== undefined) {
      resolved.relayboardv2_state = msg.relayboardv2_state;
    }
    else {
      resolved.relayboardv2_state = new Array(16).fill(0)
    }

    if (msg.communication_state !== undefined) {
      resolved.communication_state = msg.communication_state;
    }
    else {
      resolved.communication_state = 0
    }

    if (msg.charging_state !== undefined) {
      resolved.charging_state = msg.charging_state;
    }
    else {
      resolved.charging_state = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.charging_current !== undefined) {
      resolved.charging_current = msg.charging_current;
    }
    else {
      resolved.charging_current = 0.0
    }

    if (msg.relay_states !== undefined) {
      resolved.relay_states = msg.relay_states;
    }
    else {
      resolved.relay_states = new Array(4).fill(0)
    }

    if (msg.keypad !== undefined) {
      resolved.keypad = msg.keypad;
    }
    else {
      resolved.keypad = new Array(8).fill(0)
    }

    if (msg.shutdown !== undefined) {
      resolved.shutdown = msg.shutdown;
    }
    else {
      resolved.shutdown = false
    }

    return resolved;
    }
};

// Constants for message
RelayBoardV2.Constants = {
  CS_NOT_ESTABLISHED: 0,
  CS_CONFIGURATION_FAILED: 1,
  CS_OK: 2,
  CS_LOST: 3,
  CS_ERROR: 4,
  CHS_NOTCHARGING: 0,
  CHS_START_CHARGING: 1,
  CHS_CHARGING: 2,
  CHS_NO_CHARGER: 3,
  CHS_BRAKES_OPEN: 4,
  CHS_EMSTOP: 5,
  CHS_ABORT: 6,
  CHS_FINISHED: 7,
}

module.exports = RelayBoardV2;
