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
let LaneBoundary = require('./LaneBoundary.js');
let LaneSituation = require('./LaneSituation.js');

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.speed_limit = null;
      this.length = null;
      this.width = null;
      this.bidirectional = null;
      this.stop_state = null;
      this.central_path_points = null;
      this.central_path_coeffs = null;
      this.central_path_type = null;
      this.left_boundaries = null;
      this.right_boundaries = null;
      this.situations = null;
      this.traffic_light_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('bidirectional')) {
        this.bidirectional = initObj.bidirectional
      }
      else {
        this.bidirectional = false;
      }
      if (initObj.hasOwnProperty('stop_state')) {
        this.stop_state = initObj.stop_state
      }
      else {
        this.stop_state = 0;
      }
      if (initObj.hasOwnProperty('central_path_points')) {
        this.central_path_points = initObj.central_path_points
      }
      else {
        this.central_path_points = [];
      }
      if (initObj.hasOwnProperty('central_path_coeffs')) {
        this.central_path_coeffs = initObj.central_path_coeffs
      }
      else {
        this.central_path_coeffs = [];
      }
      if (initObj.hasOwnProperty('central_path_type')) {
        this.central_path_type = initObj.central_path_type
      }
      else {
        this.central_path_type = 0;
      }
      if (initObj.hasOwnProperty('left_boundaries')) {
        this.left_boundaries = initObj.left_boundaries
      }
      else {
        this.left_boundaries = [];
      }
      if (initObj.hasOwnProperty('right_boundaries')) {
        this.right_boundaries = initObj.right_boundaries
      }
      else {
        this.right_boundaries = [];
      }
      if (initObj.hasOwnProperty('situations')) {
        this.situations = initObj.situations
      }
      else {
        this.situations = [];
      }
      if (initObj.hasOwnProperty('traffic_light_pos')) {
        this.traffic_light_pos = initObj.traffic_light_pos
      }
      else {
        this.traffic_light_pos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [bidirectional]
    bufferOffset = _serializer.bool(obj.bidirectional, buffer, bufferOffset);
    // Serialize message field [stop_state]
    bufferOffset = _serializer.uint8(obj.stop_state, buffer, bufferOffset);
    // Serialize message field [central_path_points]
    // Serialize the length for message field [central_path_points]
    bufferOffset = _serializer.uint32(obj.central_path_points.length, buffer, bufferOffset);
    obj.central_path_points.forEach((val) => {
      bufferOffset = LanePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [central_path_coeffs]
    bufferOffset = _arraySerializer.float32(obj.central_path_coeffs, buffer, bufferOffset, null);
    // Serialize message field [central_path_type]
    bufferOffset = _serializer.uint8(obj.central_path_type, buffer, bufferOffset);
    // Serialize message field [left_boundaries]
    // Serialize the length for message field [left_boundaries]
    bufferOffset = _serializer.uint32(obj.left_boundaries.length, buffer, bufferOffset);
    obj.left_boundaries.forEach((val) => {
      bufferOffset = LaneBoundary.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_boundaries]
    // Serialize the length for message field [right_boundaries]
    bufferOffset = _serializer.uint32(obj.right_boundaries.length, buffer, bufferOffset);
    obj.right_boundaries.forEach((val) => {
      bufferOffset = LaneBoundary.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [situations]
    // Serialize the length for message field [situations]
    bufferOffset = _serializer.uint32(obj.situations.length, buffer, bufferOffset);
    obj.situations.forEach((val) => {
      bufferOffset = LaneSituation.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_pos]
    bufferOffset = _arraySerializer.float32(obj.traffic_light_pos, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bidirectional]
    data.bidirectional = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_state]
    data.stop_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [central_path_points]
    // Deserialize array length for message field [central_path_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.central_path_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.central_path_points[i] = LanePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [central_path_coeffs]
    data.central_path_coeffs = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [central_path_type]
    data.central_path_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_boundaries]
    // Deserialize array length for message field [left_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_boundaries[i] = LaneBoundary.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_boundaries]
    // Deserialize array length for message field [right_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_boundaries[i] = LaneBoundary.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [situations]
    // Deserialize array length for message field [situations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.situations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.situations[i] = LaneSituation.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_pos]
    data.traffic_light_pos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 44 * object.central_path_points.length;
    length += 4 * object.central_path_coeffs.length;
    length += 49 * object.left_boundaries.length;
    length += 49 * object.right_boundaries.length;
    object.situations.forEach((val) => {
      length += LaneSituation.getMessageSize(val);
    });
    length += 4 * object.traffic_light_pos.length;
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cbd728e4b6ec4ecaad9c99fca2ccf56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describe a lane with polyline representation
    
    # ----- Basic properties -----
    # the rightest lane is 0, reference lane is -1
    # TODO: remove this field
    int16 index
    
    # Speed limit (km/h)
    float32 speed_limit
    
    # Length of the lane. Provided for easy computation
    float32 length
    float32 width
    
    # Whether this lane allow two way traffic
    # This can be true when the road is too narrow or in the center turning lane
    bool bidirectional # = False
    
    # The situation when lane ends. This field could be updated with dynamic info.
    uint8 stop_state # = 0
    uint8 STOP_STATE_UNKNOWN = 0
    uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light
    uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light
    uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light
    uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light
    uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign
    
    # ----- Central path representation -----
    # The central_path_points field is used when central_path_type is waypoint.
    # Otherwise, central_path_coeffs should be used
    LanePoint[] central_path_points
    float32[] central_path_coeffs
    
    uint8 central_path_type # = 0
    uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized
    uint8 CENTRAL_PATH_LINE = 1
    uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola
    uint8 CENTRAL_PATH_POLYNOMIAL = 3 #
    uint8 CENTRAL_PATH_BEZIER = 4
    
    # ----- Boundary representation -----
    # The boundary description of current lane.
    # Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder
    LaneBoundary[] left_boundaries
    LaneBoundary[] right_boundaries
    
    # ----- Auxiliary information of the lane -----
    # Road situations on this line. This field could be updated with dynamic info.
    LaneSituation[] situations
    
    # ---- traffic ligth position ------ 
    float32[] traffic_light_pos
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
    
    ================================================================================
    MSG: zzz_navigation_msgs/LaneBoundary
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
    MSG: zzz_navigation_msgs/LaneSituation
    # This message store any uncommon situations on a road
    # Situation can be a map specified object or fresh events
    
    # The location of the situation in a lane (distance from lane start)
    float32 s
    
    # How long this situation affect along the lane.
    # Inf means take effect until lane ends
    float32 length
    
    # Type of situation
    uint8 situation_type
    uint8 SITUATION_NOT_SPECIFIED = 0
    uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here
    uint8 SITUATION_CROSSWALK = 2 # Crosswalk
    uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc
    
    # ------- Situation information -------
    # The new speed limit. Zero means the vehicle is required to stop
    float32 reduced_max_speed
    
    # Additional information
    string comments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lane(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.bidirectional !== undefined) {
      resolved.bidirectional = msg.bidirectional;
    }
    else {
      resolved.bidirectional = false
    }

    if (msg.stop_state !== undefined) {
      resolved.stop_state = msg.stop_state;
    }
    else {
      resolved.stop_state = 0
    }

    if (msg.central_path_points !== undefined) {
      resolved.central_path_points = new Array(msg.central_path_points.length);
      for (let i = 0; i < resolved.central_path_points.length; ++i) {
        resolved.central_path_points[i] = LanePoint.Resolve(msg.central_path_points[i]);
      }
    }
    else {
      resolved.central_path_points = []
    }

    if (msg.central_path_coeffs !== undefined) {
      resolved.central_path_coeffs = msg.central_path_coeffs;
    }
    else {
      resolved.central_path_coeffs = []
    }

    if (msg.central_path_type !== undefined) {
      resolved.central_path_type = msg.central_path_type;
    }
    else {
      resolved.central_path_type = 0
    }

    if (msg.left_boundaries !== undefined) {
      resolved.left_boundaries = new Array(msg.left_boundaries.length);
      for (let i = 0; i < resolved.left_boundaries.length; ++i) {
        resolved.left_boundaries[i] = LaneBoundary.Resolve(msg.left_boundaries[i]);
      }
    }
    else {
      resolved.left_boundaries = []
    }

    if (msg.right_boundaries !== undefined) {
      resolved.right_boundaries = new Array(msg.right_boundaries.length);
      for (let i = 0; i < resolved.right_boundaries.length; ++i) {
        resolved.right_boundaries[i] = LaneBoundary.Resolve(msg.right_boundaries[i]);
      }
    }
    else {
      resolved.right_boundaries = []
    }

    if (msg.situations !== undefined) {
      resolved.situations = new Array(msg.situations.length);
      for (let i = 0; i < resolved.situations.length; ++i) {
        resolved.situations[i] = LaneSituation.Resolve(msg.situations[i]);
      }
    }
    else {
      resolved.situations = []
    }

    if (msg.traffic_light_pos !== undefined) {
      resolved.traffic_light_pos = msg.traffic_light_pos;
    }
    else {
      resolved.traffic_light_pos = []
    }

    return resolved;
    }
};

// Constants for message
Lane.Constants = {
  STOP_STATE_UNKNOWN: 0,
  STOP_STATE_THRU: 1,
  STOP_STATE_YIELD: 2,
  STOP_STATE_STOP: 3,
  STOP_STATE_STOP_YIELD: 4,
  STOP_STATE_STOP_YIELD_ALL_WAY: 5,
  CENTRAL_PATH_WAYPOINT: 0,
  CENTRAL_PATH_LINE: 1,
  CENTRAL_PATH_CONIC: 2,
  CENTRAL_PATH_POLYNOMIAL: 3,
  CENTRAL_PATH_BEZIER: 4,
}

module.exports = Lane;
