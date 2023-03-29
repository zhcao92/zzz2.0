; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude LaneDetectionArray.msg.html

(cl:defclass <LaneDetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector zzz_perception_msgs-msg:LaneDetection)
   :initform (cl:make-array 0 :element-type 'zzz_perception_msgs-msg:LaneDetection :initial-element (cl:make-instance 'zzz_perception_msgs-msg:LaneDetection))))
)

(cl:defclass LaneDetectionArray (<LaneDetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneDetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneDetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<LaneDetectionArray> is deprecated: use zzz_perception_msgs-msg:LaneDetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:header-val is deprecated.  Use zzz_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <LaneDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:detections-val is deprecated.  Use zzz_perception_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneDetectionArray>) ostream)
  "Serializes a message object of type '<LaneDetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneDetectionArray>) istream)
  "Deserializes a message object of type '<LaneDetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_perception_msgs-msg:LaneDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneDetectionArray>)))
  "Returns string type for a message object of type '<LaneDetectionArray>"
  "zzz_perception_msgs/LaneDetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneDetectionArray)))
  "Returns string type for a message object of type 'LaneDetectionArray"
  "zzz_perception_msgs/LaneDetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneDetectionArray>)))
  "Returns md5sum for a message object of type '<LaneDetectionArray>"
  "d293a0f68718e32c10240d4d4f142934")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneDetectionArray)))
  "Returns md5sum for a message object of type 'LaneDetectionArray"
  "d293a0f68718e32c10240d4d4f142934")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneDetectionArray>)))
  "Returns full string definition for message of type '<LaneDetectionArray>"
  (cl:format cl:nil "# This message describes lane detection list~%~%Header header~%~%LaneDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_perception_msgs/LaneDetection~%# Geometric representation of center line of the lane~%float32[] center_line_coeffs~%~%# The location at the end of the line~%float32 end_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneDetectionArray)))
  "Returns full string definition for message of type 'LaneDetectionArray"
  (cl:format cl:nil "# This message describes lane detection list~%~%Header header~%~%LaneDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_perception_msgs/LaneDetection~%# Geometric representation of center line of the lane~%float32[] center_line_coeffs~%~%# The location at the end of the line~%float32 end_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneDetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneDetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneDetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
