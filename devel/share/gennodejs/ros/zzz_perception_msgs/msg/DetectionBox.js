// Auto-generated. Do not edit!

// (in-package zzz_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectClass = require('./ObjectClass.js');
let ObjectSignals = require('./ObjectSignals.js');
let BoundingBox = require('./BoundingBox.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class DetectionBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_cloud = null;
      this.source_img = null;
      this.source_frame = null;
      this.classes = null;
      this.signal = null;
      this.bbox = null;
      this.comments = null;
    }
    else {
      if (initObj.hasOwnProperty('source_cloud')) {
        this.source_cloud = initObj.source_cloud
      }
      else {
        this.source_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('source_img')) {
        this.source_img = initObj.source_img
      }
      else {
        this.source_img = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('source_frame')) {
        this.source_frame = initObj.source_frame
      }
      else {
        this.source_frame = '';
      }
      if (initObj.hasOwnProperty('classes')) {
        this.classes = initObj.classes
      }
      else {
        this.classes = [];
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = new ObjectSignals();
      }
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = new BoundingBox();
      }
      if (initObj.hasOwnProperty('comments')) {
        this.comments = initObj.comments
      }
      else {
        this.comments = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionBox
    // Serialize message field [source_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.source_cloud, buffer, bufferOffset);
    // Serialize message field [source_img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.source_img, buffer, bufferOffset);
    // Serialize message field [source_frame]
    bufferOffset = _serializer.string(obj.source_frame, buffer, bufferOffset);
    // Serialize message field [classes]
    // Serialize the length for message field [classes]
    bufferOffset = _serializer.uint32(obj.classes.length, buffer, bufferOffset);
    obj.classes.forEach((val) => {
      bufferOffset = ObjectClass.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [signal]
    bufferOffset = ObjectSignals.serialize(obj.signal, buffer, bufferOffset);
    // Serialize message field [bbox]
    bufferOffset = BoundingBox.serialize(obj.bbox, buffer, bufferOffset);
    // Serialize message field [comments]
    bufferOffset = _serializer.string(obj.comments, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionBox
    let len;
    let data = new DetectionBox(null);
    // Deserialize message field [source_cloud]
    data.source_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_img]
    data.source_img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [source_frame]
    data.source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [classes]
    // Deserialize array length for message field [classes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.classes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.classes[i] = ObjectClass.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [signal]
    data.signal = ObjectSignals.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox]
    data.bbox = BoundingBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [comments]
    data.comments = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.source_cloud);
    length += sensor_msgs.msg.Image.getMessageSize(object.source_img);
    length += object.source_frame.length;
    object.classes.forEach((val) => {
      length += ObjectClass.getMessageSize(val);
    });
    length += object.comments.length;
    return length + 458;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/DetectionBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a13bac53d8ff42860cb5814e580ec83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Defines a box-shaped 3D detection result.
    
    # ----------------- Data -----------------
    
    # The 3D data that generated these results (i.e. object region cropped out of
    #   the point cloud). This information is not required for all detectors, so it may be empty.
    sensor_msgs/PointCloud2 source_cloud
    
    # The 2D data in the same area for fusion purpose
    sensor_msgs/Image source_img
    
    # The frame id of source_img
    string source_frame
    
    # ---------------- Properties --------------------
    
    # Describe several classification result for the object
    # This field is required to be sorted in descending order of scores
    ObjectClass[] classes
    
    # This field indicates visual (or sound?) signal from the object
    ObjectSignals signal
    
    # 3D bounding box surrounding the object.
    BoundingBox bbox
    
    # This field is for store auxiliary text or data. (e.g. annotation notes)
    string comments
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionBox(null);
    if (msg.source_cloud !== undefined) {
      resolved.source_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.source_cloud)
    }
    else {
      resolved.source_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.source_img !== undefined) {
      resolved.source_img = sensor_msgs.msg.Image.Resolve(msg.source_img)
    }
    else {
      resolved.source_img = new sensor_msgs.msg.Image()
    }

    if (msg.source_frame !== undefined) {
      resolved.source_frame = msg.source_frame;
    }
    else {
      resolved.source_frame = ''
    }

    if (msg.classes !== undefined) {
      resolved.classes = new Array(msg.classes.length);
      for (let i = 0; i < resolved.classes.length; ++i) {
        resolved.classes[i] = ObjectClass.Resolve(msg.classes[i]);
      }
    }
    else {
      resolved.classes = []
    }

    if (msg.signal !== undefined) {
      resolved.signal = ObjectSignals.Resolve(msg.signal)
    }
    else {
      resolved.signal = new ObjectSignals()
    }

    if (msg.bbox !== undefined) {
      resolved.bbox = BoundingBox.Resolve(msg.bbox)
    }
    else {
      resolved.bbox = new BoundingBox()
    }

    if (msg.comments !== undefined) {
      resolved.comments = msg.comments;
    }
    else {
      resolved.comments = ''
    }

    return resolved;
    }
};

module.exports = DetectionBox;
