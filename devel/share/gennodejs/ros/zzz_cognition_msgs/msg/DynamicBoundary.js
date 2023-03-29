// Auto-generated. Do not edit!

// (in-package zzz_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DynamicBoundaryPoint = require('./DynamicBoundaryPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DynamicBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.boundary = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('boundary')) {
        this.boundary = initObj.boundary
      }
      else {
        this.boundary = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicBoundary
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [boundary]
    // Serialize the length for message field [boundary]
    bufferOffset = _serializer.uint32(obj.boundary.length, buffer, bufferOffset);
    obj.boundary.forEach((val) => {
      bufferOffset = DynamicBoundaryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicBoundary
    let len;
    let data = new DynamicBoundary(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [boundary]
    // Deserialize array length for message field [boundary]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boundary = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundary[i] = DynamicBoundaryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.boundary.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_cognition_msgs/DynamicBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73db63c598006d00c116b478d56b2cc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents a compact dynamc environment representation with dynamic boundary
    
    Header header
    DynamicBoundaryPoint[] boundary
    
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
    
    ================================================================================
    MSG: zzz_cognition_msgs/DynamicBoundaryPoint
    # This message represents a point in the dynamic boundary
    
    float32 x
    float32 y
    float32 vx
    float32 vy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicBoundary(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.boundary !== undefined) {
      resolved.boundary = new Array(msg.boundary.length);
      for (let i = 0; i < resolved.boundary.length; ++i) {
        resolved.boundary[i] = DynamicBoundaryPoint.Resolve(msg.boundary[i]);
      }
    }
    else {
      resolved.boundary = []
    }

    return resolved;
    }
};

module.exports = DynamicBoundary;
