// Auto-generated. Do not edit!

// (in-package zzz_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose2DWithCovariance = require('./Pose2DWithCovariance.js');
let Dimension2DWithCovariance = require('./Dimension2DWithCovariance.js');

//-----------------------------------------------------------

class BoundingBox2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.dimension = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose2DWithCovariance();
      }
      if (initObj.hasOwnProperty('dimension')) {
        this.dimension = initObj.dimension
      }
      else {
        this.dimension = new Dimension2DWithCovariance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox2D
    // Serialize message field [pose]
    bufferOffset = Pose2DWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [dimension]
    bufferOffset = Dimension2DWithCovariance.serialize(obj.dimension, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox2D
    let len;
    let data = new BoundingBox2D(null);
    // Deserialize message field [pose]
    data.pose = Pose2DWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [dimension]
    data.dimension = Dimension2DWithCovariance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/BoundingBox2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee985124803fe8633995d77cdc7fb361';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point
    
    # The position and orientation of the rigid body center
    Pose2DWithCovariance pose
    
    # The size (in meters) of the bounding box surrounding the object relative to the pose of its center.
    Dimension2DWithCovariance dimension
    
    ================================================================================
    MSG: zzz_perception_msgs/Pose2DWithCovariance
    
    float64 x # or u in u-v plane
    float64 y # or v in u-v plane
    float64 theta
    
    # Row-major representation of the 3x3 covariance matrix
    # In order, the parameters are: (x, y, theta)
    float64[9] covariance
    
    ================================================================================
    MSG: zzz_perception_msgs/Dimension2DWithCovariance
    # Describing the size object in 2D space (in pixels) with uncertainty
    
    float64 length_x # width
    float64 length_y # length
    
    # Row-major representation of the 2x2 covariance matrix
    # In order, the parameters are: (length_x, length_y)
    float64[4] covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox2D(null);
    if (msg.pose !== undefined) {
      resolved.pose = Pose2DWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose2DWithCovariance()
    }

    if (msg.dimension !== undefined) {
      resolved.dimension = Dimension2DWithCovariance.Resolve(msg.dimension)
    }
    else {
      resolved.dimension = new Dimension2DWithCovariance()
    }

    return resolved;
    }
};

module.exports = BoundingBox2D;
