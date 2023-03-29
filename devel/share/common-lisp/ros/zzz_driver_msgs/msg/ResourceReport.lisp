; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude ResourceReport.msg.html

(cl:defclass <ResourceReport> (roslisp-msg-protocol:ros-message)
  ((energy_level
    :reader energy_level
    :initarg :energy_level
    :type cl:float
    :initform 0.0)
   (distance_to_refill
    :reader distance_to_refill
    :initarg :distance_to_refill
    :type cl:float
    :initform 0.0)
   (odometer
    :reader odometer
    :initarg :odometer
    :type cl:float
    :initform 0.0))
)

(cl:defclass ResourceReport (<ResourceReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResourceReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResourceReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<ResourceReport> is deprecated: use zzz_driver_msgs-msg:ResourceReport instead.")))

(cl:ensure-generic-function 'energy_level-val :lambda-list '(m))
(cl:defmethod energy_level-val ((m <ResourceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:energy_level-val is deprecated.  Use zzz_driver_msgs-msg:energy_level instead.")
  (energy_level m))

(cl:ensure-generic-function 'distance_to_refill-val :lambda-list '(m))
(cl:defmethod distance_to_refill-val ((m <ResourceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:distance_to_refill-val is deprecated.  Use zzz_driver_msgs-msg:distance_to_refill instead.")
  (distance_to_refill m))

(cl:ensure-generic-function 'odometer-val :lambda-list '(m))
(cl:defmethod odometer-val ((m <ResourceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:odometer-val is deprecated.  Use zzz_driver_msgs-msg:odometer instead.")
  (odometer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResourceReport>) ostream)
  "Serializes a message object of type '<ResourceReport>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'energy_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_refill))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResourceReport>) istream)
  "Deserializes a message object of type '<ResourceReport>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'energy_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_refill) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResourceReport>)))
  "Returns string type for a message object of type '<ResourceReport>"
  "zzz_driver_msgs/ResourceReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResourceReport)))
  "Returns string type for a message object of type 'ResourceReport"
  "zzz_driver_msgs/ResourceReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResourceReport>)))
  "Returns md5sum for a message object of type '<ResourceReport>"
  "0533402475b5b1c56a96351a1100d35f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResourceReport)))
  "Returns md5sum for a message object of type 'ResourceReport"
  "0533402475b5b1c56a96351a1100d35f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResourceReport>)))
  "Returns full string definition for message of type '<ResourceReport>"
  (cl:format cl:nil "# Information for vehicle resources, can be used for eco driving~%~%# Fuel level / EV battery level (%, 0 to 100)~%float32 energy_level~%~%# Estimate distance to refill fuel/battery~%float32 distance_to_refill~%~%# Odometer (km)~%float32 odometer~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResourceReport)))
  "Returns full string definition for message of type 'ResourceReport"
  (cl:format cl:nil "# Information for vehicle resources, can be used for eco driving~%~%# Fuel level / EV battery level (%, 0 to 100)~%float32 energy_level~%~%# Estimate distance to refill fuel/battery~%float32 distance_to_refill~%~%# Odometer (km)~%float32 odometer~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResourceReport>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResourceReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ResourceReport
    (cl:cons ':energy_level (energy_level msg))
    (cl:cons ':distance_to_refill (distance_to_refill msg))
    (cl:cons ':odometer (odometer msg))
))
