// Auto-generated. Do not edit!

// (in-package zzz_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DecisionTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory = null;
      this.desired_speed = null;
      this.desired_acc = null;
      this.RLS_action = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.theta = null;
      this.kappa = null;
      this.s = null;
      this.dkappa = null;
      this.ddkappa = null;
      this.v = null;
      this.a = null;
      this.relative_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('desired_speed')) {
        this.desired_speed = initObj.desired_speed
      }
      else {
        this.desired_speed = [];
      }
      if (initObj.hasOwnProperty('desired_acc')) {
        this.desired_acc = initObj.desired_acc
      }
      else {
        this.desired_acc = 0.0;
      }
      if (initObj.hasOwnProperty('RLS_action')) {
        this.RLS_action = initObj.RLS_action
      }
      else {
        this.RLS_action = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = [];
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = [];
      }
      if (initObj.hasOwnProperty('kappa')) {
        this.kappa = initObj.kappa
      }
      else {
        this.kappa = [];
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = [];
      }
      if (initObj.hasOwnProperty('dkappa')) {
        this.dkappa = initObj.dkappa
      }
      else {
        this.dkappa = [];
      }
      if (initObj.hasOwnProperty('ddkappa')) {
        this.ddkappa = initObj.ddkappa
      }
      else {
        this.ddkappa = [];
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = [];
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = [];
      }
      if (initObj.hasOwnProperty('relative_time')) {
        this.relative_time = initObj.relative_time
      }
      else {
        this.relative_time = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DecisionTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.trajectory, buffer, bufferOffset);
    // Serialize message field [desired_speed]
    bufferOffset = _arraySerializer.float32(obj.desired_speed, buffer, bufferOffset, null);
    // Serialize message field [desired_acc]
    bufferOffset = _serializer.float32(obj.desired_acc, buffer, bufferOffset);
    // Serialize message field [RLS_action]
    bufferOffset = _serializer.float32(obj.RLS_action, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, null);
    // Serialize message field [theta]
    bufferOffset = _arraySerializer.float32(obj.theta, buffer, bufferOffset, null);
    // Serialize message field [kappa]
    bufferOffset = _arraySerializer.float32(obj.kappa, buffer, bufferOffset, null);
    // Serialize message field [s]
    bufferOffset = _arraySerializer.float32(obj.s, buffer, bufferOffset, null);
    // Serialize message field [dkappa]
    bufferOffset = _arraySerializer.float32(obj.dkappa, buffer, bufferOffset, null);
    // Serialize message field [ddkappa]
    bufferOffset = _arraySerializer.float32(obj.ddkappa, buffer, bufferOffset, null);
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float32(obj.v, buffer, bufferOffset, null);
    // Serialize message field [a]
    bufferOffset = _arraySerializer.float32(obj.a, buffer, bufferOffset, null);
    // Serialize message field [relative_time]
    bufferOffset = _arraySerializer.float32(obj.relative_time, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DecisionTrajectory
    let len;
    let data = new DecisionTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [desired_speed]
    data.desired_speed = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [desired_acc]
    data.desired_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RLS_action]
    data.RLS_action = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [theta]
    data.theta = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [kappa]
    data.kappa = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [s]
    data.s = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [dkappa]
    data.dkappa = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ddkappa]
    data.ddkappa = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [a]
    data.a = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [relative_time]
    data.relative_time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += nav_msgs.msg.Path.getMessageSize(object.trajectory);
    length += 4 * object.desired_speed.length;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.z.length;
    length += 4 * object.theta.length;
    length += 4 * object.kappa.length;
    length += 4 * object.s.length;
    length += 4 * object.dkappa.length;
    length += 4 * object.ddkappa.length;
    length += 4 * object.v.length;
    length += 4 * object.a.length;
    length += 4 * object.relative_time.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_planning_msgs/DecisionTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05b7e02cfb660bc5a6c2606f9e700187';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    
    nav_msgs/Path trajectory
    
    float32[] desired_speed # m/s
    
    float32 desired_acc # m^2/s
    
    float32 RLS_action #
    
    ## coordinate xyz  m(UTM)
    float32[] x 
    float32[] y 
    float32[] z 
    ## direction on the x-y plane
    float32[] theta
    ## curvature on the x-y planning
    float32[] kappa
    ## accumulated distance from beginning of the path
    float32[] s 
    ## derivative of kappa w.r.t s.
    float32[] dkappa
    ## derivative of derivative of kappa w.r.t s.
    float32[] ddkappa
    ## linear velocity
    float32[] v    ## in [m/s]
    ## linear acceleration
    float32[] a 
    ## relative time from beginning of the trajectory
    float32[] relative_time 
    
    
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
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
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
    const resolved = new DecisionTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = nav_msgs.msg.Path.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new nav_msgs.msg.Path()
    }

    if (msg.desired_speed !== undefined) {
      resolved.desired_speed = msg.desired_speed;
    }
    else {
      resolved.desired_speed = []
    }

    if (msg.desired_acc !== undefined) {
      resolved.desired_acc = msg.desired_acc;
    }
    else {
      resolved.desired_acc = 0.0
    }

    if (msg.RLS_action !== undefined) {
      resolved.RLS_action = msg.RLS_action;
    }
    else {
      resolved.RLS_action = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = []
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = []
    }

    if (msg.kappa !== undefined) {
      resolved.kappa = msg.kappa;
    }
    else {
      resolved.kappa = []
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = []
    }

    if (msg.dkappa !== undefined) {
      resolved.dkappa = msg.dkappa;
    }
    else {
      resolved.dkappa = []
    }

    if (msg.ddkappa !== undefined) {
      resolved.ddkappa = msg.ddkappa;
    }
    else {
      resolved.ddkappa = []
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = []
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = []
    }

    if (msg.relative_time !== undefined) {
      resolved.relative_time = msg.relative_time;
    }
    else {
      resolved.relative_time = []
    }

    return resolved;
    }
};

module.exports = DecisionTrajectory;
