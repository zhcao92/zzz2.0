// Auto-generated. Do not edit!

// (in-package zzz_cognition_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let zzz_perception_msgs = _finder('zzz_perception_msgs');
let zzz_driver_msgs = _finder('zzz_driver_msgs');

//-----------------------------------------------------------

class RoadObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uid = null;
      this.confidence = null;
      this.cls = null;
      this.state = null;
      this.ffstate = null;
      this.lane_index = null;
      this.lane_anglediff = null;
      this.lane_dist_left_t = null;
      this.lane_dist_right_t = null;
      this.lane_dist_s = null;
      this.is_static = null;
      this.shape_type = null;
      this.shape = null;
      this.dimension = null;
      this.shape_uncertainty = null;
      this.behavior = null;
      this.priority = null;
    }
    else {
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('cls')) {
        this.cls = initObj.cls
      }
      else {
        this.cls = new zzz_perception_msgs.msg.ObjectClass();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new zzz_driver_msgs.msg.RigidBodyState();
      }
      if (initObj.hasOwnProperty('ffstate')) {
        this.ffstate = initObj.ffstate
      }
      else {
        this.ffstate = new zzz_driver_msgs.msg.FrenetSerretState2D();
      }
      if (initObj.hasOwnProperty('lane_index')) {
        this.lane_index = initObj.lane_index
      }
      else {
        this.lane_index = 0.0;
      }
      if (initObj.hasOwnProperty('lane_anglediff')) {
        this.lane_anglediff = initObj.lane_anglediff
      }
      else {
        this.lane_anglediff = 0.0;
      }
      if (initObj.hasOwnProperty('lane_dist_left_t')) {
        this.lane_dist_left_t = initObj.lane_dist_left_t
      }
      else {
        this.lane_dist_left_t = 0.0;
      }
      if (initObj.hasOwnProperty('lane_dist_right_t')) {
        this.lane_dist_right_t = initObj.lane_dist_right_t
      }
      else {
        this.lane_dist_right_t = 0.0;
      }
      if (initObj.hasOwnProperty('lane_dist_s')) {
        this.lane_dist_s = initObj.lane_dist_s
      }
      else {
        this.lane_dist_s = 0.0;
      }
      if (initObj.hasOwnProperty('is_static')) {
        this.is_static = initObj.is_static
      }
      else {
        this.is_static = false;
      }
      if (initObj.hasOwnProperty('shape_type')) {
        this.shape_type = initObj.shape_type
      }
      else {
        this.shape_type = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new geometry_msgs.msg.Polygon();
      }
      if (initObj.hasOwnProperty('dimension')) {
        this.dimension = initObj.dimension
      }
      else {
        this.dimension = new zzz_perception_msgs.msg.DimensionWithCovariance();
      }
      if (initObj.hasOwnProperty('shape_uncertainty')) {
        this.shape_uncertainty = initObj.shape_uncertainty
      }
      else {
        this.shape_uncertainty = [];
      }
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadObstacle
    // Serialize message field [uid]
    bufferOffset = _serializer.uint64(obj.uid, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [cls]
    bufferOffset = zzz_perception_msgs.msg.ObjectClass.serialize(obj.cls, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = zzz_driver_msgs.msg.RigidBodyState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [ffstate]
    bufferOffset = zzz_driver_msgs.msg.FrenetSerretState2D.serialize(obj.ffstate, buffer, bufferOffset);
    // Serialize message field [lane_index]
    bufferOffset = _serializer.float32(obj.lane_index, buffer, bufferOffset);
    // Serialize message field [lane_anglediff]
    bufferOffset = _serializer.float32(obj.lane_anglediff, buffer, bufferOffset);
    // Serialize message field [lane_dist_left_t]
    bufferOffset = _serializer.float32(obj.lane_dist_left_t, buffer, bufferOffset);
    // Serialize message field [lane_dist_right_t]
    bufferOffset = _serializer.float32(obj.lane_dist_right_t, buffer, bufferOffset);
    // Serialize message field [lane_dist_s]
    bufferOffset = _serializer.float32(obj.lane_dist_s, buffer, bufferOffset);
    // Serialize message field [is_static]
    bufferOffset = _serializer.bool(obj.is_static, buffer, bufferOffset);
    // Serialize message field [shape_type]
    bufferOffset = _serializer.uint8(obj.shape_type, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = geometry_msgs.msg.Polygon.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [dimension]
    bufferOffset = zzz_perception_msgs.msg.DimensionWithCovariance.serialize(obj.dimension, buffer, bufferOffset);
    // Serialize message field [shape_uncertainty]
    bufferOffset = _arraySerializer.float32(obj.shape_uncertainty, buffer, bufferOffset, null);
    // Serialize message field [behavior]
    bufferOffset = _serializer.uint8(obj.behavior, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.uint8(obj.priority, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadObstacle
    let len;
    let data = new RoadObstacle(null);
    // Deserialize message field [uid]
    data.uid = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cls]
    data.cls = zzz_perception_msgs.msg.ObjectClass.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = zzz_driver_msgs.msg.RigidBodyState.deserialize(buffer, bufferOffset);
    // Deserialize message field [ffstate]
    data.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_index]
    data.lane_index = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_anglediff]
    data.lane_anglediff = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_dist_left_t]
    data.lane_dist_left_t = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_dist_right_t]
    data.lane_dist_right_t = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_dist_s]
    data.lane_dist_s = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_static]
    data.is_static = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [shape_type]
    data.shape_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = geometry_msgs.msg.Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimension]
    data.dimension = zzz_perception_msgs.msg.DimensionWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [shape_uncertainty]
    data.shape_uncertainty = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [behavior]
    data.behavior = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += zzz_perception_msgs.msg.ObjectClass.getMessageSize(object.cls);
    length += zzz_driver_msgs.msg.RigidBodyState.getMessageSize(object.state);
    length += geometry_msgs.msg.Polygon.getMessageSize(object.shape);
    length += 4 * object.shape_uncertainty.length;
    return length + 280;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_cognition_msgs/RoadObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88c2dcf03d4744032d7b40f81015259b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains all the information that planning needs for a road object
    
    
    # Unique indentity of the obstacle
    uint64 uid
    
    # The confidence of existence, can be used to determine whether this object is valid, or invalid
    # A possible way of get the confidence is by using tracking age
    float32 confidence
    
    # The best guess of obstacle type
    zzz_perception_msgs/ObjectClass cls
    
    # Estimated kinematic properties
    zzz_driver_msgs/RigidBodyState state
    # Kinematic properties in Frenet Frame
    zzz_driver_msgs/FrenetSerretState2D ffstate
    
    # Relationship to lane, for prediction or locating
    float32 lane_index # in which lane
    float32 lane_anglediff # angle difference
    float32 lane_dist_left_t # distance to lane
    float32 lane_dist_right_t
    float32 lane_dist_s # s position in the road
    
    # A flag to mark whether the object is static
    bool is_static
    
    # XXX: Do we need history trajectories?
    
    # ----- Physical Boundary (Optional) -----
    uint8 shape_type
    uint8 SHAPE_UNDEFINED = 0
    uint8 SHAPE_POLYGON = 1
    
    # Representation of the object if it's represented by polygon
    geometry_msgs/Polygon shape
    
    # bbox, refer to BoundingBox in zzz_perception_msgs
    
    zzz_perception_msgs/DimensionWithCovariance dimension
    #uint8 dimension
    
    # Null uncertainty of Inf uncertainty means that the shape is not actually generated
    float32[] shape_uncertainty
    
    # ----- High level behavior estimation -----
    
    uint8 behavior
    uint8 BEHAVIOR_UNKNOWN = 0
    uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped
    uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line
    uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left
    uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right
    
    # This field is preserved to adapt to yield situation.
    # Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.
    # Yield means if your path conflict with the object's, you should wait for the object
    # to go through the conflict point.
    uint8 priority
    uint8 PRIORITY_UNKNOWN = 0
    uint8 PRIORITY_NORMAL = 1
    uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away
    uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move
    
    ================================================================================
    MSG: zzz_perception_msgs/ObjectClass
    # The size of (in meters) the bounding box surrounding the object's center pose.
    
    # The unique numeric classification ID of object detected
    uint32 classid
    
    # The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.
    float32 score
    
    # Other information about the class (e.g. class name). Only for debug
    string comments
    
    ##############################################################
    ###   Here is a hierarchical table of all included types   ###
    ##############################################################
    # Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level
    
    uint32 UNKNOWN                          = 0     # 0x0000
    uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010
    uint32 UNKNOWN_STATIC                   = 32    # 0x0020
    
    uint32 VEHICLE                          = 1     # 0x0001
    uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles
    uint32 VEHICEL_VAN                      = 33    # 0x0021
    uint32 VEHICLE_TRUCK                    = 49    # 0x0031
    uint32 VEHICLE_BUS                      = 65    # 0x0041
    uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141
    uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141
    uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including 
    uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151
    uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151
    uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251
    uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251
    uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks
    uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351
    
    uint32 HUMAN                            = 2     # 0x0002
    uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012
    uint32 HUMAN_ROADWORKER                 = 34    # 0x0022
    
    uint32 CYCLIST                          = 3     # 0x0003
    uint32 CYCLIST_BICYCLE                  = 19    # 0x0013
    uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023
    uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033
    
    uint32 ANIMAL                           = 4     # 0x0004
    uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.
    uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.
    uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.
    
    uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area
    uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone
    uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. "Road Closed" sign
    
    uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side
    uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016
    uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026
    uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation
    
    uint32 LEVEL_MASK_0                     = 15    # 0x000f
    uint32 LEVEL_MASK_1                     = 255   # 0x00ff
    uint32 LEVEL_MASK_2                     = 4095  # 0x0fff
    uint32 LEVEL_MASK_3                     = 65535 # 0xffff
    
    ================================================================================
    MSG: zzz_driver_msgs/RigidBodyState
    # This message contains commonly used state variables of rigid body
    
    # ID of frame fixed to the rigid body
    string child_frame_id
    
    # Location and orientatation of the object
    geometry_msgs/PoseWithCovariance  pose
    
    # Linear and angular velocity of the object
    geometry_msgs/TwistWithCovariance twist
    
    # Linear and angular acceleration of the object
    geometry_msgs/AccelWithCovariance accel
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/AccelWithCovariance
    # This expresses acceleration in free space with uncertainty.
    
    Accel accel
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: zzz_driver_msgs/FrenetSerretState2D
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
    ================================================================================
    MSG: zzz_perception_msgs/DimensionWithCovariance
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
    const resolved = new RoadObstacle(null);
    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.cls !== undefined) {
      resolved.cls = zzz_perception_msgs.msg.ObjectClass.Resolve(msg.cls)
    }
    else {
      resolved.cls = new zzz_perception_msgs.msg.ObjectClass()
    }

    if (msg.state !== undefined) {
      resolved.state = zzz_driver_msgs.msg.RigidBodyState.Resolve(msg.state)
    }
    else {
      resolved.state = new zzz_driver_msgs.msg.RigidBodyState()
    }

    if (msg.ffstate !== undefined) {
      resolved.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D.Resolve(msg.ffstate)
    }
    else {
      resolved.ffstate = new zzz_driver_msgs.msg.FrenetSerretState2D()
    }

    if (msg.lane_index !== undefined) {
      resolved.lane_index = msg.lane_index;
    }
    else {
      resolved.lane_index = 0.0
    }

    if (msg.lane_anglediff !== undefined) {
      resolved.lane_anglediff = msg.lane_anglediff;
    }
    else {
      resolved.lane_anglediff = 0.0
    }

    if (msg.lane_dist_left_t !== undefined) {
      resolved.lane_dist_left_t = msg.lane_dist_left_t;
    }
    else {
      resolved.lane_dist_left_t = 0.0
    }

    if (msg.lane_dist_right_t !== undefined) {
      resolved.lane_dist_right_t = msg.lane_dist_right_t;
    }
    else {
      resolved.lane_dist_right_t = 0.0
    }

    if (msg.lane_dist_s !== undefined) {
      resolved.lane_dist_s = msg.lane_dist_s;
    }
    else {
      resolved.lane_dist_s = 0.0
    }

    if (msg.is_static !== undefined) {
      resolved.is_static = msg.is_static;
    }
    else {
      resolved.is_static = false
    }

    if (msg.shape_type !== undefined) {
      resolved.shape_type = msg.shape_type;
    }
    else {
      resolved.shape_type = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = geometry_msgs.msg.Polygon.Resolve(msg.shape)
    }
    else {
      resolved.shape = new geometry_msgs.msg.Polygon()
    }

    if (msg.dimension !== undefined) {
      resolved.dimension = zzz_perception_msgs.msg.DimensionWithCovariance.Resolve(msg.dimension)
    }
    else {
      resolved.dimension = new zzz_perception_msgs.msg.DimensionWithCovariance()
    }

    if (msg.shape_uncertainty !== undefined) {
      resolved.shape_uncertainty = msg.shape_uncertainty;
    }
    else {
      resolved.shape_uncertainty = []
    }

    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    return resolved;
    }
};

// Constants for message
RoadObstacle.Constants = {
  SHAPE_UNDEFINED: 0,
  SHAPE_POLYGON: 1,
  BEHAVIOR_UNKNOWN: 0,
  BEHAVIOR_STOPPING: 1,
  BEHAVIOR_FOLLOW: 2,
  BEHAVIOR_MOVING_LEFT: 3,
  BEHAVIOR_MOVING_RIGHT: 4,
  PRIORITY_UNKNOWN: 0,
  PRIORITY_NORMAL: 1,
  PRIORITY_CAUTIOUS: 2,
  PRIORITY_STOP: 3,
}

module.exports = RoadObstacle;
