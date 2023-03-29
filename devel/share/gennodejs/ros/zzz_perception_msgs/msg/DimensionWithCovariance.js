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

class DimensionWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length_x = null;
      this.length_y = null;
      this.length_z = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('length_x')) {
        this.length_x = initObj.length_x
      }
      else {
        this.length_x = 0.0;
      }
      if (initObj.hasOwnProperty('length_y')) {
        this.length_y = initObj.length_y
      }
      else {
        this.length_y = 0.0;
      }
      if (initObj.hasOwnProperty('length_z')) {
        this.length_z = initObj.length_z
      }
      else {
        this.length_z = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DimensionWithCovariance
    // Serialize message field [length_x]
    bufferOffset = _serializer.float64(obj.length_x, buffer, bufferOffset);
    // Serialize message field [length_y]
    bufferOffset = _serializer.float64(obj.length_y, buffer, bufferOffset);
    // Serialize message field [length_z]
    bufferOffset = _serializer.float64(obj.length_z, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 9) {
      throw new Error('Unable to serialize array field covariance - length must be 9')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DimensionWithCovariance
    let len;
    let data = new DimensionWithCovariance(null);
    // Deserialize message field [length_x]
    data.length_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length_y]
    data.length_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length_z]
    data.length_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/DimensionWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee5f3d39f08623c93a6f325eab556879';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Describing the size object in 3D space (in meters) with uncertainty
    
    float64 length_x # length(longitudinal direction)
    float64 length_y # width(lateral direction)
    float64 length_z # height
    
    # Row-major representation of the 3x3 covariance matrix
    # In order, the parameters are: (length_x, length_y, length_z)
    float64[9] covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DimensionWithCovariance(null);
    if (msg.length_x !== undefined) {
      resolved.length_x = msg.length_x;
    }
    else {
      resolved.length_x = 0.0
    }

    if (msg.length_y !== undefined) {
      resolved.length_y = msg.length_y;
    }
    else {
      resolved.length_y = 0.0
    }

    if (msg.length_z !== undefined) {
      resolved.length_z = msg.length_z;
    }
    else {
      resolved.length_z = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = DimensionWithCovariance;
