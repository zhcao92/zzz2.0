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

class FrenetSerretState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.d = null;
      this.b = null;
      this.psi_s = null;
      this.psi_d = null;
      this.psi_b = null;
      this.pose_covariance = null;
      this.vs = null;
      this.vd = null;
      this.vb = null;
      this.omega_s = null;
      this.omega_d = null;
      this.omega_b = null;
      this.twist_covariance = null;
      this.sa = null;
      this.ad = null;
      this.ab = null;
      this.epsilon_s = null;
      this.epsilon_d = null;
      this.epsilon_b = null;
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
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('psi_s')) {
        this.psi_s = initObj.psi_s
      }
      else {
        this.psi_s = 0.0;
      }
      if (initObj.hasOwnProperty('psi_d')) {
        this.psi_d = initObj.psi_d
      }
      else {
        this.psi_d = 0.0;
      }
      if (initObj.hasOwnProperty('psi_b')) {
        this.psi_b = initObj.psi_b
      }
      else {
        this.psi_b = 0.0;
      }
      if (initObj.hasOwnProperty('pose_covariance')) {
        this.pose_covariance = initObj.pose_covariance
      }
      else {
        this.pose_covariance = new Array(36).fill(0);
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
      if (initObj.hasOwnProperty('vb')) {
        this.vb = initObj.vb
      }
      else {
        this.vb = 0.0;
      }
      if (initObj.hasOwnProperty('omega_s')) {
        this.omega_s = initObj.omega_s
      }
      else {
        this.omega_s = 0.0;
      }
      if (initObj.hasOwnProperty('omega_d')) {
        this.omega_d = initObj.omega_d
      }
      else {
        this.omega_d = 0.0;
      }
      if (initObj.hasOwnProperty('omega_b')) {
        this.omega_b = initObj.omega_b
      }
      else {
        this.omega_b = 0.0;
      }
      if (initObj.hasOwnProperty('twist_covariance')) {
        this.twist_covariance = initObj.twist_covariance
      }
      else {
        this.twist_covariance = new Array(36).fill(0);
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
      if (initObj.hasOwnProperty('ab')) {
        this.ab = initObj.ab
      }
      else {
        this.ab = 0.0;
      }
      if (initObj.hasOwnProperty('epsilon_s')) {
        this.epsilon_s = initObj.epsilon_s
      }
      else {
        this.epsilon_s = 0.0;
      }
      if (initObj.hasOwnProperty('epsilon_d')) {
        this.epsilon_d = initObj.epsilon_d
      }
      else {
        this.epsilon_d = 0.0;
      }
      if (initObj.hasOwnProperty('epsilon_b')) {
        this.epsilon_b = initObj.epsilon_b
      }
      else {
        this.epsilon_b = 0.0;
      }
      if (initObj.hasOwnProperty('accel_covariance')) {
        this.accel_covariance = initObj.accel_covariance
      }
      else {
        this.accel_covariance = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrenetSerretState
    // Serialize message field [s]
    bufferOffset = _serializer.float32(obj.s, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.float32(obj.d, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float32(obj.b, buffer, bufferOffset);
    // Serialize message field [psi_s]
    bufferOffset = _serializer.float32(obj.psi_s, buffer, bufferOffset);
    // Serialize message field [psi_d]
    bufferOffset = _serializer.float32(obj.psi_d, buffer, bufferOffset);
    // Serialize message field [psi_b]
    bufferOffset = _serializer.float32(obj.psi_b, buffer, bufferOffset);
    // Check that the constant length array field [pose_covariance] has the right length
    if (obj.pose_covariance.length !== 36) {
      throw new Error('Unable to serialize array field pose_covariance - length must be 36')
    }
    // Serialize message field [pose_covariance]
    bufferOffset = _arraySerializer.float32(obj.pose_covariance, buffer, bufferOffset, 36);
    // Serialize message field [vs]
    bufferOffset = _serializer.float32(obj.vs, buffer, bufferOffset);
    // Serialize message field [vd]
    bufferOffset = _serializer.float32(obj.vd, buffer, bufferOffset);
    // Serialize message field [vb]
    bufferOffset = _serializer.float32(obj.vb, buffer, bufferOffset);
    // Serialize message field [omega_s]
    bufferOffset = _serializer.float32(obj.omega_s, buffer, bufferOffset);
    // Serialize message field [omega_d]
    bufferOffset = _serializer.float32(obj.omega_d, buffer, bufferOffset);
    // Serialize message field [omega_b]
    bufferOffset = _serializer.float32(obj.omega_b, buffer, bufferOffset);
    // Check that the constant length array field [twist_covariance] has the right length
    if (obj.twist_covariance.length !== 36) {
      throw new Error('Unable to serialize array field twist_covariance - length must be 36')
    }
    // Serialize message field [twist_covariance]
    bufferOffset = _arraySerializer.float32(obj.twist_covariance, buffer, bufferOffset, 36);
    // Serialize message field [sa]
    bufferOffset = _serializer.float32(obj.sa, buffer, bufferOffset);
    // Serialize message field [ad]
    bufferOffset = _serializer.float32(obj.ad, buffer, bufferOffset);
    // Serialize message field [ab]
    bufferOffset = _serializer.float32(obj.ab, buffer, bufferOffset);
    // Serialize message field [epsilon_s]
    bufferOffset = _serializer.float32(obj.epsilon_s, buffer, bufferOffset);
    // Serialize message field [epsilon_d]
    bufferOffset = _serializer.float32(obj.epsilon_d, buffer, bufferOffset);
    // Serialize message field [epsilon_b]
    bufferOffset = _serializer.float32(obj.epsilon_b, buffer, bufferOffset);
    // Check that the constant length array field [accel_covariance] has the right length
    if (obj.accel_covariance.length !== 36) {
      throw new Error('Unable to serialize array field accel_covariance - length must be 36')
    }
    // Serialize message field [accel_covariance]
    bufferOffset = _arraySerializer.float32(obj.accel_covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrenetSerretState
    let len;
    let data = new FrenetSerretState(null);
    // Deserialize message field [s]
    data.s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi_s]
    data.psi_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi_d]
    data.psi_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi_b]
    data.psi_b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose_covariance]
    data.pose_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 36)
    // Deserialize message field [vs]
    data.vs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vd]
    data.vd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vb]
    data.vb = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega_s]
    data.omega_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega_d]
    data.omega_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega_b]
    data.omega_b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [twist_covariance]
    data.twist_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 36)
    // Deserialize message field [sa]
    data.sa = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ad]
    data.ad = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ab]
    data.ab = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epsilon_s]
    data.epsilon_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epsilon_d]
    data.epsilon_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epsilon_b]
    data.epsilon_b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_covariance]
    data.accel_covariance = _arrayDeserializer.float32(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 504;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_driver_msgs/FrenetSerretState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f03652b9c5f9bef88b4d78664fce1034';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a state in 3d Frenet-Serret Frame
    # Currently we don't use 3D frenet state actually
    # For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas
    
    # 3D states
    float32 s # Offset in tanget direction
    float32 d # Offset in normal direction
    float32 b # Offset in binormal direction
    float32 psi_s
    float32 psi_d
    float32 psi_b
    float32[36] pose_covariance
    
    # First order derivatives
    float32 vs
    float32 vd
    float32 vb
    float32 omega_s
    float32 omega_d
    float32 omega_b
    float32[36] twist_covariance
    
    # Second order derivatives
    float32 sa # prevent keyword conflict
    float32 ad
    float32 ab
    float32 epsilon_s
    float32 epsilon_d
    float32 epsilon_b
    float32[36] accel_covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrenetSerretState(null);
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

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.psi_s !== undefined) {
      resolved.psi_s = msg.psi_s;
    }
    else {
      resolved.psi_s = 0.0
    }

    if (msg.psi_d !== undefined) {
      resolved.psi_d = msg.psi_d;
    }
    else {
      resolved.psi_d = 0.0
    }

    if (msg.psi_b !== undefined) {
      resolved.psi_b = msg.psi_b;
    }
    else {
      resolved.psi_b = 0.0
    }

    if (msg.pose_covariance !== undefined) {
      resolved.pose_covariance = msg.pose_covariance;
    }
    else {
      resolved.pose_covariance = new Array(36).fill(0)
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

    if (msg.vb !== undefined) {
      resolved.vb = msg.vb;
    }
    else {
      resolved.vb = 0.0
    }

    if (msg.omega_s !== undefined) {
      resolved.omega_s = msg.omega_s;
    }
    else {
      resolved.omega_s = 0.0
    }

    if (msg.omega_d !== undefined) {
      resolved.omega_d = msg.omega_d;
    }
    else {
      resolved.omega_d = 0.0
    }

    if (msg.omega_b !== undefined) {
      resolved.omega_b = msg.omega_b;
    }
    else {
      resolved.omega_b = 0.0
    }

    if (msg.twist_covariance !== undefined) {
      resolved.twist_covariance = msg.twist_covariance;
    }
    else {
      resolved.twist_covariance = new Array(36).fill(0)
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

    if (msg.ab !== undefined) {
      resolved.ab = msg.ab;
    }
    else {
      resolved.ab = 0.0
    }

    if (msg.epsilon_s !== undefined) {
      resolved.epsilon_s = msg.epsilon_s;
    }
    else {
      resolved.epsilon_s = 0.0
    }

    if (msg.epsilon_d !== undefined) {
      resolved.epsilon_d = msg.epsilon_d;
    }
    else {
      resolved.epsilon_d = 0.0
    }

    if (msg.epsilon_b !== undefined) {
      resolved.epsilon_b = msg.epsilon_b;
    }
    else {
      resolved.epsilon_b = 0.0
    }

    if (msg.accel_covariance !== undefined) {
      resolved.accel_covariance = msg.accel_covariance;
    }
    else {
      resolved.accel_covariance = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = FrenetSerretState;
