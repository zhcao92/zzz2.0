; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude LanePoint.msg.html

(cl:defclass <LanePoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (slope
    :reader slope
    :initarg :slope
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0)
   (tangent
    :reader tangent
    :initarg :tangent
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0))
)

(cl:defclass LanePoint (<LanePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<LanePoint> is deprecated: use zzz_navigation_msgs-msg:LanePoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:position-val is deprecated.  Use zzz_navigation_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:s-val is deprecated.  Use zzz_navigation_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'slope-val :lambda-list '(m))
(cl:defmethod slope-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:slope-val is deprecated.  Use zzz_navigation_msgs-msg:slope instead.")
  (slope m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:curvature-val is deprecated.  Use zzz_navigation_msgs-msg:curvature instead.")
  (curvature m))

(cl:ensure-generic-function 'tangent-val :lambda-list '(m))
(cl:defmethod tangent-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:tangent-val is deprecated.  Use zzz_navigation_msgs-msg:tangent instead.")
  (tangent m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:width-val is deprecated.  Use zzz_navigation_msgs-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePoint>) ostream)
  "Serializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tangent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePoint>) istream)
  "Deserializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
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
    (cl:setf (cl:slot-value msg 'slope) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tangent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePoint>)))
  "Returns string type for a message object of type '<LanePoint>"
  "zzz_navigation_msgs/LanePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePoint)))
  "Returns string type for a message object of type 'LanePoint"
  "zzz_navigation_msgs/LanePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePoint>)))
  "Returns md5sum for a message object of type '<LanePoint>"
  "ad50465050a73449457070f73ee72c69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePoint)))
  "Returns md5sum for a message object of type 'LanePoint"
  "ad50465050a73449457070f73ee72c69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePoint>)))
  "Returns full string definition for message of type '<LanePoint>"
  (cl:format cl:nil "# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePoint)))
  "Returns full string definition for message of type 'LanePoint"
  (cl:format cl:nil "# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePoint
    (cl:cons ':position (position msg))
    (cl:cons ':s (s msg))
    (cl:cons ':slope (slope msg))
    (cl:cons ':curvature (curvature msg))
    (cl:cons ':tangent (tangent msg))
    (cl:cons ':width (width msg))
))
