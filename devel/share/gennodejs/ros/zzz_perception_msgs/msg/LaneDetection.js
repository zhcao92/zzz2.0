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

class LaneDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.center_line_coeffs = null;
      this.end_location = null;
    }
    else {
      if (initObj.hasOwnProperty('center_line_coeffs')) {
        this.center_line_coeffs = initObj.center_line_coeffs
      }
      else {
        this.center_line_coeffs = [];
      }
      if (initObj.hasOwnProperty('end_location')) {
        this.end_location = initObj.end_location
      }
      else {
        this.end_location = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneDetection
    // Serialize message field [center_line_coeffs]
    bufferOffset = _arraySerializer.float32(obj.center_line_coeffs, buffer, bufferOffset, null);
    // Serialize message field [end_location]
    bufferOffset = _serializer.float32(obj.end_location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneDetection
    let len;
    let data = new LaneDetection(null);
    // Deserialize message field [center_line_coeffs]
    data.center_line_coeffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [end_location]
    data.end_location = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.center_line_coeffs.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/LaneDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '344c276f64db9a8b75d28e79a5fc0818';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Geometric representation of center line of the lane
    float32[] center_line_coeffs
    
    # The location at the end of the line
    float32 end_location
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneDetection(null);
    if (msg.center_line_coeffs !== undefined) {
      resolved.center_line_coeffs = msg.center_line_coeffs;
    }
    else {
      resolved.center_line_coeffs = []
    }

    if (msg.end_location !== undefined) {
      resolved.end_location = msg.end_location;
    }
    else {
      resolved.end_location = 0.0
    }

    return resolved;
    }
};

module.exports = LaneDetection;
