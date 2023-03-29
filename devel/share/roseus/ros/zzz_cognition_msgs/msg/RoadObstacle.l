;; Auto-generated. Do not edit!


(when (boundp 'zzz_cognition_msgs::RoadObstacle)
  (if (not (find-package "ZZZ_COGNITION_MSGS"))
    (make-package "ZZZ_COGNITION_MSGS"))
  (shadow 'RoadObstacle (find-package "ZZZ_COGNITION_MSGS")))
(unless (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE")
  (make-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude RoadObstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "ZZZ_DRIVER_MSGS"))
  (ros::roseus-add-msgs "zzz_driver_msgs"))
(if (not (find-package "ZZZ_PERCEPTION_MSGS"))
  (ros::roseus-add-msgs "zzz_perception_msgs"))


(intern "*SHAPE_UNDEFINED*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*SHAPE_UNDEFINED* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*SHAPE_UNDEFINED* 0)
(intern "*SHAPE_POLYGON*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*SHAPE_POLYGON* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*SHAPE_POLYGON* 1)
(intern "*BEHAVIOR_UNKNOWN*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*BEHAVIOR_UNKNOWN* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*BEHAVIOR_UNKNOWN* 0)
(intern "*BEHAVIOR_STOPPING*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*BEHAVIOR_STOPPING* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*BEHAVIOR_STOPPING* 1)
(intern "*BEHAVIOR_FOLLOW*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*BEHAVIOR_FOLLOW* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*BEHAVIOR_FOLLOW* 2)
(intern "*BEHAVIOR_MOVING_LEFT*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*BEHAVIOR_MOVING_LEFT* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*BEHAVIOR_MOVING_LEFT* 3)
(intern "*BEHAVIOR_MOVING_RIGHT*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*BEHAVIOR_MOVING_RIGHT* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*BEHAVIOR_MOVING_RIGHT* 4)
(intern "*PRIORITY_UNKNOWN*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*PRIORITY_UNKNOWN* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*PRIORITY_UNKNOWN* 0)
(intern "*PRIORITY_NORMAL*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*PRIORITY_NORMAL* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*PRIORITY_NORMAL* 1)
(intern "*PRIORITY_CAUTIOUS*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*PRIORITY_CAUTIOUS* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*PRIORITY_CAUTIOUS* 2)
(intern "*PRIORITY_STOP*" (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(shadow '*PRIORITY_STOP* (find-package "ZZZ_COGNITION_MSGS::ROADOBSTACLE"))
(defconstant zzz_cognition_msgs::RoadObstacle::*PRIORITY_STOP* 3)
(defclass zzz_cognition_msgs::RoadObstacle
  :super ros::object
  :slots (_uid _confidence _cls _state _ffstate _lane_index _lane_anglediff _lane_dist_left_t _lane_dist_right_t _lane_dist_s _is_static _shape_type _shape _dimension _shape_uncertainty _behavior _priority ))

(defmethod zzz_cognition_msgs::RoadObstacle
  (:init
   (&key
    ((:uid __uid) 0)
    ((:confidence __confidence) 0.0)
    ((:cls __cls) (instance zzz_perception_msgs::ObjectClass :init))
    ((:state __state) (instance zzz_driver_msgs::RigidBodyState :init))
    ((:ffstate __ffstate) (instance zzz_driver_msgs::FrenetSerretState2D :init))
    ((:lane_index __lane_index) 0.0)
    ((:lane_anglediff __lane_anglediff) 0.0)
    ((:lane_dist_left_t __lane_dist_left_t) 0.0)
    ((:lane_dist_right_t __lane_dist_right_t) 0.0)
    ((:lane_dist_s __lane_dist_s) 0.0)
    ((:is_static __is_static) nil)
    ((:shape_type __shape_type) 0)
    ((:shape __shape) (instance geometry_msgs::Polygon :init))
    ((:dimension __dimension) (instance zzz_perception_msgs::DimensionWithCovariance :init))
    ((:shape_uncertainty __shape_uncertainty) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:behavior __behavior) 0)
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _uid (round __uid))
   (setq _confidence (float __confidence))
   (setq _cls __cls)
   (setq _state __state)
   (setq _ffstate __ffstate)
   (setq _lane_index (float __lane_index))
   (setq _lane_anglediff (float __lane_anglediff))
   (setq _lane_dist_left_t (float __lane_dist_left_t))
   (setq _lane_dist_right_t (float __lane_dist_right_t))
   (setq _lane_dist_s (float __lane_dist_s))
   (setq _is_static __is_static)
   (setq _shape_type (round __shape_type))
   (setq _shape __shape)
   (setq _dimension __dimension)
   (setq _shape_uncertainty __shape_uncertainty)
   (setq _behavior (round __behavior))
   (setq _priority (round __priority))
   self)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:cls
   (&rest __cls)
   (if (keywordp (car __cls))
       (send* _cls __cls)
     (progn
       (if __cls (setq _cls (car __cls)))
       _cls)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:ffstate
   (&rest __ffstate)
   (if (keywordp (car __ffstate))
       (send* _ffstate __ffstate)
     (progn
       (if __ffstate (setq _ffstate (car __ffstate)))
       _ffstate)))
  (:lane_index
   (&optional __lane_index)
   (if __lane_index (setq _lane_index __lane_index)) _lane_index)
  (:lane_anglediff
   (&optional __lane_anglediff)
   (if __lane_anglediff (setq _lane_anglediff __lane_anglediff)) _lane_anglediff)
  (:lane_dist_left_t
   (&optional __lane_dist_left_t)
   (if __lane_dist_left_t (setq _lane_dist_left_t __lane_dist_left_t)) _lane_dist_left_t)
  (:lane_dist_right_t
   (&optional __lane_dist_right_t)
   (if __lane_dist_right_t (setq _lane_dist_right_t __lane_dist_right_t)) _lane_dist_right_t)
  (:lane_dist_s
   (&optional __lane_dist_s)
   (if __lane_dist_s (setq _lane_dist_s __lane_dist_s)) _lane_dist_s)
  (:is_static
   (&optional __is_static)
   (if __is_static (setq _is_static __is_static)) _is_static)
  (:shape_type
   (&optional __shape_type)
   (if __shape_type (setq _shape_type __shape_type)) _shape_type)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:dimension
   (&rest __dimension)
   (if (keywordp (car __dimension))
       (send* _dimension __dimension)
     (progn
       (if __dimension (setq _dimension (car __dimension)))
       _dimension)))
  (:shape_uncertainty
   (&optional __shape_uncertainty)
   (if __shape_uncertainty (setq _shape_uncertainty __shape_uncertainty)) _shape_uncertainty)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; uint64 _uid
    8
    ;; float32 _confidence
    4
    ;; zzz_perception_msgs/ObjectClass _cls
    (send _cls :serialization-length)
    ;; zzz_driver_msgs/RigidBodyState _state
    (send _state :serialization-length)
    ;; zzz_driver_msgs/FrenetSerretState2D _ffstate
    (send _ffstate :serialization-length)
    ;; float32 _lane_index
    4
    ;; float32 _lane_anglediff
    4
    ;; float32 _lane_dist_left_t
    4
    ;; float32 _lane_dist_right_t
    4
    ;; float32 _lane_dist_s
    4
    ;; bool _is_static
    1
    ;; uint8 _shape_type
    1
    ;; geometry_msgs/Polygon _shape
    (send _shape :serialization-length)
    ;; zzz_perception_msgs/DimensionWithCovariance _dimension
    (send _dimension :serialization-length)
    ;; float32[] _shape_uncertainty
    (* 4    (length _shape_uncertainty)) 4
    ;; uint8 _behavior
    1
    ;; uint8 _priority
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _uid
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uid (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uid) (= (length (_uid . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uid . bv) 0) 0) s)
              (write-long (ash (elt (_uid . bv) 1) -1) s))
             ((and (class _uid) (= (length (_uid . bv)) 1)) ;; big1
              (write-long (elt (_uid . bv) 0) s)
              (write-long (if (>= _uid 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uid s)(write-long (if (>= _uid 0) 0 #xffffffff) s)))
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; zzz_perception_msgs/ObjectClass _cls
       (send _cls :serialize s)
     ;; zzz_driver_msgs/RigidBodyState _state
       (send _state :serialize s)
     ;; zzz_driver_msgs/FrenetSerretState2D _ffstate
       (send _ffstate :serialize s)
     ;; float32 _lane_index
       (sys::poke _lane_index (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lane_anglediff
       (sys::poke _lane_anglediff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lane_dist_left_t
       (sys::poke _lane_dist_left_t (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lane_dist_right_t
       (sys::poke _lane_dist_right_t (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lane_dist_s
       (sys::poke _lane_dist_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_static
       (if _is_static (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _shape_type
       (write-byte _shape_type s)
     ;; geometry_msgs/Polygon _shape
       (send _shape :serialize s)
     ;; zzz_perception_msgs/DimensionWithCovariance _dimension
       (send _dimension :serialize s)
     ;; float32[] _shape_uncertainty
     (write-long (length _shape_uncertainty) s)
     (dotimes (i (length _shape_uncertainty))
       (sys::poke (elt _shape_uncertainty i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _behavior
       (write-byte _behavior s)
     ;; uint8 _priority
       (write-byte _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _uid
     
#+(or :alpha :irix6 :x86_64)
      (setf _uid (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uid (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; zzz_perception_msgs/ObjectClass _cls
     (send _cls :deserialize buf ptr-) (incf ptr- (send _cls :serialization-length))
   ;; zzz_driver_msgs/RigidBodyState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; zzz_driver_msgs/FrenetSerretState2D _ffstate
     (send _ffstate :deserialize buf ptr-) (incf ptr- (send _ffstate :serialization-length))
   ;; float32 _lane_index
     (setq _lane_index (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lane_anglediff
     (setq _lane_anglediff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lane_dist_left_t
     (setq _lane_dist_left_t (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lane_dist_right_t
     (setq _lane_dist_right_t (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lane_dist_s
     (setq _lane_dist_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_static
     (setq _is_static (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _shape_type
     (setq _shape_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Polygon _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; zzz_perception_msgs/DimensionWithCovariance _dimension
     (send _dimension :deserialize buf ptr-) (incf ptr- (send _dimension :serialization-length))
   ;; float32[] _shape_uncertainty
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_uncertainty (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_uncertainty i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _behavior
     (setq _behavior (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zzz_cognition_msgs::RoadObstacle :md5sum-) "88c2dcf03d4744032d7b40f81015259b")
(setf (get zzz_cognition_msgs::RoadObstacle :datatype-) "zzz_cognition_msgs/RoadObstacle")
(setf (get zzz_cognition_msgs::RoadObstacle :definition-)
      "# This message contains all the information that planning needs for a road object


# Unique indentity of the obstacle
uint64 uid

# The confidence of existence, can be used to determine whether this object is valid, or invalid
# A possible way of get the confidence is by using tracking age
float32 confidence

# The best guess of obstacle type
zzz_perception_msgs/ObjectClass cls

# Estimated kinematic properties
zzz_driver_msgs/RigidBodyState state
# Kinematic properties in Frenet Frame
zzz_driver_msgs/FrenetSerretState2D ffstate

# Relationship to lane, for prediction or locating
float32 lane_index # in which lane
float32 lane_anglediff # angle difference
float32 lane_dist_left_t # distance to lane
float32 lane_dist_right_t
float32 lane_dist_s # s position in the road

# A flag to mark whether the object is static
bool is_static

# XXX: Do we need history trajectories?

# ----- Physical Boundary (Optional) -----
uint8 shape_type
uint8 SHAPE_UNDEFINED = 0
uint8 SHAPE_POLYGON = 1

# Representation of the object if it's represented by polygon
geometry_msgs/Polygon shape

# bbox, refer to BoundingBox in zzz_perception_msgs

zzz_perception_msgs/DimensionWithCovariance dimension
#uint8 dimension

# Null uncertainty of Inf uncertainty means that the shape is not actually generated
float32[] shape_uncertainty

# ----- High level behavior estimation -----

uint8 behavior
uint8 BEHAVIOR_UNKNOWN = 0
uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped
uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line
uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left
uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right

# This field is preserved to adapt to yield situation.
# Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.
# Yield means if your path conflict with the object's, you should wait for the object
# to go through the conflict point.
uint8 priority
uint8 PRIORITY_UNKNOWN = 0
uint8 PRIORITY_NORMAL = 1
uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away
uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move

================================================================================
MSG: zzz_perception_msgs/ObjectClass
# The size of (in meters) the bounding box surrounding the object's center pose.

# The unique numeric classification ID of object detected
uint32 classid

# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.
float32 score

# Other information about the class (e.g. class name). Only for debug
string comments

##############################################################
###   Here is a hierarchical table of all included types   ###
##############################################################
# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level

uint32 UNKNOWN                          = 0     # 0x0000
uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010
uint32 UNKNOWN_STATIC                   = 32    # 0x0020

uint32 VEHICLE                          = 1     # 0x0001
uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles
uint32 VEHICEL_VAN                      = 33    # 0x0021
uint32 VEHICLE_TRUCK                    = 49    # 0x0031
uint32 VEHICLE_BUS                      = 65    # 0x0041
uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141
uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141
uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including 
uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151
uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151
uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251
uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251
uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks
uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351

uint32 HUMAN                            = 2     # 0x0002
uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012
uint32 HUMAN_ROADWORKER                 = 34    # 0x0022

uint32 CYCLIST                          = 3     # 0x0003
uint32 CYCLIST_BICYCLE                  = 19    # 0x0013
uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023
uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033

uint32 ANIMAL                           = 4     # 0x0004
uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.
uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.
uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.

uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area
uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone
uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign

uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side
uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016
uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026
uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation

uint32 LEVEL_MASK_0                     = 15    # 0x000f
uint32 LEVEL_MASK_1                     = 255   # 0x00ff
uint32 LEVEL_MASK_2                     = 4095  # 0x0fff
uint32 LEVEL_MASK_3                     = 65535 # 0xffff

================================================================================
MSG: zzz_driver_msgs/RigidBodyState
# This message contains commonly used state variables of rigid body

# ID of frame fixed to the rigid body
string child_frame_id

# Location and orientatation of the object
geometry_msgs/PoseWithCovariance  pose

# Linear and angular velocity of the object
geometry_msgs/TwistWithCovariance twist

# Linear and angular acceleration of the object
geometry_msgs/AccelWithCovariance accel

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: zzz_driver_msgs/FrenetSerretState2D
# This message describes a state in 2d Frenet-Serret Frame
# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction
# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas

# 2D states
float32 s # Offset in tanget direction
float32 d # Offset in normal direction
          # we omit the offset in binormal direction
float32 psi # Heading angle in s-d plane
float32[9] pose_covariance

# First order derivatives
float32 vs
float32 vd
float32 omega
float32[9] twist_covariance

# Second order derivatives
float32 sa # prevent keyword conflict
float32 ad
float32 epsilon
float32[9] accel_covariance

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: zzz_perception_msgs/DimensionWithCovariance
# Describing the size object in 3D space (in meters) with uncertainty

float64 length_x # length(longitudinal direction)
float64 length_y # width(lateral direction)
float64 length_z # height

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (length_x, length_y, length_z)
float64[9] covariance

")



(provide :zzz_cognition_msgs/RoadObstacle "88c2dcf03d4744032d7b40f81015259b")


