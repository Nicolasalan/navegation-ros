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

class USBoardV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor = null;
      this.analog = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('analog')) {
        this.analog = initObj.analog
      }
      else {
        this.analog = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type USBoardV2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [sensor] has the right length
    if (obj.sensor.length !== 16) {
      throw new Error('Unable to serialize array field sensor - length must be 16')
    }
    // Serialize message field [sensor]
    bufferOffset = _arraySerializer.float32(obj.sensor, buffer, bufferOffset, 16);
    // Check that the constant length array field [analog] has the right length
    if (obj.analog.length !== 4) {
      throw new Error('Unable to serialize array field analog - length must be 4')
    }
    // Serialize message field [analog]
    bufferOffset = _arraySerializer.int16(obj.analog, buffer, bufferOffset, 4);
    // Check that the constant length array field [active] has the right length
    if (obj.active.length !== 16) {
      throw new Error('Unable to serialize array field active - length must be 16')
    }
    // Serialize message field [active]
    bufferOffset = _arraySerializer.bool(obj.active, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type USBoardV2
    let len;
    let data = new USBoardV2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor]
    data.sensor = _arrayDeserializer.float32(buffer, bufferOffset, 16)
    // Deserialize message field [analog]
    data.analog = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [active]
    data.active = _arrayDeserializer.bool(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neo_msgs/USBoardV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44b18fcbad7e40606fe1cb1fd9a06b3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message holds all data available from Neobotix USBoard
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new USBoardV2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor !== undefined) {
      resolved.sensor = msg.sensor;
    }
    else {
      resolved.sensor = new Array(16).fill(0)
    }

    if (msg.analog !== undefined) {
      resolved.analog = msg.analog;
    }
    else {
      resolved.analog = new Array(4).fill(0)
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = USBoardV2;
