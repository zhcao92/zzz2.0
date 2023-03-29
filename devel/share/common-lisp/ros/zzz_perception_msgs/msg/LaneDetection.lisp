; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude LaneDetection.msg.html

(cl:defclass <LaneDetection> (roslisp-msg-protocol:ros-message)
  ((center_line_coeffs
    :reader center_line_coeffs
    :initarg :center_line_coeffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (end_location
    :reader end_location
    :initarg :end_location
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneDetection (<LaneDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<LaneDetection> is deprecated: use zzz_perception_msgs-msg:LaneDetection instead.")))

(cl:ensure-generic-function 'center_line_coeffs-val :lambda-list '(m))
(cl:defmethod center_line_coeffs-val ((m <LaneDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:center_line_coeffs-val is deprecated.  Use zzz_perception_msgs-msg:center_line_coeffs instead.")
  (center_line_coeffs m))

(cl:ensure-generic-function 'end_location-val :lambda-list '(m))
(cl:defmethod end_location-val ((m <LaneDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:end_location-val is deprecated.  Use zzz_perception_msgs-msg:end_location instead.")
  (end_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneDetection>) ostream)
  "Serializes a message object of type '<LaneDetection>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center_line_coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'center_line_coeffs))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneDetection>) istream)
  "Deserializes a message object of type '<LaneDetection>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center_line_coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center_line_coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_location) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneDetection>)))
  "Returns string type for a message object of type '<LaneDetection>"
  "zzz_perception_msgs/LaneDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneDetection)))
  "Returns string type for a message object of type 'LaneDetection"
  "zzz_perception_msgs/LaneDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneDetection>)))
  "Returns md5sum for a message object of type '<LaneDetection>"
  "344c276f64db9a8b75d28e79a5fc0818")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneDetection)))
  "Returns md5sum for a message object of type 'LaneDetection"
  "344c276f64db9a8b75d28e79a5fc0818")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneDetection>)))
  "Returns full string definition for message of type '<LaneDetection>"
  (cl:format cl:nil "# Geometric representation of center line of the lane~%float32[] center_line_coeffs~%~%# The location at the end of the line~%float32 end_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneDetection)))
  "Returns full string definition for message of type 'LaneDetection"
  (cl:format cl:nil "# Geometric representation of center line of the lane~%float32[] center_line_coeffs~%~%# The location at the end of the line~%float32 end_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneDetection>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center_line_coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneDetection
    (cl:cons ':center_line_coeffs (center_line_coeffs msg))
    (cl:cons ':end_location (end_location msg))
))
