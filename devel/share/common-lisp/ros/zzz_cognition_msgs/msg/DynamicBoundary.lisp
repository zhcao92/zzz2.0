; Auto-generated. Do not edit!


(cl:in-package zzz_cognition_msgs-msg)


;//! \htmlinclude DynamicBoundary.msg.html

(cl:defclass <DynamicBoundary> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (boundary
    :reader boundary
    :initarg :boundary
    :type (cl:vector zzz_cognition_msgs-msg:DynamicBoundaryPoint)
   :initform (cl:make-array 0 :element-type 'zzz_cognition_msgs-msg:DynamicBoundaryPoint :initial-element (cl:make-instance 'zzz_cognition_msgs-msg:DynamicBoundaryPoint))))
)

(cl:defclass DynamicBoundary (<DynamicBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_cognition_msgs-msg:<DynamicBoundary> is deprecated: use zzz_cognition_msgs-msg:DynamicBoundary instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DynamicBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:header-val is deprecated.  Use zzz_cognition_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <DynamicBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:boundary-val is deprecated.  Use zzz_cognition_msgs-msg:boundary instead.")
  (boundary m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicBoundary>) ostream)
  "Serializes a message object of type '<DynamicBoundary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boundary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundary))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicBoundary>) istream)
  "Deserializes a message object of type '<DynamicBoundary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boundary) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boundary)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_cognition_msgs-msg:DynamicBoundaryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicBoundary>)))
  "Returns string type for a message object of type '<DynamicBoundary>"
  "zzz_cognition_msgs/DynamicBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicBoundary)))
  "Returns string type for a message object of type 'DynamicBoundary"
  "zzz_cognition_msgs/DynamicBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicBoundary>)))
  "Returns md5sum for a message object of type '<DynamicBoundary>"
  "73db63c598006d00c116b478d56b2cc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicBoundary)))
  "Returns md5sum for a message object of type 'DynamicBoundary"
  "73db63c598006d00c116b478d56b2cc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicBoundary>)))
  "Returns full string definition for message of type '<DynamicBoundary>"
  (cl:format cl:nil "# This message represents a compact dynamc environment representation with dynamic boundary~%~%Header header~%DynamicBoundaryPoint[] boundary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_cognition_msgs/DynamicBoundaryPoint~%# This message represents a point in the dynamic boundary~%~%float32 x~%float32 y~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicBoundary)))
  "Returns full string definition for message of type 'DynamicBoundary"
  (cl:format cl:nil "# This message represents a compact dynamc environment representation with dynamic boundary~%~%Header header~%DynamicBoundaryPoint[] boundary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_cognition_msgs/DynamicBoundaryPoint~%# This message represents a point in the dynamic boundary~%~%float32 x~%float32 y~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicBoundary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boundary) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicBoundary
    (cl:cons ':header (header msg))
    (cl:cons ':boundary (boundary msg))
))
