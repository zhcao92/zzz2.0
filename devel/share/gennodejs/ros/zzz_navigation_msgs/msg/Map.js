// Auto-generated. Do not edit!

// (in-package zzz_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.in_junction = null;
      this.exit_lane_index = null;
      this.lanes = null;
      this.drivable_area = null;
      this.next_drivable_area = null;
      this.next_lanes = null;
      this.next_road_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('in_junction')) {
        this.in_junction = initObj.in_junction
      }
      else {
        this.in_junction = false;
      }
      if (initObj.hasOwnProperty('exit_lane_index')) {
        this.exit_lane_index = initObj.exit_lane_index
      }
      else {
        this.exit_lane_index = [];
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
      if (initObj.hasOwnProperty('drivable_area')) {
        this.drivable_area = initObj.drivable_area
      }
      else {
        this.drivable_area = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('next_drivable_area')) {
        this.next_drivable_area = initObj.next_drivable_area
      }
      else {
        this.next_drivable_area = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('next_lanes')) {
        this.next_lanes = initObj.next_lanes
      }
      else {
        this.next_lanes = [];
      }
      if (initObj.hasOwnProperty('next_road_id')) {
        this.next_road_id = initObj.next_road_id
      }
      else {
        this.next_road_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Map
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [in_junction]
    bufferOffset = _serializer.bool(obj.in_junction, buffer, bufferOffset);
    // Serialize message field [exit_lane_index]
    bufferOffset = _arraySerializer.int8(obj.exit_lane_index, buffer, bufferOffset, null);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [drivable_area]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.drivable_area, buffer, bufferOffset);
    // Serialize message field [next_drivable_area]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.next_drivable_area, buffer, bufferOffset);
    // Serialize message field [next_lanes]
    // Serialize the length for message field [next_lanes]
    bufferOffset = _serializer.uint32(obj.next_lanes.length, buffer, bufferOffset);
    obj.next_lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [next_road_id]
    bufferOffset = _serializer.int8(obj.next_road_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Map
    let len;
    let data = new Map(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [in_junction]
    data.in_junction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [exit_lane_index]
    data.exit_lane_index = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [drivable_area]
    data.drivable_area = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_drivable_area]
    data.next_drivable_area = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_lanes]
    // Deserialize array length for message field [next_lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.next_lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.next_lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [next_road_id]
    data.next_road_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.exit_lane_index.length;
    object.lanes.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    length += geometry_msgs.msg.Polygon.getMessageSize(object.drivable_area);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.next_drivable_area);
    object.next_lanes.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/Map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a0ce8991715e99e47d9ef00be19691c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a static local map. This map contains all essential
    # information that should be generated by map provider. Generally this map is
    # limited in a scope of a road section (i.e. road network edge)
    # For extension, the junction shape information is provided
    # For safety concerns, the next unit (i.e. edge or junction) is provided
    
    Header header
    
    # Whether the map is in a structured environment
    bool in_junction # = True
    
    # Target lane index at the end of the section.
    int8[] exit_lane_index
    
    # Lanes if it's in a structured road, should be sorted by ascending index
    # The index is starting from right most lane, i.e. the right most lane is indexed as 0
    Lane[] lanes
    
    # Road area if in junction
    geometry_msgs/Polygon drivable_area
    
    # Next unit
    geometry_msgs/Polygon next_drivable_area
    Lane[] next_lanes
    int8 next_road_id
    
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
    MSG: zzz_navigation_msgs/Lane
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
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Map(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.in_junction !== undefined) {
      resolved.in_junction = msg.in_junction;
    }
    else {
      resolved.in_junction = false
    }

    if (msg.exit_lane_index !== undefined) {
      resolved.exit_lane_index = msg.exit_lane_index;
    }
    else {
      resolved.exit_lane_index = []
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    if (msg.drivable_area !== undefined) {
      resolved.drivable_area = geometry_msgs.msg.Polygon.Resolve(msg.drivable_area)
    }
    else {
      resolved.drivable_area = new geometry_msgs.msg.Polygon()
    }

    if (msg.next_drivable_area !== undefined) {
      resolved.next_drivable_area = geometry_msgs.msg.Polygon.Resolve(msg.next_drivable_area)
    }
    else {
      resolved.next_drivable_area = new geometry_msgs.msg.Polygon()
    }

    if (msg.next_lanes !== undefined) {
      resolved.next_lanes = new Array(msg.next_lanes.length);
      for (let i = 0; i < resolved.next_lanes.length; ++i) {
        resolved.next_lanes[i] = Lane.Resolve(msg.next_lanes[i]);
      }
    }
    else {
      resolved.next_lanes = []
    }

    if (msg.next_road_id !== undefined) {
      resolved.next_road_id = msg.next_road_id;
    }
    else {
      resolved.next_road_id = 0
    }

    return resolved;
    }
};

module.exports = Map;
