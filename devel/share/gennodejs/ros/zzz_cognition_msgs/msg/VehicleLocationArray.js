// Auto-generated. Do not edit!

// (in-package zzz_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleLocation = require('./VehicleLocation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleLocationArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehiclelocationarray = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehiclelocationarray')) {
        this.vehiclelocationarray = initObj.vehiclelocationarray
      }
      else {
        this.vehiclelocationarray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleLocationArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehiclelocationarray]
    // Serialize the length for message field [vehiclelocationarray]
    bufferOffset = _serializer.uint32(obj.vehiclelocationarray.length, buffer, bufferOffset);
    obj.vehiclelocationarray.forEach((val) => {
      bufferOffset = VehicleLocation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleLocationArray
    let len;
    let data = new VehicleLocationArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehiclelocationarray]
    // Deserialize array length for message field [vehiclelocationarray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehiclelocationarray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehiclelocationarray[i] = VehicleLocation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.vehiclelocationarray.forEach((val) => {
      length += VehicleLocation.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_cognition_msgs/VehicleLocationArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05a1add39e990f1618c38da9e9721a1b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    VehicleLocation[] vehiclelocationarray
    
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
    MSG: zzz_cognition_msgs/VehicleLocation
    Header header
    
    float64 lat
    float64 lon
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleLocationArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehiclelocationarray !== undefined) {
      resolved.vehiclelocationarray = new Array(msg.vehiclelocationarray.length);
      for (let i = 0; i < resolved.vehiclelocationarray.length; ++i) {
        resolved.vehiclelocationarray[i] = VehicleLocation.Resolve(msg.vehiclelocationarray[i]);
      }
    }
    else {
      resolved.vehiclelocationarray = []
    }

    return resolved;
    }
};

module.exports = VehicleLocationArray;
