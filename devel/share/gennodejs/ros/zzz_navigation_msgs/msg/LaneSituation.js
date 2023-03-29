// Auto-generated. Do not edit!

// (in-package zzz_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneSituation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.length = null;
      this.situation_type = null;
      this.reduced_max_speed = null;
      this.comments = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('situation_type')) {
        this.situation_type = initObj.situation_type
      }
      else {
        this.situation_type = 0;
      }
      if (initObj.hasOwnProperty('reduced_max_speed')) {
        this.reduced_max_speed = initObj.reduced_max_speed
      }
      else {
        this.reduced_max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('comments')) {
        this.comments = initObj.comments
      }
      else {
        this.comments = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSituation
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [situation_type]
    bufferOffset = _serializer.uint8(obj.situation_type, buffer, bufferOffset);
    // Serialize message field [reduced_max_speed]
    bufferOffset = _serializer.float32(obj.reduced_max_speed, buffer, bufferOffset);
    // Serialize message field [comments]
    bufferOffset = _serializer.string(obj.comments, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSituation
    let len;
    let data = new LaneSituation(null);
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [situation_type]
    data.situation_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reduced_max_speed]
    data.reduced_max_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [comments]
    data.comments = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.comments.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/LaneSituation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d4a4be92b4d0a3851a0b3bbd6d00866';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message store any uncommon situations on a road
    # Situation can be a map specified object or fresh events
    
    # The location of the situation in a lane (distance from lane start)
    float32 s
    
    # How long this situation affect along the lane.
    # Inf means take effect until lane ends
    float32 length
    
    # Type of situation
    uint8 situation_type
    uint8 SITUATION_NOT_SPECIFIED = 0
    uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here
    uint8 SITUATION_CROSSWALK = 2 # Crosswalk
    uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc
    
    # ------- Situation information -------
    # The new speed limit. Zero means the vehicle is required to stop
    float32 reduced_max_speed
    
    # Additional information
    string comments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSituation(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.situation_type !== undefined) {
      resolved.situation_type = msg.situation_type;
    }
    else {
      resolved.situation_type = 0
    }

    if (msg.reduced_max_speed !== undefined) {
      resolved.reduced_max_speed = msg.reduced_max_speed;
    }
    else {
      resolved.reduced_max_speed = 0.0
    }

    if (msg.comments !== undefined) {
      resolved.comments = msg.comments;
    }
    else {
      resolved.comments = ''
    }

    return resolved;
    }
};

// Constants for message
LaneSituation.Constants = {
  SITUATION_NOT_SPECIFIED: 0,
  SITUATION_BLOCKED: 1,
  SITUATION_CROSSWALK: 2,
  SITUATION_REDUCE_SPEED: 3,
}

module.exports = LaneSituation;
