; Auto-generated. Do not edit!


(cl:in-package zzz_cognition_msgs-msg)


;//! \htmlinclude VehicleLocationArray.msg.html

(cl:defclass <VehicleLocationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehiclelocationarray
    :reader vehiclelocationarray
    :initarg :vehiclelocationarray
    :type (cl:vector zzz_cognition_msgs-msg:VehicleLocation)
   :initform (cl:make-array 0 :element-type 'zzz_cognition_msgs-msg:VehicleLocation :initial-element (cl:make-instance 'zzz_cognition_msgs-msg:VehicleLocation))))
)

(cl:defclass VehicleLocationArray (<VehicleLocationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLocationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLocationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_cognition_msgs-msg:<VehicleLocationArray> is deprecated: use zzz_cognition_msgs-msg:VehicleLocationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleLocationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:header-val is deprecated.  Use zzz_cognition_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehiclelocationarray-val :lambda-list '(m))
(cl:defmethod vehiclelocationarray-val ((m <VehicleLocationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:vehiclelocationarray-val is deprecated.  Use zzz_cognition_msgs-msg:vehiclelocationarray instead.")
  (vehiclelocationarray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLocationArray>) ostream)
  "Serializes a message object of type '<VehicleLocationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehiclelocationarray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehiclelocationarray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLocationArray>) istream)
  "Deserializes a message object of type '<VehicleLocationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehiclelocationarray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehiclelocationarray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_cognition_msgs-msg:VehicleLocation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLocationArray>)))
  "Returns string type for a message object of type '<VehicleLocationArray>"
  "zzz_cognition_msgs/VehicleLocationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLocationArray)))
  "Returns string type for a message object of type 'VehicleLocationArray"
  "zzz_cognition_msgs/VehicleLocationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLocationArray>)))
  "Returns md5sum for a message object of type '<VehicleLocationArray>"
  "05a1add39e990f1618c38da9e9721a1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLocationArray)))
  "Returns md5sum for a message object of type 'VehicleLocationArray"
  "05a1add39e990f1618c38da9e9721a1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLocationArray>)))
  "Returns full string definition for message of type '<VehicleLocationArray>"
  (cl:format cl:nil "Header header~%VehicleLocation[] vehiclelocationarray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_cognition_msgs/VehicleLocation~%Header header~%~%float64 lat~%float64 lon~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLocationArray)))
  "Returns full string definition for message of type 'VehicleLocationArray"
  (cl:format cl:nil "Header header~%VehicleLocation[] vehiclelocationarray~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_cognition_msgs/VehicleLocation~%Header header~%~%float64 lat~%float64 lon~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLocationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehiclelocationarray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLocationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLocationArray
    (cl:cons ':header (header msg))
    (cl:cons ':vehiclelocationarray (vehiclelocationarray msg))
))
