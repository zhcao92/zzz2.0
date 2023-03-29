; Auto-generated. Do not edit!


(cl:in-package zzz_cognition_msgs-msg)


;//! \htmlinclude DynamicBoundaryPoint.msg.html

(cl:defclass <DynamicBoundaryPoint> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0))
)

(cl:defclass DynamicBoundaryPoint (<DynamicBoundaryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicBoundaryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicBoundaryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_cognition_msgs-msg:<DynamicBoundaryPoint> is deprecated: use zzz_cognition_msgs-msg:DynamicBoundaryPoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <DynamicBoundaryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:x-val is deprecated.  Use zzz_cognition_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <DynamicBoundaryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:y-val is deprecated.  Use zzz_cognition_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <DynamicBoundaryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:vx-val is deprecated.  Use zzz_cognition_msgs-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <DynamicBoundaryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:vy-val is deprecated.  Use zzz_cognition_msgs-msg:vy instead.")
  (vy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicBoundaryPoint>) ostream)
  "Serializes a message object of type '<DynamicBoundaryPoint>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicBoundaryPoint>) istream)
  "Deserializes a message object of type '<DynamicBoundaryPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicBoundaryPoint>)))
  "Returns string type for a message object of type '<DynamicBoundaryPoint>"
  "zzz_cognition_msgs/DynamicBoundaryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicBoundaryPoint)))
  "Returns string type for a message object of type 'DynamicBoundaryPoint"
  "zzz_cognition_msgs/DynamicBoundaryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicBoundaryPoint>)))
  "Returns md5sum for a message object of type '<DynamicBoundaryPoint>"
  "2af08925b9da4c99c24669eae33385e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicBoundaryPoint)))
  "Returns md5sum for a message object of type 'DynamicBoundaryPoint"
  "2af08925b9da4c99c24669eae33385e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicBoundaryPoint>)))
  "Returns full string definition for message of type '<DynamicBoundaryPoint>"
  (cl:format cl:nil "# This message represents a point in the dynamic boundary~%~%float32 x~%float32 y~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicBoundaryPoint)))
  "Returns full string definition for message of type 'DynamicBoundaryPoint"
  (cl:format cl:nil "# This message represents a point in the dynamic boundary~%~%float32 x~%float32 y~%float32 vx~%float32 vy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicBoundaryPoint>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicBoundaryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicBoundaryPoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
))
