// Auto-generated. Do not edit!

// (in-package zzz_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObjectSignals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flags = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectSignals
    // Serialize message field [flags]
    bufferOffset = _serializer.uint16(obj.flags, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectSignals
    let len;
    let data = new ObjectSignals(null);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/ObjectSignals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7911e45a2280b3764131391e149fc54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used to represent detected vehicle light signals or human hand signals
    
    # Signal flags. Multiple signal emission can exists in the same time.
    uint16 flags
    
    uint16 UNKNOWN                          = 0     # 0x00
    uint16 NONE                             = 16    # 0x10
    
    # This field is related to https://en.wikipedia.org/wiki/Automotive_lighting
    uint16 VEHICLE_SIGNAL                   = 1     # 0x01
    uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11
    uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21
    uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31
    uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41
    uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51
    uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61
    
    # This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects
    uint16 TRAFFIC_LIGHT                    = 2     # 0x02
    uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12
    uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22
    uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32
    uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42
    uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42
    
    # Confidence of the signal detection
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectSignals(null);
    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

// Constants for message
ObjectSignals.Constants = {
  UNKNOWN: 0,
  NONE: 16,
  VEHICLE_SIGNAL: 1,
  VEHICLE_SIGNAL_LEFT_TURN: 17,
  VEHICLE_SIGNAL_RIGHT_TURN: 33,
  VEHICLE_SIGNAL_HAZARD: 49,
  VEHICLE_SIGNAL_BRAKE: 65,
  VEHICLE_SIGNAL_REVERSE: 81,
  VEHICLE_SIGNAL_SPEED_30_LIMIT: 97,
  TRAFFIC_LIGHT: 2,
  TRAFFIC_LIGHT_RED: 18,
  TRAFFIC_LIGHT_YELLOW: 34,
  TRAFFIC_LIGHT_GREEN: 50,
  TRAFFIC_LIGHT_GREEN_LEFT_TURN: 66,
  TRAFFIC_LIGHT_GREEN_RIGHT_TURN: 66,
}

module.exports = ObjectSignals;
