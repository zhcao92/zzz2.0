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

class Dimension2DWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length_x = null;
      this.length_y = null;
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
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Dimension2DWithCovariance
    // Serialize message field [length_x]
    bufferOffset = _serializer.float64(obj.length_x, buffer, bufferOffset);
    // Serialize message field [length_y]
    bufferOffset = _serializer.float64(obj.length_y, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 4) {
      throw new Error('Unable to serialize array field covariance - length must be 4')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Dimension2DWithCovariance
    let len;
    let data = new Dimension2DWithCovariance(null);
    // Deserialize message field [length_x]
    data.length_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length_y]
    data.length_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/Dimension2DWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb80ebcc0a2ef8d1a26d96f37247983a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Describing the size object in 2D space (in pixels) with uncertainty
    
    float64 length_x # width
    float64 length_y # length
    
    # Row-major representation of the 2x2 covariance matrix
    # In order, the parameters are: (length_x, length_y)
    float64[4] covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Dimension2DWithCovariance(null);
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

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = Dimension2DWithCovariance;
