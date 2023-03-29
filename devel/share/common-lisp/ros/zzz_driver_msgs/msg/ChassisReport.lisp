; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude ChassisReport.msg.html

(cl:defclass <ChassisReport> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (wheel_speed_fl
    :reader wheel_speed_fl
    :initarg :wheel_speed_fl
    :type cl:integer
    :initform 0)
   (wheel_speed_fr
    :reader wheel_speed_fr
    :initarg :wheel_speed_fr
    :type cl:integer
    :initform 0)
   (wheel_speed_rl
    :reader wheel_speed_rl
    :initarg :wheel_speed_rl
    :type cl:integer
    :initform 0)
   (wheel_speed_rr
    :reader wheel_speed_rr
    :initarg :wheel_speed_rr
    :type cl:integer
    :initform 0))
)

(cl:defclass ChassisReport (<ChassisReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<ChassisReport> is deprecated: use zzz_driver_msgs-msg:ChassisReport instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:speed-val is deprecated.  Use zzz_driver_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'wheel_speed_fl-val :lambda-list '(m))
(cl:defmethod wheel_speed_fl-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:wheel_speed_fl-val is deprecated.  Use zzz_driver_msgs-msg:wheel_speed_fl instead.")
  (wheel_speed_fl m))

(cl:ensure-generic-function 'wheel_speed_fr-val :lambda-list '(m))
(cl:defmethod wheel_speed_fr-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:wheel_speed_fr-val is deprecated.  Use zzz_driver_msgs-msg:wheel_speed_fr instead.")
  (wheel_speed_fr m))

(cl:ensure-generic-function 'wheel_speed_rl-val :lambda-list '(m))
(cl:defmethod wheel_speed_rl-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:wheel_speed_rl-val is deprecated.  Use zzz_driver_msgs-msg:wheel_speed_rl instead.")
  (wheel_speed_rl m))

(cl:ensure-generic-function 'wheel_speed_rr-val :lambda-list '(m))
(cl:defmethod wheel_speed_rr-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:wheel_speed_rr-val is deprecated.  Use zzz_driver_msgs-msg:wheel_speed_rr instead.")
  (wheel_speed_rr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisReport>) ostream)
  "Serializes a message object of type '<ChassisReport>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wheel_speed_fl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_speed_fr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_speed_rl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_speed_rr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisReport>) istream)
  "Deserializes a message object of type '<ChassisReport>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_speed_fl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_speed_fr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_speed_rl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_speed_rr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisReport>)))
  "Returns string type for a message object of type '<ChassisReport>"
  "zzz_driver_msgs/ChassisReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisReport)))
  "Returns string type for a message object of type 'ChassisReport"
  "zzz_driver_msgs/ChassisReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisReport>)))
  "Returns md5sum for a message object of type '<ChassisReport>"
  "b0a29ac7eeffeb332f52a08cd1c9e8d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisReport)))
  "Returns md5sum for a message object of type 'ChassisReport"
  "b0a29ac7eeffeb332f52a08cd1c9e8d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisReport>)))
  "Returns full string definition for message of type '<ChassisReport>"
  (cl:format cl:nil "# Information reported by chassis components~%~%# Vehicle speed~%float32 speed~%~%# Wheel speed (rad/s)~%int32 wheel_speed_fl~%int32 wheel_speed_fr~%int32 wheel_speed_rl~%int32 wheel_speed_rr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisReport)))
  "Returns full string definition for message of type 'ChassisReport"
  (cl:format cl:nil "# Information reported by chassis components~%~%# Vehicle speed~%float32 speed~%~%# Wheel speed (rad/s)~%int32 wheel_speed_fl~%int32 wheel_speed_fr~%int32 wheel_speed_rl~%int32 wheel_speed_rr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisReport>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisReport
    (cl:cons ':speed (speed msg))
    (cl:cons ':wheel_speed_fl (wheel_speed_fl msg))
    (cl:cons ':wheel_speed_fr (wheel_speed_fr msg))
    (cl:cons ':wheel_speed_rl (wheel_speed_rl msg))
    (cl:cons ':wheel_speed_rr (wheel_speed_rr msg))
))
