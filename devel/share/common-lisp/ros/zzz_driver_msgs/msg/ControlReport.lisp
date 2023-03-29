; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude ControlReport.msg.html

(cl:defclass <ControlReport> (roslisp-msg-protocol:ros-message)
  ((throttle_available
    :reader throttle_available
    :initarg :throttle_available
    :type cl:boolean
    :initform cl:nil)
   (throttle_override
    :reader throttle_override
    :initarg :throttle_override
    :type cl:boolean
    :initform cl:nil)
   (throttle_report
    :reader throttle_report
    :initarg :throttle_report
    :type cl:float
    :initform 0.0)
   (brake_available
    :reader brake_available
    :initarg :brake_available
    :type cl:boolean
    :initform cl:nil)
   (brake_override
    :reader brake_override
    :initarg :brake_override
    :type cl:boolean
    :initform cl:nil)
   (brake_report
    :reader brake_report
    :initarg :brake_report
    :type cl:float
    :initform 0.0)
   (steer_available
    :reader steer_available
    :initarg :steer_available
    :type cl:boolean
    :initform cl:nil)
   (steer_override
    :reader steer_override
    :initarg :steer_override
    :type cl:boolean
    :initform cl:nil)
   (steer_report
    :reader steer_report
    :initarg :steer_report
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControlReport (<ControlReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<ControlReport> is deprecated: use zzz_driver_msgs-msg:ControlReport instead.")))

(cl:ensure-generic-function 'throttle_available-val :lambda-list '(m))
(cl:defmethod throttle_available-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:throttle_available-val is deprecated.  Use zzz_driver_msgs-msg:throttle_available instead.")
  (throttle_available m))

(cl:ensure-generic-function 'throttle_override-val :lambda-list '(m))
(cl:defmethod throttle_override-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:throttle_override-val is deprecated.  Use zzz_driver_msgs-msg:throttle_override instead.")
  (throttle_override m))

(cl:ensure-generic-function 'throttle_report-val :lambda-list '(m))
(cl:defmethod throttle_report-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:throttle_report-val is deprecated.  Use zzz_driver_msgs-msg:throttle_report instead.")
  (throttle_report m))

(cl:ensure-generic-function 'brake_available-val :lambda-list '(m))
(cl:defmethod brake_available-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:brake_available-val is deprecated.  Use zzz_driver_msgs-msg:brake_available instead.")
  (brake_available m))

(cl:ensure-generic-function 'brake_override-val :lambda-list '(m))
(cl:defmethod brake_override-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:brake_override-val is deprecated.  Use zzz_driver_msgs-msg:brake_override instead.")
  (brake_override m))

(cl:ensure-generic-function 'brake_report-val :lambda-list '(m))
(cl:defmethod brake_report-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:brake_report-val is deprecated.  Use zzz_driver_msgs-msg:brake_report instead.")
  (brake_report m))

(cl:ensure-generic-function 'steer_available-val :lambda-list '(m))
(cl:defmethod steer_available-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:steer_available-val is deprecated.  Use zzz_driver_msgs-msg:steer_available instead.")
  (steer_available m))

(cl:ensure-generic-function 'steer_override-val :lambda-list '(m))
(cl:defmethod steer_override-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:steer_override-val is deprecated.  Use zzz_driver_msgs-msg:steer_override instead.")
  (steer_override m))

(cl:ensure-generic-function 'steer_report-val :lambda-list '(m))
(cl:defmethod steer_report-val ((m <ControlReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:steer_report-val is deprecated.  Use zzz_driver_msgs-msg:steer_report instead.")
  (steer_report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlReport>) ostream)
  "Serializes a message object of type '<ControlReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steer_available) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steer_override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlReport>) istream)
  "Deserializes a message object of type '<ControlReport>"
    (cl:setf (cl:slot-value msg 'throttle_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'throttle_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_report) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_report) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'steer_available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'steer_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_report) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlReport>)))
  "Returns string type for a message object of type '<ControlReport>"
  "zzz_driver_msgs/ControlReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlReport)))
  "Returns string type for a message object of type 'ControlReport"
  "zzz_driver_msgs/ControlReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlReport>)))
  "Returns md5sum for a message object of type '<ControlReport>"
  "cca91eb5bf039a027d362a7a7aae6512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlReport)))
  "Returns md5sum for a message object of type 'ControlReport"
  "cca91eb5bf039a027d362a7a7aae6512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlReport>)))
  "Returns full string definition for message of type '<ControlReport>"
  (cl:format cl:nil "# Interface for vehicle control~%~%# ---------- Trottle ----------~%# Throttle control by-wire enabled~%bool throttle_available~%# Throttle control overtaken~%bool throttle_override ~%# Reported throttle level~%float32 throttle_report~%~%# ---------- Brake ----------~%# Braking control by-wire enabled~%bool brake_available~%# Braking control overtaken~%bool brake_override~%# Reported braking level~%float32 brake_report~%~%# ---------- Steering ----------~%# Steering control by-wire enabled~%bool steer_available~%# Steering control overtaken~%bool steer_override~%# Reported steering level~%float32 steer_report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlReport)))
  "Returns full string definition for message of type 'ControlReport"
  (cl:format cl:nil "# Interface for vehicle control~%~%# ---------- Trottle ----------~%# Throttle control by-wire enabled~%bool throttle_available~%# Throttle control overtaken~%bool throttle_override ~%# Reported throttle level~%float32 throttle_report~%~%# ---------- Brake ----------~%# Braking control by-wire enabled~%bool brake_available~%# Braking control overtaken~%bool brake_override~%# Reported braking level~%float32 brake_report~%~%# ---------- Steering ----------~%# Steering control by-wire enabled~%bool steer_available~%# Steering control overtaken~%bool steer_override~%# Reported steering level~%float32 steer_report~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlReport>))
  (cl:+ 0
     1
     1
     4
     1
     1
     4
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlReport
    (cl:cons ':throttle_available (throttle_available msg))
    (cl:cons ':throttle_override (throttle_override msg))
    (cl:cons ':throttle_report (throttle_report msg))
    (cl:cons ':brake_available (brake_available msg))
    (cl:cons ':brake_override (brake_override msg))
    (cl:cons ':brake_report (brake_report msg))
    (cl:cons ':steer_available (steer_available msg))
    (cl:cons ':steer_override (steer_override msg))
    (cl:cons ':steer_report (steer_report msg))
))
