; Auto-generated. Do not edit!


(cl:in-package zzz_cognition_msgs-msg)


;//! \htmlinclude RoadObstacle.msg.html

(cl:defclass <RoadObstacle> (roslisp-msg-protocol:ros-message)
  ((uid
    :reader uid
    :initarg :uid
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (cls
    :reader cls
    :initarg :cls
    :type zzz_perception_msgs-msg:ObjectClass
    :initform (cl:make-instance 'zzz_perception_msgs-msg:ObjectClass))
   (state
    :reader state
    :initarg :state
    :type zzz_driver_msgs-msg:RigidBodyState
    :initform (cl:make-instance 'zzz_driver_msgs-msg:RigidBodyState))
   (ffstate
    :reader ffstate
    :initarg :ffstate
    :type zzz_driver_msgs-msg:FrenetSerretState2D
    :initform (cl:make-instance 'zzz_driver_msgs-msg:FrenetSerretState2D))
   (lane_index
    :reader lane_index
    :initarg :lane_index
    :type cl:float
    :initform 0.0)
   (lane_anglediff
    :reader lane_anglediff
    :initarg :lane_anglediff
    :type cl:float
    :initform 0.0)
   (lane_dist_left_t
    :reader lane_dist_left_t
    :initarg :lane_dist_left_t
    :type cl:float
    :initform 0.0)
   (lane_dist_right_t
    :reader lane_dist_right_t
    :initarg :lane_dist_right_t
    :type cl:float
    :initform 0.0)
   (lane_dist_s
    :reader lane_dist_s
    :initarg :lane_dist_s
    :type cl:float
    :initform 0.0)
   (is_static
    :reader is_static
    :initarg :is_static
    :type cl:boolean
    :initform cl:nil)
   (shape_type
    :reader shape_type
    :initarg :shape_type
    :type cl:fixnum
    :initform 0)
   (shape
    :reader shape
    :initarg :shape
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (dimension
    :reader dimension
    :initarg :dimension
    :type zzz_perception_msgs-msg:DimensionWithCovariance
    :initform (cl:make-instance 'zzz_perception_msgs-msg:DimensionWithCovariance))
   (shape_uncertainty
    :reader shape_uncertainty
    :initarg :shape_uncertainty
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (behavior
    :reader behavior
    :initarg :behavior
    :type cl:fixnum
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadObstacle (<RoadObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_cognition_msgs-msg:<RoadObstacle> is deprecated: use zzz_cognition_msgs-msg:RoadObstacle instead.")))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:uid-val is deprecated.  Use zzz_cognition_msgs-msg:uid instead.")
  (uid m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:confidence-val is deprecated.  Use zzz_cognition_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'cls-val :lambda-list '(m))
(cl:defmethod cls-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:cls-val is deprecated.  Use zzz_cognition_msgs-msg:cls instead.")
  (cls m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:state-val is deprecated.  Use zzz_cognition_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'ffstate-val :lambda-list '(m))
(cl:defmethod ffstate-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:ffstate-val is deprecated.  Use zzz_cognition_msgs-msg:ffstate instead.")
  (ffstate m))

(cl:ensure-generic-function 'lane_index-val :lambda-list '(m))
(cl:defmethod lane_index-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:lane_index-val is deprecated.  Use zzz_cognition_msgs-msg:lane_index instead.")
  (lane_index m))

(cl:ensure-generic-function 'lane_anglediff-val :lambda-list '(m))
(cl:defmethod lane_anglediff-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:lane_anglediff-val is deprecated.  Use zzz_cognition_msgs-msg:lane_anglediff instead.")
  (lane_anglediff m))

(cl:ensure-generic-function 'lane_dist_left_t-val :lambda-list '(m))
(cl:defmethod lane_dist_left_t-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:lane_dist_left_t-val is deprecated.  Use zzz_cognition_msgs-msg:lane_dist_left_t instead.")
  (lane_dist_left_t m))

(cl:ensure-generic-function 'lane_dist_right_t-val :lambda-list '(m))
(cl:defmethod lane_dist_right_t-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:lane_dist_right_t-val is deprecated.  Use zzz_cognition_msgs-msg:lane_dist_right_t instead.")
  (lane_dist_right_t m))

(cl:ensure-generic-function 'lane_dist_s-val :lambda-list '(m))
(cl:defmethod lane_dist_s-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:lane_dist_s-val is deprecated.  Use zzz_cognition_msgs-msg:lane_dist_s instead.")
  (lane_dist_s m))

(cl:ensure-generic-function 'is_static-val :lambda-list '(m))
(cl:defmethod is_static-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:is_static-val is deprecated.  Use zzz_cognition_msgs-msg:is_static instead.")
  (is_static m))

(cl:ensure-generic-function 'shape_type-val :lambda-list '(m))
(cl:defmethod shape_type-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:shape_type-val is deprecated.  Use zzz_cognition_msgs-msg:shape_type instead.")
  (shape_type m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:shape-val is deprecated.  Use zzz_cognition_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'dimension-val :lambda-list '(m))
(cl:defmethod dimension-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:dimension-val is deprecated.  Use zzz_cognition_msgs-msg:dimension instead.")
  (dimension m))

(cl:ensure-generic-function 'shape_uncertainty-val :lambda-list '(m))
(cl:defmethod shape_uncertainty-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:shape_uncertainty-val is deprecated.  Use zzz_cognition_msgs-msg:shape_uncertainty instead.")
  (shape_uncertainty m))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:behavior-val is deprecated.  Use zzz_cognition_msgs-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <RoadObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_cognition_msgs-msg:priority-val is deprecated.  Use zzz_cognition_msgs-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadObstacle>)))
    "Constants for message type '<RoadObstacle>"
  '((:SHAPE_UNDEFINED . 0)
    (:SHAPE_POLYGON . 1)
    (:BEHAVIOR_UNKNOWN . 0)
    (:BEHAVIOR_STOPPING . 1)
    (:BEHAVIOR_FOLLOW . 2)
    (:BEHAVIOR_MOVING_LEFT . 3)
    (:BEHAVIOR_MOVING_RIGHT . 4)
    (:PRIORITY_UNKNOWN . 0)
    (:PRIORITY_NORMAL . 1)
    (:PRIORITY_CAUTIOUS . 2)
    (:PRIORITY_STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadObstacle)))
    "Constants for message type 'RoadObstacle"
  '((:SHAPE_UNDEFINED . 0)
    (:SHAPE_POLYGON . 1)
    (:BEHAVIOR_UNKNOWN . 0)
    (:BEHAVIOR_STOPPING . 1)
    (:BEHAVIOR_FOLLOW . 2)
    (:BEHAVIOR_MOVING_LEFT . 3)
    (:BEHAVIOR_MOVING_RIGHT . 4)
    (:PRIORITY_UNKNOWN . 0)
    (:PRIORITY_NORMAL . 1)
    (:PRIORITY_CAUTIOUS . 2)
    (:PRIORITY_STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadObstacle>) ostream)
  "Serializes a message object of type '<RoadObstacle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cls) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ffstate) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_anglediff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_dist_left_t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_dist_right_t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_dist_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_static) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_uncertainty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_uncertainty))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadObstacle>) istream)
  "Deserializes a message object of type '<RoadObstacle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cls) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ffstate) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_index) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_anglediff) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_dist_left_t) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_dist_right_t) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_dist_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_static) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_uncertainty) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_uncertainty)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'behavior)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'priority)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadObstacle>)))
  "Returns string type for a message object of type '<RoadObstacle>"
  "zzz_cognition_msgs/RoadObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadObstacle)))
  "Returns string type for a message object of type 'RoadObstacle"
  "zzz_cognition_msgs/RoadObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadObstacle>)))
  "Returns md5sum for a message object of type '<RoadObstacle>"
  "88c2dcf03d4744032d7b40f81015259b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadObstacle)))
  "Returns md5sum for a message object of type 'RoadObstacle"
  "88c2dcf03d4744032d7b40f81015259b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadObstacle>)))
  "Returns full string definition for message of type '<RoadObstacle>"
  (cl:format cl:nil "# This message contains all the information that planning needs for a road object~%~%~%# Unique indentity of the obstacle~%uint64 uid~%~%# The confidence of existence, can be used to determine whether this object is valid, or invalid~%# A possible way of get the confidence is by using tracking age~%float32 confidence~%~%# The best guess of obstacle type~%zzz_perception_msgs/ObjectClass cls~%~%# Estimated kinematic properties~%zzz_driver_msgs/RigidBodyState state~%# Kinematic properties in Frenet Frame~%zzz_driver_msgs/FrenetSerretState2D ffstate~%~%# Relationship to lane, for prediction or locating~%float32 lane_index # in which lane~%float32 lane_anglediff # angle difference~%float32 lane_dist_left_t # distance to lane~%float32 lane_dist_right_t~%float32 lane_dist_s # s position in the road~%~%# A flag to mark whether the object is static~%bool is_static~%~%# XXX: Do we need history trajectories?~%~%# ----- Physical Boundary (Optional) -----~%uint8 shape_type~%uint8 SHAPE_UNDEFINED = 0~%uint8 SHAPE_POLYGON = 1~%~%# Representation of the object if it's represented by polygon~%geometry_msgs/Polygon shape~%~%# bbox, refer to BoundingBox in zzz_perception_msgs~%~%zzz_perception_msgs/DimensionWithCovariance dimension~%#uint8 dimension~%~%# Null uncertainty of Inf uncertainty means that the shape is not actually generated~%float32[] shape_uncertainty~%~%# ----- High level behavior estimation -----~%~%uint8 behavior~%uint8 BEHAVIOR_UNKNOWN = 0~%uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped~%uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line~%uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left~%uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right~%~%# This field is preserved to adapt to yield situation.~%# Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.~%# Yield means if your path conflict with the object's, you should wait for the object~%# to go through the conflict point.~%uint8 priority~%uint8 PRIORITY_UNKNOWN = 0~%uint8 PRIORITY_NORMAL = 1~%uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away~%uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_driver_msgs/RigidBodyState~%# This message contains commonly used state variables of rigid body~%~%# ID of frame fixed to the rigid body~%string child_frame_id~%~%# Location and orientatation of the object~%geometry_msgs/PoseWithCovariance  pose~%~%# Linear and angular velocity of the object~%geometry_msgs/TwistWithCovariance twist~%~%# Linear and angular acceleration of the object~%geometry_msgs/AccelWithCovariance accel~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: zzz_driver_msgs/FrenetSerretState2D~%# This message describes a state in 2d Frenet-Serret Frame~%# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 2D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%          # we omit the offset in binormal direction~%float32 psi # Heading angle in s-d plane~%float32[9] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 omega~%float32[9] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 epsilon~%float32[9] accel_covariance~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadObstacle)))
  "Returns full string definition for message of type 'RoadObstacle"
  (cl:format cl:nil "# This message contains all the information that planning needs for a road object~%~%~%# Unique indentity of the obstacle~%uint64 uid~%~%# The confidence of existence, can be used to determine whether this object is valid, or invalid~%# A possible way of get the confidence is by using tracking age~%float32 confidence~%~%# The best guess of obstacle type~%zzz_perception_msgs/ObjectClass cls~%~%# Estimated kinematic properties~%zzz_driver_msgs/RigidBodyState state~%# Kinematic properties in Frenet Frame~%zzz_driver_msgs/FrenetSerretState2D ffstate~%~%# Relationship to lane, for prediction or locating~%float32 lane_index # in which lane~%float32 lane_anglediff # angle difference~%float32 lane_dist_left_t # distance to lane~%float32 lane_dist_right_t~%float32 lane_dist_s # s position in the road~%~%# A flag to mark whether the object is static~%bool is_static~%~%# XXX: Do we need history trajectories?~%~%# ----- Physical Boundary (Optional) -----~%uint8 shape_type~%uint8 SHAPE_UNDEFINED = 0~%uint8 SHAPE_POLYGON = 1~%~%# Representation of the object if it's represented by polygon~%geometry_msgs/Polygon shape~%~%# bbox, refer to BoundingBox in zzz_perception_msgs~%~%zzz_perception_msgs/DimensionWithCovariance dimension~%#uint8 dimension~%~%# Null uncertainty of Inf uncertainty means that the shape is not actually generated~%float32[] shape_uncertainty~%~%# ----- High level behavior estimation -----~%~%uint8 behavior~%uint8 BEHAVIOR_UNKNOWN = 0~%uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped~%uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line~%uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left~%uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right~%~%# This field is preserved to adapt to yield situation.~%# Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.~%# Yield means if your path conflict with the object's, you should wait for the object~%# to go through the conflict point.~%uint8 priority~%uint8 PRIORITY_UNKNOWN = 0~%uint8 PRIORITY_NORMAL = 1~%uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away~%uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_driver_msgs/RigidBodyState~%# This message contains commonly used state variables of rigid body~%~%# ID of frame fixed to the rigid body~%string child_frame_id~%~%# Location and orientatation of the object~%geometry_msgs/PoseWithCovariance  pose~%~%# Linear and angular velocity of the object~%geometry_msgs/TwistWithCovariance twist~%~%# Linear and angular acceleration of the object~%geometry_msgs/AccelWithCovariance accel~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: zzz_driver_msgs/FrenetSerretState2D~%# This message describes a state in 2d Frenet-Serret Frame~%# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 2D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%          # we omit the offset in binormal direction~%float32 psi # Heading angle in s-d plane~%float32[9] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 omega~%float32[9] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 epsilon~%float32[9] accel_covariance~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadObstacle>))
  (cl:+ 0
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cls))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ffstate))
     4
     4
     4
     4
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_uncertainty) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadObstacle
    (cl:cons ':uid (uid msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':cls (cls msg))
    (cl:cons ':state (state msg))
    (cl:cons ':ffstate (ffstate msg))
    (cl:cons ':lane_index (lane_index msg))
    (cl:cons ':lane_anglediff (lane_anglediff msg))
    (cl:cons ':lane_dist_left_t (lane_dist_left_t msg))
    (cl:cons ':lane_dist_right_t (lane_dist_right_t msg))
    (cl:cons ':lane_dist_s (lane_dist_s msg))
    (cl:cons ':is_static (is_static msg))
    (cl:cons ':shape_type (shape_type msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':dimension (dimension msg))
    (cl:cons ':shape_uncertainty (shape_uncertainty msg))
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':priority (priority msg))
))
