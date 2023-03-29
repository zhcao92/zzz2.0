// Auto-generated. Do not edit!

// (in-package zzz_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleState = require('./VehicleState.js');

//-----------------------------------------------------------

class PlannedTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('Trajectory')) {
        this.Trajectory = initObj.Trajectory
      }
      else {
        this.Trajectory = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannedTrajectory
    // Serialize message field [Trajectory]
    // Serialize the length for message field [Trajectory]
    bufferOffset = _serializer.uint32(obj.Trajectory.length, buffer, bufferOffset);
    obj.Trajectory.forEach((val) => {
      bufferOffset = VehicleState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannedTrajectory
    let len;
    let data = new PlannedTrajectory(null);
    // Deserialize message field [Trajectory]
    // Deserialize array length for message field [Trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Trajectory[i] = VehicleState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.Trajectory.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_planning_msgs/PlannedTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae087f427f20285f5721d2851c9817a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VehicleState[] Trajectory
    ================================================================================
    MSG: zzz_planning_msgs/VehicleState
    
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
    const resolved = new PlannedTrajectory(null);
    if (msg.Trajectory !== undefined) {
      resolved.Trajectory = new Array(msg.Trajectory.length);
      for (let i = 0; i < resolved.Trajectory.length; ++i) {
        resolved.Trajectory[i] = VehicleState.Resolve(msg.Trajectory[i]);
      }
    }
    else {
      resolved.Trajectory = []
    }

    return resolved;
    }
};

module.exports = PlannedTrajectory;
