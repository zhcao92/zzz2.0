// Auto-generated. Do not edit!

// (in-package zzz_driver_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ChassisReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed = null;
      this.wheel_speed_fl = null;
      this.wheel_speed_fr = null;
      this.wheel_speed_rl = null;
      this.wheel_speed_rr = null;
    }
    else {
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_fl')) {
        this.wheel_speed_fl = initObj.wheel_speed_fl
      }
      else {
        this.wheel_speed_fl = 0;
      }
      if (initObj.hasOwnProperty('wheel_speed_fr')) {
        this.wheel_speed_fr = initObj.wheel_speed_fr
      }
      else {
        this.wheel_speed_fr = 0;
      }
      if (initObj.hasOwnProperty('wheel_speed_rl')) {
        this.wheel_speed_rl = initObj.wheel_speed_rl
      }
      else {
        this.wheel_speed_rl = 0;
      }
      if (initObj.hasOwnProperty('wheel_speed_rr')) {
        this.wheel_speed_rr = initObj.wheel_speed_rr
      }
      else {
        this.wheel_speed_rr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisReport
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [wheel_speed_fl]
    bufferOffset = _serializer.int32(obj.wheel_speed_fl, buffer, bufferOffset);
    // Serialize message field [wheel_speed_fr]
    bufferOffset = _serializer.int32(obj.wheel_speed_fr, buffer, bufferOffset);
    // Serialize message field [wheel_speed_rl]
    bufferOffset = _serializer.int32(obj.wheel_speed_rl, buffer, bufferOffset);
    // Serialize message field [wheel_speed_rr]
    bufferOffset = _serializer.int32(obj.wheel_speed_rr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisReport
    let len;
    let data = new ChassisReport(null);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_fl]
    data.wheel_speed_fl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_fr]
    data.wheel_speed_fr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_rl]
    data.wheel_speed_rl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_rr]
    data.wheel_speed_rr = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/ChassisReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0a29ac7eeffeb332f52a08cd1c9e8d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Information reported by chassis components
    
    # Vehicle speed
    float32 speed
    
    # Wheel speed (rad/s)
    int32 wheel_speed_fl
    int32 wheel_speed_fr
    int32 wheel_speed_rl
    int32 wheel_speed_rr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisReport(null);
    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.wheel_speed_fl !== undefined) {
      resolved.wheel_speed_fl = msg.wheel_speed_fl;
    }
    else {
      resolved.wheel_speed_fl = 0
    }

    if (msg.wheel_speed_fr !== undefined) {
      resolved.wheel_speed_fr = msg.wheel_speed_fr;
    }
    else {
      resolved.wheel_speed_fr = 0
    }

    if (msg.wheel_speed_rl !== undefined) {
      resolved.wheel_speed_rl = msg.wheel_speed_rl;
    }
    else {
      resolved.wheel_speed_rl = 0
    }

    if (msg.wheel_speed_rr !== undefined) {
      resolved.wheel_speed_rr = msg.wheel_speed_rr;
    }
    else {
      resolved.wheel_speed_rr = 0
    }

    return resolved;
    }
};

module.exports = ChassisReport;
