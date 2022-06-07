// Auto-generated. Do not edit!

// (in-package neo_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ResetOmniWheelsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steer_angles_rad = null;
    }
    else {
      if (initObj.hasOwnProperty('steer_angles_rad')) {
        this.steer_angles_rad = initObj.steer_angles_rad
      }
      else {
        this.steer_angles_rad = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetOmniWheelsRequest
    // Serialize message field [steer_angles_rad]
    bufferOffset = _arraySerializer.float32(obj.steer_angles_rad, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetOmniWheelsRequest
    let len;
    let data = new ResetOmniWheelsRequest(null);
    // Deserialize message field [steer_angles_rad]
    data.steer_angles_rad = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.steer_angles_rad.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'neo_srvs/ResetOmniWheelsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd89344c94316a386e3c391ced0645d9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] steer_angles_rad
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetOmniWheelsRequest(null);
    if (msg.steer_angles_rad !== undefined) {
      resolved.steer_angles_rad = msg.steer_angles_rad;
    }
    else {
      resolved.steer_angles_rad = []
    }

    return resolved;
    }
};

class ResetOmniWheelsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResetOmniWheelsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResetOmniWheelsResponse
    let len;
    let data = new ResetOmniWheelsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'neo_srvs/ResetOmniWheelsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResetOmniWheelsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ResetOmniWheelsRequest,
  Response: ResetOmniWheelsResponse,
  md5sum() { return 'fc4174458451e931b5704dcb756e00b4'; },
  datatype() { return 'neo_srvs/ResetOmniWheels'; }
};
