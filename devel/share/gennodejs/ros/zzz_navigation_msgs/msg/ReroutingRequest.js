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

class ReroutingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reason = null;
    }
    else {
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReroutingRequest
    // Serialize message field [reason]
    bufferOffset = _serializer.uint8(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReroutingRequest
    let len;
    let data = new ReroutingRequest(null);
    // Deserialize message field [reason]
    data.reason = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/ReroutingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d0cd4d064c4100824cd84b5a5934c3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represent request for rerouting.
    
    # The reason for rerouting request
    uint8 reason
    
    # The destination for the rerouting request
    # sensor_msgs/NavSatFix destination
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReroutingRequest(null);
    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = 0
    }

    return resolved;
    }
};

module.exports = ReroutingRequest;
