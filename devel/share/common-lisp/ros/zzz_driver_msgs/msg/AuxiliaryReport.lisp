; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude AuxiliaryReport.msg.html

(cl:defclass <AuxiliaryReport> (roslisp-msg-protocol:ros-message)
  ((fcw_flag
    :reader fcw_flag
    :initarg :fcw_flag
    :type cl:fixnum
    :initform 0)
   (aeb_flag
    :reader aeb_flag
    :initarg :aeb_flag
    :type cl:fixnum
    :initform 0)
   (acc_flag
    :reader acc_flag
    :initarg :acc_flag
    :type cl:fixnum
    :initform 0)
   (ldw_flag
    :reader ldw_flag
    :initarg :ldw_flag
    :type cl:fixnum
    :initform 0)
   (bsd_flag
    :reader bsd_flag
    :initarg :bsd_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AuxiliaryReport (<AuxiliaryReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<AuxiliaryReport> is deprecated: use zzz_driver_msgs-msg:AuxiliaryReport instead.")))

(cl:ensure-generic-function 'fcw_flag-val :lambda-list '(m))
(cl:defmethod fcw_flag-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:fcw_flag-val is deprecated.  Use zzz_driver_msgs-msg:fcw_flag instead.")
  (fcw_flag m))

(cl:ensure-generic-function 'aeb_flag-val :lambda-list '(m))
(cl:defmethod aeb_flag-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:aeb_flag-val is deprecated.  Use zzz_driver_msgs-msg:aeb_flag instead.")
  (aeb_flag m))

(cl:ensure-generic-function 'acc_flag-val :lambda-list '(m))
(cl:defmethod acc_flag-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:acc_flag-val is deprecated.  Use zzz_driver_msgs-msg:acc_flag instead.")
  (acc_flag m))

(cl:ensure-generic-function 'ldw_flag-val :lambda-list '(m))
(cl:defmethod ldw_flag-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:ldw_flag-val is deprecated.  Use zzz_driver_msgs-msg:ldw_flag instead.")
  (ldw_flag m))

(cl:ensure-generic-function 'bsd_flag-val :lambda-list '(m))
(cl:defmethod bsd_flag-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:bsd_flag-val is deprecated.  Use zzz_driver_msgs-msg:bsd_flag instead.")
  (bsd_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AuxiliaryReport>)))
    "Constants for message type '<AuxiliaryReport>"
  '((:FCW_AVAILABLE . 1)
    (:FCW_ALERT . 2)
    (:AEB_AVAILABLE . 1)
    (:AEB_PRECHARGE . 2)
    (:AEB_BRAKING . 4)
    (:ACC_AVAILABLE . 1)
    (:ACC_BRAKING . 2)
    (:LDW_AVAILABLE . 1)
    (:LDW_LEFT_ALERT . 2)
    (:LDW_RIGHT_ALERT . 4)
    (:BSD_AVAILABLE . 1)
    (:BSD_LEFT_ALERT . 2)
    (:BSD_RIGHT_ALERT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AuxiliaryReport)))
    "Constants for message type 'AuxiliaryReport"
  '((:FCW_AVAILABLE . 1)
    (:FCW_ALERT . 2)
    (:AEB_AVAILABLE . 1)
    (:AEB_PRECHARGE . 2)
    (:AEB_BRAKING . 4)
    (:ACC_AVAILABLE . 1)
    (:ACC_BRAKING . 2)
    (:LDW_AVAILABLE . 1)
    (:LDW_LEFT_ALERT . 2)
    (:LDW_RIGHT_ALERT . 4)
    (:BSD_AVAILABLE . 1)
    (:BSD_LEFT_ALERT . 2)
    (:BSD_RIGHT_ALERT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryReport>) ostream)
  "Serializes a message object of type '<AuxiliaryReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fcw_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aeb_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ldw_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bsd_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryReport>) istream)
  "Deserializes a message object of type '<AuxiliaryReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fcw_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aeb_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ldw_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bsd_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryReport>)))
  "Returns string type for a message object of type '<AuxiliaryReport>"
  "zzz_driver_msgs/AuxiliaryReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryReport)))
  "Returns string type for a message object of type 'AuxiliaryReport"
  "zzz_driver_msgs/AuxiliaryReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryReport>)))
  "Returns md5sum for a message object of type '<AuxiliaryReport>"
  "46bed4f4c85b89c6936b9a6716c138b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryReport)))
  "Returns md5sum for a message object of type 'AuxiliaryReport"
  "46bed4f4c85b89c6936b9a6716c138b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryReport>)))
  "Returns full string definition for message of type '<AuxiliaryReport>"
  (cl:format cl:nil "# This message provide interface for additional vehicle modules, e.g. ACC, BSD~%~%~%# Forward Collison Warning status~%uint8 fcw_flag~%uint8 FCW_AVAILABLE = 1~%uint8 FCW_ALERT = 2~%~%# Automatic Emergency Brake status~%uint8 aeb_flag~%uint8 AEB_AVAILABLE = 1~%uint8 AEB_PRECHARGE = 2~%uint8 AEB_BRAKING = 4~%~%# Adaptive Cruise Control status~%uint8 acc_flag~%uint8 ACC_AVAILABLE = 1~%uint8 ACC_BRAKING = 2~%~%# Lane Departure Warning status~%uint8 ldw_flag~%uint8 LDW_AVAILABLE = 1~%uint8 LDW_LEFT_ALERT = 2~%uint8 LDW_RIGHT_ALERT = 4~%~%# Blind Spot Detection status~%uint8 bsd_flag~%uint8 BSD_AVAILABLE = 1~%uint8 BSD_LEFT_ALERT = 2~%uint8 BSD_RIGHT_ALERT = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryReport)))
  "Returns full string definition for message of type 'AuxiliaryReport"
  (cl:format cl:nil "# This message provide interface for additional vehicle modules, e.g. ACC, BSD~%~%~%# Forward Collison Warning status~%uint8 fcw_flag~%uint8 FCW_AVAILABLE = 1~%uint8 FCW_ALERT = 2~%~%# Automatic Emergency Brake status~%uint8 aeb_flag~%uint8 AEB_AVAILABLE = 1~%uint8 AEB_PRECHARGE = 2~%uint8 AEB_BRAKING = 4~%~%# Adaptive Cruise Control status~%uint8 acc_flag~%uint8 ACC_AVAILABLE = 1~%uint8 ACC_BRAKING = 2~%~%# Lane Departure Warning status~%uint8 ldw_flag~%uint8 LDW_AVAILABLE = 1~%uint8 LDW_LEFT_ALERT = 2~%uint8 LDW_RIGHT_ALERT = 4~%~%# Blind Spot Detection status~%uint8 bsd_flag~%uint8 BSD_AVAILABLE = 1~%uint8 BSD_LEFT_ALERT = 2~%uint8 BSD_RIGHT_ALERT = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryReport>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryReport>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryReport
    (cl:cons ':fcw_flag (fcw_flag msg))
    (cl:cons ':aeb_flag (aeb_flag msg))
    (cl:cons ':acc_flag (acc_flag msg))
    (cl:cons ':ldw_flag (ldw_flag msg))
    (cl:cons ':bsd_flag (bsd_flag msg))
))
