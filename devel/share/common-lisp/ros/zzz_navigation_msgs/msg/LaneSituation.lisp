; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude LaneSituation.msg.html

(cl:defclass <LaneSituation> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (situation_type
    :reader situation_type
    :initarg :situation_type
    :type cl:fixnum
    :initform 0)
   (reduced_max_speed
    :reader reduced_max_speed
    :initarg :reduced_max_speed
    :type cl:float
    :initform 0.0)
   (comments
    :reader comments
    :initarg :comments
    :type cl:string
    :initform ""))
)

(cl:defclass LaneSituation (<LaneSituation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSituation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSituation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<LaneSituation> is deprecated: use zzz_navigation_msgs-msg:LaneSituation instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <LaneSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:s-val is deprecated.  Use zzz_navigation_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LaneSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:length-val is deprecated.  Use zzz_navigation_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'situation_type-val :lambda-list '(m))
(cl:defmethod situation_type-val ((m <LaneSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:situation_type-val is deprecated.  Use zzz_navigation_msgs-msg:situation_type instead.")
  (situation_type m))

(cl:ensure-generic-function 'reduced_max_speed-val :lambda-list '(m))
(cl:defmethod reduced_max_speed-val ((m <LaneSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:reduced_max_speed-val is deprecated.  Use zzz_navigation_msgs-msg:reduced_max_speed instead.")
  (reduced_max_speed m))

(cl:ensure-generic-function 'comments-val :lambda-list '(m))
(cl:defmethod comments-val ((m <LaneSituation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:comments-val is deprecated.  Use zzz_navigation_msgs-msg:comments instead.")
  (comments m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneSituation>)))
    "Constants for message type '<LaneSituation>"
  '((:SITUATION_NOT_SPECIFIED . 0)
    (:SITUATION_BLOCKED . 1)
    (:SITUATION_CROSSWALK . 2)
    (:SITUATION_REDUCE_SPEED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneSituation)))
    "Constants for message type 'LaneSituation"
  '((:SITUATION_NOT_SPECIFIED . 0)
    (:SITUATION_BLOCKED . 1)
    (:SITUATION_CROSSWALK . 2)
    (:SITUATION_REDUCE_SPEED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSituation>) ostream)
  "Serializes a message object of type '<LaneSituation>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'situation_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reduced_max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSituation>) istream)
  "Deserializes a message object of type '<LaneSituation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'situation_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reduced_max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comments) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comments) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSituation>)))
  "Returns string type for a message object of type '<LaneSituation>"
  "zzz_navigation_msgs/LaneSituation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSituation)))
  "Returns string type for a message object of type 'LaneSituation"
  "zzz_navigation_msgs/LaneSituation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSituation>)))
  "Returns md5sum for a message object of type '<LaneSituation>"
  "0d4a4be92b4d0a3851a0b3bbd6d00866")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSituation)))
  "Returns md5sum for a message object of type 'LaneSituation"
  "0d4a4be92b4d0a3851a0b3bbd6d00866")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSituation>)))
  "Returns full string definition for message of type '<LaneSituation>"
  (cl:format cl:nil "# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSituation)))
  "Returns full string definition for message of type 'LaneSituation"
  (cl:format cl:nil "# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSituation>))
  (cl:+ 0
     4
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'comments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSituation>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSituation
    (cl:cons ':s (s msg))
    (cl:cons ':length (length msg))
    (cl:cons ':situation_type (situation_type msg))
    (cl:cons ':reduced_max_speed (reduced_max_speed msg))
    (cl:cons ':comments (comments msg))
))
