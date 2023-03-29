; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude ObjectSignals.msg.html

(cl:defclass <ObjectSignals> (roslisp-msg-protocol:ros-message)
  ((flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObjectSignals (<ObjectSignals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectSignals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectSignals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<ObjectSignals> is deprecated: use zzz_perception_msgs-msg:ObjectSignals instead.")))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <ObjectSignals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:flags-val is deprecated.  Use zzz_perception_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ObjectSignals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:score-val is deprecated.  Use zzz_perception_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectSignals>)))
    "Constants for message type '<ObjectSignals>"
  '((:UNKNOWN . 0)
    (:NONE . 16)
    (:VEHICLE_SIGNAL . 1)
    (:VEHICLE_SIGNAL_LEFT_TURN . 17)
    (:VEHICLE_SIGNAL_RIGHT_TURN . 33)
    (:VEHICLE_SIGNAL_HAZARD . 49)
    (:VEHICLE_SIGNAL_BRAKE . 65)
    (:VEHICLE_SIGNAL_REVERSE . 81)
    (:VEHICLE_SIGNAL_SPEED_30_LIMIT . 97)
    (:TRAFFIC_LIGHT . 2)
    (:TRAFFIC_LIGHT_RED . 18)
    (:TRAFFIC_LIGHT_YELLOW . 34)
    (:TRAFFIC_LIGHT_GREEN . 50)
    (:TRAFFIC_LIGHT_GREEN_LEFT_TURN . 66)
    (:TRAFFIC_LIGHT_GREEN_RIGHT_TURN . 66))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectSignals)))
    "Constants for message type 'ObjectSignals"
  '((:UNKNOWN . 0)
    (:NONE . 16)
    (:VEHICLE_SIGNAL . 1)
    (:VEHICLE_SIGNAL_LEFT_TURN . 17)
    (:VEHICLE_SIGNAL_RIGHT_TURN . 33)
    (:VEHICLE_SIGNAL_HAZARD . 49)
    (:VEHICLE_SIGNAL_BRAKE . 65)
    (:VEHICLE_SIGNAL_REVERSE . 81)
    (:VEHICLE_SIGNAL_SPEED_30_LIMIT . 97)
    (:TRAFFIC_LIGHT . 2)
    (:TRAFFIC_LIGHT_RED . 18)
    (:TRAFFIC_LIGHT_YELLOW . 34)
    (:TRAFFIC_LIGHT_GREEN . 50)
    (:TRAFFIC_LIGHT_GREEN_LEFT_TURN . 66)
    (:TRAFFIC_LIGHT_GREEN_RIGHT_TURN . 66))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectSignals>) ostream)
  "Serializes a message object of type '<ObjectSignals>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectSignals>) istream)
  "Deserializes a message object of type '<ObjectSignals>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectSignals>)))
  "Returns string type for a message object of type '<ObjectSignals>"
  "zzz_perception_msgs/ObjectSignals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectSignals)))
  "Returns string type for a message object of type 'ObjectSignals"
  "zzz_perception_msgs/ObjectSignals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectSignals>)))
  "Returns md5sum for a message object of type '<ObjectSignals>"
  "a7911e45a2280b3764131391e149fc54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectSignals)))
  "Returns md5sum for a message object of type 'ObjectSignals"
  "a7911e45a2280b3764131391e149fc54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectSignals>)))
  "Returns full string definition for message of type '<ObjectSignals>"
  (cl:format cl:nil "# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectSignals)))
  "Returns full string definition for message of type 'ObjectSignals"
  (cl:format cl:nil "# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectSignals>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectSignals>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectSignals
    (cl:cons ':flags (flags msg))
    (cl:cons ':score (score msg))
))
