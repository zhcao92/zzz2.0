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

class ControlReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.throttle_available = null;
      this.throttle_override = null;
      this.throttle_report = null;
      this.brake_available = null;
      this.brake_override = null;
      this.brake_report = null;
      this.steer_available = null;
      this.steer_override = null;
      this.steer_report = null;
    }
    else {
      if (initObj.hasOwnProperty('throttle_available')) {
        this.throttle_available = initObj.throttle_available
      }
      else {
        this.throttle_available = false;
      }
      if (initObj.hasOwnProperty('throttle_override')) {
        this.throttle_override = initObj.throttle_override
      }
      else {
        this.throttle_override = false;
      }
      if (initObj.hasOwnProperty('throttle_report')) {
        this.throttle_report = initObj.throttle_report
      }
      else {
        this.throttle_report = 0.0;
      }
      if (initObj.hasOwnProperty('brake_available')) {
        this.brake_available = initObj.brake_available
      }
      else {
        this.brake_available = false;
      }
      if (initObj.hasOwnProperty('brake_override')) {
        this.brake_override = initObj.brake_override
      }
      else {
        this.brake_override = false;
      }
      if (initObj.hasOwnProperty('brake_report')) {
        this.brake_report = initObj.brake_report
      }
      else {
        this.brake_report = 0.0;
      }
      if (initObj.hasOwnProperty('steer_available')) {
        this.steer_available = initObj.steer_available
      }
      else {
        this.steer_available = false;
      }
      if (initObj.hasOwnProperty('steer_override')) {
        this.steer_override = initObj.steer_override
      }
      else {
        this.steer_override = false;
      }
      if (initObj.hasOwnProperty('steer_report')) {
        this.steer_report = initObj.steer_report
      }
      else {
        this.steer_report = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlReport
    // Serialize message field [throttle_available]
    bufferOffset = _serializer.bool(obj.throttle_available, buffer, bufferOffset);
    // Serialize message field [throttle_override]
    bufferOffset = _serializer.bool(obj.throttle_override, buffer, bufferOffset);
    // Serialize message field [throttle_report]
    bufferOffset = _serializer.float32(obj.throttle_report, buffer, bufferOffset);
    // Serialize message field [brake_available]
    bufferOffset = _serializer.bool(obj.brake_available, buffer, bufferOffset);
    // Serialize message field [brake_override]
    bufferOffset = _serializer.bool(obj.brake_override, buffer, bufferOffset);
    // Serialize message field [brake_report]
    bufferOffset = _serializer.float32(obj.brake_report, buffer, bufferOffset);
    // Serialize message field [steer_available]
    bufferOffset = _serializer.bool(obj.steer_available, buffer, bufferOffset);
    // Serialize message field [steer_override]
    bufferOffset = _serializer.bool(obj.steer_override, buffer, bufferOffset);
    // Serialize message field [steer_report]
    bufferOffset = _serializer.float32(obj.steer_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlReport
    let len;
    let data = new ControlReport(null);
    // Deserialize message field [throttle_available]
    data.throttle_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [throttle_override]
    data.throttle_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [throttle_report]
    data.throttle_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_available]
    data.brake_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_override]
    data.brake_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_report]
    data.brake_report = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steer_available]
    data.steer_available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steer_override]
    data.steer_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steer_report]
    data.steer_report = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/ControlReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cca91eb5bf039a027d362a7a7aae6512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Interface for vehicle control
    
    # ---------- Trottle ----------
    # Throttle control by-wire enabled
    bool throttle_available
    # Throttle control overtaken
    bool throttle_override 
    # Reported throttle level
    float32 throttle_report
    
    # ---------- Brake ----------
    # Braking control by-wire enabled
    bool brake_available
    # Braking control overtaken
    bool brake_override
    # Reported braking level
    float32 brake_report
    
    # ---------- Steering ----------
    # Steering control by-wire enabled
    bool steer_available
    # Steering control overtaken
    bool steer_override
    # Reported steering level
    float32 steer_report
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlReport(null);
    if (msg.throttle_available !== undefined) {
      resolved.throttle_available = msg.throttle_available;
    }
    else {
      resolved.throttle_available = false
    }

    if (msg.throttle_override !== undefined) {
      resolved.throttle_override = msg.throttle_override;
    }
    else {
      resolved.throttle_override = false
    }

    if (msg.throttle_report !== undefined) {
      resolved.throttle_report = msg.throttle_report;
    }
    else {
      resolved.throttle_report = 0.0
    }

    if (msg.brake_available !== undefined) {
      resolved.brake_available = msg.brake_available;
    }
    else {
      resolved.brake_available = false
    }

    if (msg.brake_override !== undefined) {
      resolved.brake_override = msg.brake_override;
    }
    else {
      resolved.brake_override = false
    }

    if (msg.brake_report !== undefined) {
      resolved.brake_report = msg.brake_report;
    }
    else {
      resolved.brake_report = 0.0
    }

    if (msg.steer_available !== undefined) {
      resolved.steer_available = msg.steer_available;
    }
    else {
      resolved.steer_available = false
    }

    if (msg.steer_override !== undefined) {
      resolved.steer_override = msg.steer_override;
    }
    else {
      resolved.steer_override = false
    }

    if (msg.steer_report !== undefined) {
      resolved.steer_report = msg.steer_report;
    }
    else {
      resolved.steer_report = 0.0
    }

    return resolved;
    }
};

module.exports = ControlReport;
