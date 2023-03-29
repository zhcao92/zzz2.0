// Auto-generated. Do not edit!

// (in-package zzz_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.vl = null;
      this.vr = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.steer_angle = null;
      this.acc = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('vl')) {
        this.vl = initObj.vl
      }
      else {
        this.vl = 0.0;
      }
      if (initObj.hasOwnProperty('vr')) {
        this.vr = initObj.vr
      }
      else {
        this.vr = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleState
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float32(obj.vz, buffer, bufferOffset);
    // Serialize message field [vl]
    bufferOffset = _serializer.float32(obj.vl, buffer, bufferOffset);
    // Serialize message field [vr]
    bufferOffset = _serializer.float32(obj.vr, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float32(obj.acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleState
    let len;
    let data = new VehicleState(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vl]
    data.vl = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vr]
    data.vr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_planning_msgs/VehicleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c05802da177a7a3327b6d367f339831e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float32 x # m
    float32 y # m
    float32 z # m
    
    float32 vx # m/s
    float32 vy # m/s
    float32 vz # m/s
    
    float32 vl # m/s
    float32 vr # m/s
    
    float32 ax # m/s
    float32 ay # m/s
    float32 az # m/s
    
    float32 steer_angle #degree
    float32 acc #m/ss
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleState(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.vl !== undefined) {
      resolved.vl = msg.vl;
    }
    else {
      resolved.vl = 0.0
    }

    if (msg.vr !== undefined) {
      resolved.vr = msg.vr;
    }
    else {
      resolved.vr = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleState;
