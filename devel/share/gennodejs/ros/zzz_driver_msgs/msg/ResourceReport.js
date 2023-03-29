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

class ResourceReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.energy_level = null;
      this.distance_to_refill = null;
      this.odometer = null;
    }
    else {
      if (initObj.hasOwnProperty('energy_level')) {
        this.energy_level = initObj.energy_level
      }
      else {
        this.energy_level = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_refill')) {
        this.distance_to_refill = initObj.distance_to_refill
      }
      else {
        this.distance_to_refill = 0.0;
      }
      if (initObj.hasOwnProperty('odometer')) {
        this.odometer = initObj.odometer
      }
      else {
        this.odometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResourceReport
    // Serialize message field [energy_level]
    bufferOffset = _serializer.float32(obj.energy_level, buffer, bufferOffset);
    // Serialize message field [distance_to_refill]
    bufferOffset = _serializer.float32(obj.distance_to_refill, buffer, bufferOffset);
    // Serialize message field [odometer]
    bufferOffset = _serializer.float32(obj.odometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResourceReport
    let len;
    let data = new ResourceReport(null);
    // Deserialize message field [energy_level]
    data.energy_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_refill]
    data.distance_to_refill = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometer]
    data.odometer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/ResourceReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0533402475b5b1c56a96351a1100d35f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Information for vehicle resources, can be used for eco driving
    
    # Fuel level / EV battery level (%, 0 to 100)
    float32 energy_level
    
    # Estimate distance to refill fuel/battery
    float32 distance_to_refill
    
    # Odometer (km)
    float32 odometer
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResourceReport(null);
    if (msg.energy_level !== undefined) {
      resolved.energy_level = msg.energy_level;
    }
    else {
      resolved.energy_level = 0.0
    }

    if (msg.distance_to_refill !== undefined) {
      resolved.distance_to_refill = msg.distance_to_refill;
    }
    else {
      resolved.distance_to_refill = 0.0
    }

    if (msg.odometer !== undefined) {
      resolved.odometer = msg.odometer;
    }
    else {
      resolved.odometer = 0.0
    }

    return resolved;
    }
};

module.exports = ResourceReport;
