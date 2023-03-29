// Auto-generated. Do not edit!

// (in-package zzz_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackingBoxArray = require('./TrackingBoxArray.js');
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CooperativeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tbox_arr = null;
      this.odo_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tbox_arr')) {
        this.tbox_arr = initObj.tbox_arr
      }
      else {
        this.tbox_arr = new TrackingBoxArray();
      }
      if (initObj.hasOwnProperty('odo_msg')) {
        this.odo_msg = initObj.odo_msg
      }
      else {
        this.odo_msg = new nav_msgs.msg.Odometry();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CooperativeMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tbox_arr]
    bufferOffset = TrackingBoxArray.serialize(obj.tbox_arr, buffer, bufferOffset);
    // Serialize message field [odo_msg]
    bufferOffset = nav_msgs.msg.Odometry.serialize(obj.odo_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CooperativeMsg
    let len;
    let data = new CooperativeMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tbox_arr]
    data.tbox_arr = TrackingBoxArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [odo_msg]
    data.odo_msg = nav_msgs.msg.Odometry.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TrackingBoxArray.getMessageSize(object.tbox_arr);
    length += nav_msgs.msg.Odometry.getMessageSize(object.odo_msg);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/CooperativeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1eb7e08de1b3eb164f8e2508c317da20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Combined msg of zzz_perception_msgs/TrackingBoxArray and nav_msgs/Odometry Message
    
    Header header
    
    TrackingBoxArray tbox_arr
    nav_msgs/Odometry odo_msg
    
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
    MSG: zzz_perception_msgs/TrackingBoxArray
    # Describe a list of 3D tracking targets, for a multi-object 3D detector.
    
    Header header
    
    # A list of the detected targets.
    TrackingBox[] targets
    
    ================================================================================
    MSG: zzz_perception_msgs/TrackingBox
    # Defines a box-shaped 3D tracking result.
    
    # Unique id to determine the identification of tracked object.
    # This field could be a increasing number from zero or random hash number
    uint64 uid
    
    # Defines the (existence) confidence of the object [-1 ~ 1].
    # The confidence can be negative to demonstrate that this object is invalid.
    # This confidence should not be fed into decision system. It should be used for validation purpose.
    float32 confidence
    
    # Describe several classification result for the object
    # This field is required to be sorted in descending order of scores
    ObjectClass[] classes
    
    # This field contains the behavior identification based on light signal or hand signal
    ObjectSignals signal
    
    # Current 3D bounding box.
    BoundingBox bbox
    
    # Estimated 3D velocity and accelaration
    geometry_msgs/TwistWithCovariance twist
    geometry_msgs/AccelWithCovariance accel
    
    # This field is for store auxiliary text or data
    string comments
    
    
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
    MSG: zzz_perception_msgs/ObjectSignals
    # This message is used to represent detected vehicle light signals or human hand signals
    
    # Signal flags. Multiple signal emission can exists in the same time.
    uint16 flags
    
    uint16 UNKNOWN                          = 0     # 0x00
    uint16 NONE                             = 16    # 0x10
    
    # This field is related to https://en.wikipedia.org/wiki/Automotive_lighting
    uint16 VEHICLE_SIGNAL                   = 1     # 0x01
    uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11
    uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21
    uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31
    uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41
    uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51
    uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61
    
    # This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects
    uint16 TRAFFIC_LIGHT                    = 2     # 0x02
    uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12
    uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22
    uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32
    uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42
    uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42
    
    # Confidence of the signal detection
    float32 score
    
    ================================================================================
    MSG: zzz_perception_msgs/BoundingBox
    
    # A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters
    
    # The position and orientation of the rigid body center
    geometry_msgs/PoseWithCovariance pose
    
    # The size of (in meters) the bounding box surrounding the object's center pose.
    DimensionWithCovariance dimension
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
    MSG: zzz_perception_msgs/DimensionWithCovariance
    # Describing the size object in 3D space (in meters) with uncertainty
    
    float64 length_x # length(longitudinal direction)
    float64 length_y # width(lateral direction)
    float64 length_z # height
    
    # Row-major representation of the 3x3 covariance matrix
    # In order, the parameters are: (length_x, length_y, length_z)
    float64[9] covariance
    
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
    MSG: nav_msgs/Odometry
    # This represents an estimate of a position and velocity in free space.  
    # The pose in this message should be specified in the coordinate frame given by header.frame_id.
    # The twist in this message should be specified in the coordinate frame given by the child_frame_id
    Header header
    string child_frame_id
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CooperativeMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tbox_arr !== undefined) {
      resolved.tbox_arr = TrackingBoxArray.Resolve(msg.tbox_arr)
    }
    else {
      resolved.tbox_arr = new TrackingBoxArray()
    }

    if (msg.odo_msg !== undefined) {
      resolved.odo_msg = nav_msgs.msg.Odometry.Resolve(msg.odo_msg)
    }
    else {
      resolved.odo_msg = new nav_msgs.msg.Odometry()
    }

    return resolved;
    }
};

module.exports = CooperativeMsg;
