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

class FrenetSerretState2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.d = null;
      this.psi = null;
      this.pose_covariance = null;
      this.vs = null;
      this.vd = null;
      this.omega = null;
      this.twist_covariance = null;
      this.sa = null;
      this.ad = null;
      this.epsilon = null;
      this.accel_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('pose_covariance')) {
        this.pose_covariance = initObj.pose_covariance
      }
      else {
        this.pose_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('vs')) {
        this.vs = initObj.vs
      }
      else {
        this.vs = 0.0;
      }
      if (initObj.hasOwnProperty('vd')) {
        this.vd = initObj.vd
      }
      else {
        this.vd = 0.0;
      }
      if (initObj.hasOwnProperty('omega')) {
        this.omega = initObj.omega
      }
      else {
        this.omega = 0.0;
      }
      if (initObj.hasOwnProperty('twist_covariance')) {
        this.twist_covariance = initObj.twist_covariance
      }
      else {
        this.twist_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('sa')) {
        this.sa = initObj.sa
      }
      else {
        this.sa = 0.0;
      }
      if (initObj.hasOwnProperty('ad')) {
        this.ad = initObj.ad
      }
      else {
        this.ad = 0.0;
      }
      if (initObj.hasOwnProperty('epsilon')) {
        this.epsilon = initObj.epsilon
      }
      else {
        this.epsilon = 0.0;
      }
      if (initObj.hasOwnProperty('accel_covariance')) {
        this.accel_covariance = initObj.accel_covariance
      }
      else {
        this.accel_covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrenetSerretState2D
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float32(obj.d, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float32(obj.psi, buffer, bufferOffset);
    // Check that the constant length array field [pose_covariance] has the right length
    if (obj.pose_covariance.length !== 9) {
      throw new Error('Unable to serialize array field pose_covariance - length must be 9')
    }
    // Serialize message field [pose_covariance]
    bufferOffset = _arraySerializer.float32(obj.pose_covariance, buffer, bufferOffset, 9);
    // Serialize message field [vs]
    bufferOffset = _serializer.float32(obj.vs, buffer, bufferOffset);
    // Serialize message field [vd]
    bufferOffset = _serializer.float32(obj.vd, buffer, bufferOffset);
    // Serialize message field [omega]
    bufferOffset = _serializer.float32(obj.omega, buffer, bufferOffset);
    // Check that the constant length array field [twist_covariance] has the right length
    if (obj.twist_covariance.length !== 9) {
      throw new Error('Unable to serialize array field twist_covariance - length must be 9')
    }
    // Serialize message field [twist_covariance]
    bufferOffset = _arraySerializer.float32(obj.twist_covariance, buffer, bufferOffset, 9);
    // Serialize message field [sa]
    bufferOffset = _serializer.float32(obj.sa, buffer, bufferOffset);
    // Serialize message field [ad]
    bufferOffset = _serializer.float32(obj.ad, buffer, bufferOffset);
    // Serialize message field [epsilon]
    bufferOffset = _serializer.float32(obj.epsilon, buffer, bufferOffset);
    // Check that the constant length array field [accel_covariance] has the right length
    if (obj.accel_covariance.length !== 9) {
      throw new Error('Unable to serialize array field accel_covariance - length must be 9')
    }
    // Serialize message field [accel_covariance]
    bufferOffset = _arraySerializer.float32(obj.accel_covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrenetSerretState2D
    let len;
    let data = new FrenetSerretState2D(null);
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_covariance]
    data.pose_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [vs]
    data.vs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vd]
    data.vd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega]
    data.omega = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_covariance]
    data.twist_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [sa]
    data.sa = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ad]
    data.ad = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epsilon]
    data.epsilon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_covariance]
    data.accel_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/FrenetSerretState2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df9764c6ee98f33fca6c752fdbb15bc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a state in 2d Frenet-Serret Frame
    # By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction
    # For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas
    
    # 2D states
    float32 s # Offset in tanget direction
    float32 d # Offset in normal direction
              # we omit the offset in binormal direction
    float32 psi # Heading angle in s-d plane
    float32[9] pose_covariance
    
    # First order derivatives
    float32 vs
    float32 vd
    float32 omega
    float32[9] twist_covariance
    
    # Second order derivatives
    float32 sa # prevent keyword conflict
    float32 ad
    float32 epsilon
    float32[9] accel_covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrenetSerretState2D(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.pose_covariance !== undefined) {
      resolved.pose_covariance = msg.pose_covariance;
    }
    else {
      resolved.pose_covariance = new Array(9).fill(0)
    }

    if (msg.vs !== undefined) {
      resolved.vs = msg.vs;
    }
    else {
      resolved.vs = 0.0
    }

    if (msg.vd !== undefined) {
      resolved.vd = msg.vd;
    }
    else {
      resolved.vd = 0.0
    }

    if (msg.omega !== undefined) {
      resolved.omega = msg.omega;
    }
    else {
      resolved.omega = 0.0
    }

    if (msg.twist_covariance !== undefined) {
      resolved.twist_covariance = msg.twist_covariance;
    }
    else {
      resolved.twist_covariance = new Array(9).fill(0)
    }

    if (msg.sa !== undefined) {
      resolved.sa = msg.sa;
    }
    else {
      resolved.sa = 0.0
    }

    if (msg.ad !== undefined) {
      resolved.ad = msg.ad;
    }
    else {
      resolved.ad = 0.0
    }

    if (msg.epsilon !== undefined) {
      resolved.epsilon = msg.epsilon;
    }
    else {
      resolved.epsilon = 0.0
    }

    if (msg.accel_covariance !== undefined) {
      resolved.accel_covariance = msg.accel_covariance;
    }
    else {
      resolved.accel_covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = FrenetSerretState2D;
