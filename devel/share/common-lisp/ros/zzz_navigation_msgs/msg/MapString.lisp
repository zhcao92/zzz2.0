; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude MapString.msg.html

(cl:defclass <MapString> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (map_type
    :reader map_type
    :initarg :map_type
    :type cl:fixnum
    :initform 0)
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass MapString (<MapString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<MapString> is deprecated: use zzz_navigation_msgs-msg:MapString instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:header-val is deprecated.  Use zzz_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'map_type-val :lambda-list '(m))
(cl:defmethod map_type-val ((m <MapString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:map_type-val is deprecated.  Use zzz_navigation_msgs-msg:map_type instead.")
  (map_type m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <MapString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:content-val is deprecated.  Use zzz_navigation_msgs-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapString>)))
    "Constants for message type '<MapString>"
  '((:MAP_UNKNOWN . 0)
    (:MAP_OPENDRIVE . 1)
    (:MAP_SUMO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapString)))
    "Constants for message type 'MapString"
  '((:MAP_UNKNOWN . 0)
    (:MAP_OPENDRIVE . 1)
    (:MAP_SUMO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapString>) ostream)
  "Serializes a message object of type '<MapString>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapString>) istream)
  "Deserializes a message object of type '<MapString>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapString>)))
  "Returns string type for a message object of type '<MapString>"
  "zzz_navigation_msgs/MapString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapString)))
  "Returns string type for a message object of type 'MapString"
  "zzz_navigation_msgs/MapString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapString>)))
  "Returns md5sum for a message object of type '<MapString>"
  "629c6319a47bf7a0c54d99f0ee184a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapString)))
  "Returns md5sum for a message object of type 'MapString"
  "629c6319a47bf7a0c54d99f0ee184a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapString>)))
  "Returns full string definition for message of type '<MapString>"
  (cl:format cl:nil "# This message is used for loading geologic map from string content~%~%Header header~%~%# Map type enum~%uint8 map_type~%uint8 MAP_UNKNOWN = 0~%uint8 MAP_OPENDRIVE = 1~%uint8 MAP_SUMO = 2~%~%# Map content. It can be encoded, depending on the map_type~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapString)))
  "Returns full string definition for message of type 'MapString"
  (cl:format cl:nil "# This message is used for loading geologic map from string content~%~%Header header~%~%# Map type enum~%uint8 map_type~%uint8 MAP_UNKNOWN = 0~%uint8 MAP_OPENDRIVE = 1~%uint8 MAP_SUMO = 2~%~%# Map content. It can be encoded, depending on the map_type~%string content~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapString>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapString>))
  "Converts a ROS message object to a list"
  (cl:list 'MapString
    (cl:cons ':header (header msg))
    (cl:cons ':map_type (map_type msg))
    (cl:cons ':content (content msg))
))
