// Auto-generated. Do not edit!

// (in-package zzz_navigation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MapString {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.map_type = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('map_type')) {
        this.map_type = initObj.map_type
      }
      else {
        this.map_type = 0;
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapString
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [map_type]
    bufferOffset = _serializer.uint8(obj.map_type, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapString
    let len;
    let data = new MapString(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_type]
    data.map_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.content.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'zzz_navigation_msgs/MapString';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '629c6319a47bf7a0c54d99f0ee184a58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message is used for loading geologic map from string content
    
    Header header
    
    # Map type enum
    uint8 map_type
    uint8 MAP_UNKNOWN = 0
    uint8 MAP_OPENDRIVE = 1
    uint8 MAP_SUMO = 2
    
    # Map content. It can be encoded, depending on the map_type
    string content
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapString(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.map_type !== undefined) {
      resolved.map_type = msg.map_type;
    }
    else {
      resolved.map_type = 0
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    return resolved;
    }
};

// Constants for message
MapString.Constants = {
  MAP_UNKNOWN: 0,
  MAP_OPENDRIVE: 1,
  MAP_SUMO: 2,
}

module.exports = MapString;
