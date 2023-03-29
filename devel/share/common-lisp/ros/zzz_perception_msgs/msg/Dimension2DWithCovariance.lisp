; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude Dimension2DWithCovariance.msg.html

(cl:defclass <Dimension2DWithCovariance> (roslisp-msg-protocol:ros-message)
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
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Dimension2DWithCovariance (<Dimension2DWithCovariance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Dimension2DWithCovariance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Dimension2DWithCovariance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<Dimension2DWithCovariance> is deprecated: use zzz_perception_msgs-msg:Dimension2DWithCovariance instead.")))

(cl:ensure-generic-function 'length_x-val :lambda-list '(m))
(cl:defmethod length_x-val ((m <Dimension2DWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:length_x-val is deprecated.  Use zzz_perception_msgs-msg:length_x instead.")
  (length_x m))

(cl:ensure-generic-function 'length_y-val :lambda-list '(m))
(cl:defmethod length_y-val ((m <Dimension2DWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:length_y-val is deprecated.  Use zzz_perception_msgs-msg:length_y instead.")
  (length_y m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <Dimension2DWithCovariance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:covariance-val is deprecated.  Use zzz_perception_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Dimension2DWithCovariance>) ostream)
  "Serializes a message object of type '<Dimension2DWithCovariance>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Dimension2DWithCovariance>) istream)
  "Deserializes a message object of type '<Dimension2DWithCovariance>"
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
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 4)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Dimension2DWithCovariance>)))
  "Returns string type for a message object of type '<Dimension2DWithCovariance>"
  "zzz_perception_msgs/Dimension2DWithCovariance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Dimension2DWithCovariance)))
  "Returns string type for a message object of type 'Dimension2DWithCovariance"
  "zzz_perception_msgs/Dimension2DWithCovariance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Dimension2DWithCovariance>)))
  "Returns md5sum for a message object of type '<Dimension2DWithCovariance>"
  "eb80ebcc0a2ef8d1a26d96f37247983a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Dimension2DWithCovariance)))
  "Returns md5sum for a message object of type 'Dimension2DWithCovariance"
  "eb80ebcc0a2ef8d1a26d96f37247983a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Dimension2DWithCovariance>)))
  "Returns full string definition for message of type '<Dimension2DWithCovariance>"
  (cl:format cl:nil "# Describing the size object in 2D space (in pixels) with uncertainty~%~%float64 length_x # width~%float64 length_y # length~%~%# Row-major representation of the 2x2 covariance matrix~%# In order, the parameters are: (length_x, length_y)~%float64[4] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Dimension2DWithCovariance)))
  "Returns full string definition for message of type 'Dimension2DWithCovariance"
  (cl:format cl:nil "# Describing the size object in 2D space (in pixels) with uncertainty~%~%float64 length_x # width~%float64 length_y # length~%~%# Row-major representation of the 2x2 covariance matrix~%# In order, the parameters are: (length_x, length_y)~%float64[4] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Dimension2DWithCovariance>))
  (cl:+ 0
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Dimension2DWithCovariance>))
  "Converts a ROS message object to a list"
  (cl:list 'Dimension2DWithCovariance
    (cl:cons ':length_x (length_x msg))
    (cl:cons ':length_y (length_y msg))
    (cl:cons ':covariance (covariance msg))
))
