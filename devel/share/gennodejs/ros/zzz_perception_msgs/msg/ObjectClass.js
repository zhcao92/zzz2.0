// Auto-generated. Do not edit!

// (in-package zzz_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObjectClass {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.classid = null;
      this.score = null;
      this.comments = null;
    }
    else {
      if (initObj.hasOwnProperty('classid')) {
        this.classid = initObj.classid
      }
      else {
        this.classid = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
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
    // Serializes a message object of type ObjectClass
    // Serialize message field [classid]
    bufferOffset = _serializer.uint32(obj.classid, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [comments]
    bufferOffset = _serializer.string(obj.comments, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectClass
    let len;
    let data = new ObjectClass(null);
    // Deserialize message field [classid]
    data.classid = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [comments]
    data.comments = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.comments.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_perception_msgs/ObjectClass';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '991b8d3acc01ea523d3201482c907466';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectClass(null);
    if (msg.classid !== undefined) {
      resolved.classid = msg.classid;
    }
    else {
      resolved.classid = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
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

// Constants for message
ObjectClass.Constants = {
  UNKNOWN: 0,
  UNKNOWN_DYNAMIC: 16,
  UNKNOWN_STATIC: 32,
  VEHICLE: 1,
  VEHICLE_PASSENGER: 17,
  VEHICEL_VAN: 33,
  VEHICLE_TRUCK: 49,
  VEHICLE_BUS: 65,
  VEHICLE_SCHOOLBUS: 321,
  VEHICLE_SCHOOLBUS_STOP: 4417,
  VEHICLE_EMERGENCY: 81,
  VEHICLE_EMERGENCY_POLICE: 337,
  VEHICLE_EMERGENCY_POLICE_FLASH: 4433,
  VEHICLE_EMERGENCY_FIRE: 593,
  VEHICLE_EMERGENCY_FIRE_FLASH: 4689,
  VEHICLE_EMERGENCY_CIVIL: 849,
  VEHICLE_EMERGENCY_CIVIL_FLASH: 4945,
  HUMAN: 2,
  HUMAN_PEDESTRIAN: 18,
  HUMAN_ROADWORKER: 34,
  CYCLIST: 3,
  CYCLIST_BICYCLE: 19,
  CYCLIST_MOTORCYCLE: 35,
  CYCLIST_TRICYCLE: 51,
  ANIMAL: 4,
  ANIMAL_DOGLIKE: 20,
  ANIMAL_DEERLIKE: 36,
  ANIMAL_COWLIKE: 52,
  ROAD_OBJECT: 5,
  ROAD_TRAFFIC_CONE: 21,
  ROAD_TRAFFIC_BLOCKER: 37,
  ROADSIDE_OBJECT: 6,
  ROADSIDE_TRAFFIC_LIGHT: 22,
  ROADSIDE_TRAFFIC_SIGN: 38,
  ROADSIDE_TREE: 54,
  LEVEL_MASK_0: 15,
  LEVEL_MASK_1: 255,
  LEVEL_MASK_2: 4095,
  LEVEL_MASK_3: 65535,
}

module.exports = ObjectClass;
