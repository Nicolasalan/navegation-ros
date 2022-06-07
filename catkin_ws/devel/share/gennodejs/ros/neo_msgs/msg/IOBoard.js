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

class IOBoard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.digital_inputs = null;
      this.digital_outputs = null;
      this.analog_inputs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('digital_inputs')) {
        this.digital_inputs = initObj.digital_inputs
      }
      else {
        this.digital_inputs = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('digital_outputs')) {
        this.digital_outputs = initObj.digital_outputs
      }
      else {
        this.digital_outputs = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('analog_inputs')) {
        this.analog_inputs = initObj.analog_inputs
      }
      else {
        this.analog_inputs = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOBoard
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [digital_inputs] has the right length
    if (obj.digital_inputs.length !== 16) {
      throw new Error('Unable to serialize array field digital_inputs - length must be 16')
    }
    // Serialize message field [digital_inputs]
    bufferOffset = _arraySerializer.bool(obj.digital_inputs, buffer, bufferOffset, 16);
    // Check that the constant length array field [digital_outputs] has the right length
    if (obj.digital_outputs.length !== 16) {
      throw new Error('Unable to serialize array field digital_outputs - length must be 16')
    }
    // Serialize message field [digital_outputs]
    bufferOffset = _arraySerializer.bool(obj.digital_outputs, buffer, bufferOffset, 16);
    // Check that the constant length array field [analog_inputs] has the right length
    if (obj.analog_inputs.length !== 8) {
      throw new Error('Unable to serialize array field analog_inputs - length must be 8')
    }
    // Serialize message field [analog_inputs]
    bufferOffset = _arraySerializer.int16(obj.analog_inputs, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOBoard
    let len;
    let data = new IOBoard(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [digital_inputs]
    data.digital_inputs = _arrayDeserializer.bool(buffer, bufferOffset, 16)
    // Deserialize message field [digital_outputs]
    data.digital_outputs = _arrayDeserializer.bool(buffer, bufferOffset, 16)
    // Deserialize message field [analog_inputs]
    data.analog_inputs = _arrayDeserializer.int16(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neo_msgs/IOBoard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e9085371cb5e95c2cbe1368025a2f19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message holds all data available from Neobotix IOBoard
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOBoard(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.digital_inputs !== undefined) {
      resolved.digital_inputs = msg.digital_inputs;
    }
    else {
      resolved.digital_inputs = new Array(16).fill(0)
    }

    if (msg.digital_outputs !== undefined) {
      resolved.digital_outputs = msg.digital_outputs;
    }
    else {
      resolved.digital_outputs = new Array(16).fill(0)
    }

    if (msg.analog_inputs !== undefined) {
      resolved.analog_inputs = msg.analog_inputs;
    }
    else {
      resolved.analog_inputs = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = IOBoard;
