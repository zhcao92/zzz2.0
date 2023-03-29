; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude DimensionWithCovariance.msg.html

(cl:defclass <DimensionWithCovariance> (roslisp-msg-protocol:ros-message)
  ((length_x
    :reader length_x
    :initarg :length_x
    :type cl:float
    :initform 0.0)
   (length_y
    :reader length_y
    :initarg :length_y
    :type cl:float
    :initform 0.0)
   (length_z
    :reader length_z
    :initarg :length_z
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DimensionWithCovariance (<DimensionWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DimensionWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DimensionWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<DimensionWithCovariance> is deprecated: use zzz_perception_msgs-msg:DimensionWithCovariance instead.")))

(cl:ensure-generic-function 'length_x-val :lambda-list '(m))
(cl:defmethod length_x-val ((m <DimensionWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:length_x-val is deprecated.  Use zzz_perception_msgs-msg:length_x instead.")
  (length_x m))

(cl:ensure-generic-function 'length_y-val :lambda-list '(m))
(cl:defmethod length_y-val ((m <DimensionWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:length_y-val is deprecated.  Use zzz_perception_msgs-msg:length_y instead.")
  (length_y m))

(cl:ensure-generic-function 'length_z-val :lambda-list '(m))
(cl:defmethod length_z-val ((m <DimensionWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:length_z-val is deprecated.  Use zzz_perception_msgs-msg:length_z instead.")
  (length_z m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <DimensionWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:covariance-val is deprecated.  Use zzz_perception_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DimensionWithCovariance>) ostream)
  "Serializes a message object of type '<DimensionWithCovariance>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DimensionWithCovariance>) istream)
  "Deserializes a message object of type '<DimensionWithCovariance>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length_z) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DimensionWithCovariance>)))
  "Returns string type for a message object of type '<DimensionWithCovariance>"
  "zzz_perception_msgs/DimensionWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DimensionWithCovariance)))
  "Returns string type for a message object of type 'DimensionWithCovariance"
  "zzz_perception_msgs/DimensionWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DimensionWithCovariance>)))
  "Returns md5sum for a message object of type '<DimensionWithCovariance>"
  "ee5f3d39f08623c93a6f325eab556879")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DimensionWithCovariance)))
  "Returns md5sum for a message object of type 'DimensionWithCovariance"
  "ee5f3d39f08623c93a6f325eab556879")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DimensionWithCovariance>)))
  "Returns full string definition for message of type '<DimensionWithCovariance>"
  (cl:format cl:nil "# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DimensionWithCovariance)))
  "Returns full string definition for message of type 'DimensionWithCovariance"
  (cl:format cl:nil "# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DimensionWithCovariance>))
  (cl:+ 0
     8
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DimensionWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'DimensionWithCovariance
    (cl:cons ':length_x (length_x msg))
    (cl:cons ':length_y (length_y msg))
    (cl:cons ':length_z (length_z msg))
    (cl:cons ':covariance (covariance msg))
))
