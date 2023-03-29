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

class AuxiliaryReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fcw_flag = null;
      this.aeb_flag = null;
      this.acc_flag = null;
      this.ldw_flag = null;
      this.bsd_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('fcw_flag')) {
        this.fcw_flag = initObj.fcw_flag
      }
      else {
        this.fcw_flag = 0;
      }
      if (initObj.hasOwnProperty('aeb_flag')) {
        this.aeb_flag = initObj.aeb_flag
      }
      else {
        this.aeb_flag = 0;
      }
      if (initObj.hasOwnProperty('acc_flag')) {
        this.acc_flag = initObj.acc_flag
      }
      else {
        this.acc_flag = 0;
      }
      if (initObj.hasOwnProperty('ldw_flag')) {
        this.ldw_flag = initObj.ldw_flag
      }
      else {
        this.ldw_flag = 0;
      }
      if (initObj.hasOwnProperty('bsd_flag')) {
        this.bsd_flag = initObj.bsd_flag
      }
      else {
        this.bsd_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AuxiliaryReport
    // Serialize message field [fcw_flag]
    bufferOffset = _serializer.uint8(obj.fcw_flag, buffer, bufferOffset);
    // Serialize message field [aeb_flag]
    bufferOffset = _serializer.uint8(obj.aeb_flag, buffer, bufferOffset);
    // Serialize message field [acc_flag]
    bufferOffset = _serializer.uint8(obj.acc_flag, buffer, bufferOffset);
    // Serialize message field [ldw_flag]
    bufferOffset = _serializer.uint8(obj.ldw_flag, buffer, bufferOffset);
    // Serialize message field [bsd_flag]
    bufferOffset = _serializer.uint8(obj.bsd_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AuxiliaryReport
    let len;
    let data = new AuxiliaryReport(null);
    // Deserialize message field [fcw_flag]
    data.fcw_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aeb_flag]
    data.aeb_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acc_flag]
    data.acc_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ldw_flag]
    data.ldw_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bsd_flag]
    data.bsd_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/AuxiliaryReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46bed4f4c85b89c6936b9a6716c138b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message provide interface for additional vehicle modules, e.g. ACC, BSD
    
    
    # Forward Collison Warning status
    uint8 fcw_flag
    uint8 FCW_AVAILABLE = 1
    uint8 FCW_ALERT = 2
    
    # Automatic Emergency Brake status
    uint8 aeb_flag
    uint8 AEB_AVAILABLE = 1
    uint8 AEB_PRECHARGE = 2
    uint8 AEB_BRAKING = 4
    
    # Adaptive Cruise Control status
    uint8 acc_flag
    uint8 ACC_AVAILABLE = 1
    uint8 ACC_BRAKING = 2
    
    # Lane Departure Warning status
    uint8 ldw_flag
    uint8 LDW_AVAILABLE = 1
    uint8 LDW_LEFT_ALERT = 2
    uint8 LDW_RIGHT_ALERT = 4
    
    # Blind Spot Detection status
    uint8 bsd_flag
    uint8 BSD_AVAILABLE = 1
    uint8 BSD_LEFT_ALERT = 2
    uint8 BSD_RIGHT_ALERT = 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AuxiliaryReport(null);
    if (msg.fcw_flag !== undefined) {
      resolved.fcw_flag = msg.fcw_flag;
    }
    else {
      resolved.fcw_flag = 0
    }

    if (msg.aeb_flag !== undefined) {
      resolved.aeb_flag = msg.aeb_flag;
    }
    else {
      resolved.aeb_flag = 0
    }

    if (msg.acc_flag !== undefined) {
      resolved.acc_flag = msg.acc_flag;
    }
    else {
      resolved.acc_flag = 0
    }

    if (msg.ldw_flag !== undefined) {
      resolved.ldw_flag = msg.ldw_flag;
    }
    else {
      resolved.ldw_flag = 0
    }

    if (msg.bsd_flag !== undefined) {
      resolved.bsd_flag = msg.bsd_flag;
    }
    else {
      resolved.bsd_flag = 0
    }

    return resolved;
    }
};

// Constants for message
AuxiliaryReport.Constants = {
  FCW_AVAILABLE: 1,
  FCW_ALERT: 2,
  AEB_AVAILABLE: 1,
  AEB_PRECHARGE: 2,
  AEB_BRAKING: 4,
  ACC_AVAILABLE: 1,
  ACC_BRAKING: 2,
  LDW_AVAILABLE: 1,
  LDW_LEFT_ALERT: 2,
  LDW_RIGHT_ALERT: 4,
  BSD_AVAILABLE: 1,
  BSD_LEFT_ALERT: 2,
  BSD_RIGHT_ALERT: 4,
}

module.exports = AuxiliaryReport;
