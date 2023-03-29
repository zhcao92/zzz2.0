// Auto-generated. Do not edit!

// (in-package zzz_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LanePoint = require('./LanePoint.js');

//-----------------------------------------------------------

class LaneBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.boundary_point = null;
      this.boundary_type = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('boundary_point')) {
        this.boundary_point = initObj.boundary_point
      }
      else {
        this.boundary_point = new LanePoint();
      }
      if (initObj.hasOwnProperty('boundary_type')) {
        this.boundary_type = initObj.boundary_type
      }
      else {
        this.boundary_type = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneBoundary
    // Serialize message field [boundary_point]
    bufferOffset = LanePoint.serialize(obj.boundary_point, buffer, bufferOffset);
    // Serialize message field [boundary_type]
    bufferOffset = _serializer.uint8(obj.boundary_type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundary
    let len;
    let data = new LaneBoundary(null);
    // Deserialize message field [boundary_point]
    data.boundary_point = LanePoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [boundary_type]
    data.boundary_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/LaneBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa651533f9c7508c5cea4c2a98d9e055';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describe the boundary type of a part of a lane
    
    # Lane boundary point
    LanePoint boundary_point
    
    # Boundary type from between `s` and `s` of the next section start
    uint8 boundary_type
    uint8 BOUNDARY_UNKNOWN = 0
    uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.
    uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.
    uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.
    uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.
    uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.
    uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder
    
    # Confidence of the lane boundary classification
    float32 confidence
    
    ================================================================================
    MSG: zzz_navigation_msgs/LanePoint
    # This message describe a road point from polyline represented lane
    
    # The 3D position of the lane point
    geometry_msgs/Point position
    
    # ----- Other useful information -----
    # Distance from lane start to current point. The distance of the first point should be zero
    float32 s
    
    # Slope at current position of the road
    # Can be used to control the throttle
    float32 slope
    
    # Road curvature at current position of the road
    # Can be used to slow down before turning
    float32 curvature
    
    # The yaw angle of tangent line (in radian)
    float32 tangent
    
    # Road width at current position
    # Can be used to determine the carefulness of driving
    float32 width
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundary(null);
    if (msg.boundary_point !== undefined) {
      resolved.boundary_point = LanePoint.Resolve(msg.boundary_point)
    }
    else {
      resolved.boundary_point = new LanePoint()
    }

    if (msg.boundary_type !== undefined) {
      resolved.boundary_type = msg.boundary_type;
    }
    else {
      resolved.boundary_type = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

// Constants for message
LaneBoundary.Constants = {
  BOUNDARY_UNKNOWN: 0,
  BOUNDARY_DASHED_WHITE: 1,
  BOUNDARY_DASHED_YELLOW: 2,
  BOUNDARY_SOLID_WHITE: 3,
  BOUNDARY_SOLID_YELLOW: 4,
  BOUNDARY_SOLID_YELLOW_TURN: 5,
  BOUNDARY_CURB: 6,
}

module.exports = LaneBoundary;
