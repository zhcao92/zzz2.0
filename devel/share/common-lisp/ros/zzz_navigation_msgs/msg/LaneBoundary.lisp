; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude LaneBoundary.msg.html

(cl:defclass <LaneBoundary> (roslisp-msg-protocol:ros-message)
  ((boundary_point
    :reader boundary_point
    :initarg :boundary_point
    :type zzz_navigation_msgs-msg:LanePoint
    :initform (cl:make-instance 'zzz_navigation_msgs-msg:LanePoint))
   (boundary_type
    :reader boundary_type
    :initarg :boundary_type
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass LaneBoundary (<LaneBoundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<LaneBoundary> is deprecated: use zzz_navigation_msgs-msg:LaneBoundary instead.")))

(cl:ensure-generic-function 'boundary_point-val :lambda-list '(m))
(cl:defmethod boundary_point-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:boundary_point-val is deprecated.  Use zzz_navigation_msgs-msg:boundary_point instead.")
  (boundary_point m))

(cl:ensure-generic-function 'boundary_type-val :lambda-list '(m))
(cl:defmethod boundary_type-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:boundary_type-val is deprecated.  Use zzz_navigation_msgs-msg:boundary_type instead.")
  (boundary_type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LaneBoundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:confidence-val is deprecated.  Use zzz_navigation_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundary>)))
    "Constants for message type '<LaneBoundary>"
  '((:BOUNDARY_UNKNOWN . 0)
    (:BOUNDARY_DASHED_WHITE . 1)
    (:BOUNDARY_DASHED_YELLOW . 2)
    (:BOUNDARY_SOLID_WHITE . 3)
    (:BOUNDARY_SOLID_YELLOW . 4)
    (:BOUNDARY_SOLID_YELLOW_TURN . 5)
    (:BOUNDARY_CURB . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundary)))
    "Constants for message type 'LaneBoundary"
  '((:BOUNDARY_UNKNOWN . 0)
    (:BOUNDARY_DASHED_WHITE . 1)
    (:BOUNDARY_DASHED_YELLOW . 2)
    (:BOUNDARY_SOLID_WHITE . 3)
    (:BOUNDARY_SOLID_YELLOW . 4)
    (:BOUNDARY_SOLID_YELLOW_TURN . 5)
    (:BOUNDARY_CURB . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundary>) ostream)
  "Serializes a message object of type '<LaneBoundary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundary_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'boundary_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundary>) istream)
  "Deserializes a message object of type '<LaneBoundary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundary_point) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'boundary_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundary>)))
  "Returns string type for a message object of type '<LaneBoundary>"
  "zzz_navigation_msgs/LaneBoundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundary)))
  "Returns string type for a message object of type 'LaneBoundary"
  "zzz_navigation_msgs/LaneBoundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundary>)))
  "Returns md5sum for a message object of type '<LaneBoundary>"
  "fa651533f9c7508c5cea4c2a98d9e055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundary)))
  "Returns md5sum for a message object of type 'LaneBoundary"
  "fa651533f9c7508c5cea4c2a98d9e055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundary>)))
  "Returns full string definition for message of type '<LaneBoundary>"
  (cl:format cl:nil "# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundary)))
  "Returns full string definition for message of type 'LaneBoundary"
  (cl:format cl:nil "# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundary_point))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundary>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundary
    (cl:cons ':boundary_point (boundary_point msg))
    (cl:cons ':boundary_type (boundary_type msg))
    (cl:cons ':confidence (confidence msg))
))
