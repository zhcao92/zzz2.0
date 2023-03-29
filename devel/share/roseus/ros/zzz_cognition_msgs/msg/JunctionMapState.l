;; Auto-generated. Do not edit!


(when (boundp 'zzz_cognition_msgs::JunctionMapState)
  (if (not (find-package "ZZZ_COGNITION_MSGS"))
    (make-package "ZZZ_COGNITION_MSGS"))
  (shadow 'JunctionMapState (find-package "ZZZ_COGNITION_MSGS")))
(unless (find-package "ZZZ_COGNITION_MSGS::JUNCTIONMAPSTATE")
  (make-package "ZZZ_COGNITION_MSGS::JUNCTIONMAPSTATE"))

(in-package "ROS")
;;//! \htmlinclude JunctionMapState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass zzz_cognition_msgs::JunctionMapState
  :super ros::object
  :slots (_reference_path _drivable_area _obstacles _distance_to_lanes ))

(defmethod zzz_cognition_msgs::JunctionMapState
  (:init
   (&key
    ((:reference_path __reference_path) (instance zzz_cognition_msgs::LaneState :init))
    ((:drivable_area __drivable_area) (instance geometry_msgs::Polygon :init))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance zzz_cognition_msgs::RoadObstacle :init) r)) r))
    ((:distance_to_lanes __distance_to_lanes) 0.0)
    )
   (send-super :init)
   (setq _reference_path __reference_path)
   (setq _drivable_area __drivable_area)
   (setq _obstacles __obstacles)
   (setq _distance_to_lanes (float __distance_to_lanes))
   self)
  (:reference_path
   (&rest __reference_path)
   (if (keywordp (car __reference_path))
       (send* _reference_path __reference_path)
     (progn
       (if __reference_path (setq _reference_path (car __reference_path)))
       _reference_path)))
  (:drivable_area
   (&rest __drivable_area)
   (if (keywordp (car __drivable_area))
       (send* _drivable_area __drivable_area)
     (progn
       (if __drivable_area (setq _drivable_area (car __drivable_area)))
       _drivable_area)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:distance_to_lanes
   (&optional __distance_to_lanes)
   (if __distance_to_lanes (setq _distance_to_lanes __distance_to_lanes)) _distance_to_lanes)
  (:serialization-length
   ()
   (+
    ;; zzz_cognition_msgs/LaneState _reference_path
    (send _reference_path :serialization-length)
    ;; geometry_msgs/Polygon _drivable_area
    (send _drivable_area :serialization-length)
    ;; zzz_cognition_msgs/RoadObstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; float32 _distance_to_lanes
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zzz_cognition_msgs/LaneState _reference_path
       (send _reference_path :serialize s)
     ;; geometry_msgs/Polygon _drivable_area
       (send _drivable_area :serialize s)
     ;; zzz_cognition_msgs/RoadObstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; float32 _distance_to_lanes
       (sys::poke _distance_to_lanes (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zzz_cognition_msgs/LaneState _reference_path
     (send _reference_path :deserialize buf ptr-) (incf ptr- (send _reference_path :serialization-length))
   ;; geometry_msgs/Polygon _drivable_area
     (send _drivable_area :deserialize buf ptr-) (incf ptr- (send _drivable_area :serialization-length))
   ;; zzz_cognition_msgs/RoadObstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance zzz_cognition_msgs::RoadObstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _distance_to_lanes
     (setq _distance_to_lanes (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_cognition_msgs::JunctionMapState :md5sum-) "ba2d16e33b435f07f3b1aab80a4c95c9")
(setf (get zzz_cognition_msgs::JunctionMapState :datatype-) "zzz_cognition_msgs/JunctionMapState")
(setf (get zzz_cognition_msgs::JunctionMapState :definition-)
      "# This message describe a free-space driving model

# -------- Reference Path info ----------
LaneState reference_path

# -------- Other constaints ----------
geometry_msgs/Polygon drivable_area
RoadObstacle[] obstacles

float32 distance_to_lanes
================================================================================
MSG: zzz_cognition_msgs/LaneState
# This message represent a state of lane in dynamic map

# Static properties of the lane
zzz_navigation_msgs/Lane map_lane

# distance to lane end
float32 ego_dis_to_lane_tail # = Inf
float32 ego_dis_to_lane_head # = Inf

# the front vehicles on this lane, sorted by their distances in ascending order
# TODO: Change name to front_objects
RoadObstacle[] front_vehicles

# the rear vehicles on this lane, sorted by their distances in ascending order
# TODO: Change name to rear_objects
RoadObstacle[] rear_vehicles

================================================================================
MSG: zzz_navigation_msgs/Lane
# This message describe a lane with polyline representation

# ----- Basic properties -----
# the rightest lane is 0, reference lane is -1
# TODO: remove this field
int16 index

# Speed limit (km/h)
float32 speed_limit

# Length of the lane. Provided for easy computation
float32 length
float32 width

# Whether this lane allow two way traffic
# This can be true when the road is too narrow or in the center turning lane
bool bidirectional # = False

# The situation when lane ends. This field could be updated with dynamic info.
uint8 stop_state # = 0
uint8 STOP_STATE_UNKNOWN = 0
uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light
uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light
uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light
uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light
uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign

# ----- Central path representation -----
# The central_path_points field is used when central_path_type is waypoint.
# Otherwise, central_path_coeffs should be used
LanePoint[] central_path_points
float32[] central_path_coeffs

uint8 central_path_type # = 0
uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized
uint8 CENTRAL_PATH_LINE = 1
uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola
uint8 CENTRAL_PATH_POLYNOMIAL = 3 #
uint8 CENTRAL_PATH_BEZIER = 4

# ----- Boundary representation -----
# The boundary description of current lane.
# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder
LaneBoundary[] left_boundaries
LaneBoundary[] right_boundaries

# ----- Auxiliary information of the lane -----
# Road situations on this line. This field could be updated with dynamic info.
LaneSituation[] situations

# ---- traffic ligth position ------ 
float32[] traffic_light_pos
================================================================================
MSG: zzz_navigation_msgs/LanePoint
# This message describe a road point from polyline represented lane

# The 3D position of the lane point
geometry_msgs/Point position

# ----- Other useful information -----
# Distance from lane start to current point. The distance of the first point should be zero
float32 s

# Slope at current position of the road
# Can be used to control the throttle
float32 slope

# Road curvature at current position of the road
# Can be used to slow down before turning
float32 curvature

# The yaw angle of tangent line (in radian)
float32 tangent

# Road width at current position
# Can be used to determine the carefulness of driving
float32 width

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: zzz_navigation_msgs/LaneBoundary
# This message describe the boundary type of a part of a lane

# Lane boundary point
LanePoint boundary_point

# Boundary type from between `s` and `s` of the next section start
uint8 boundary_type
uint8 BOUNDARY_UNKNOWN = 0
uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.
uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.
uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.
uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.
uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.
uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder

# Confidence of the lane boundary classification
float32 confidence

================================================================================
MSG: zzz_navigation_msgs/LaneSituation
# This message store any uncommon situations on a road
# Situation can be a map specified object or fresh events

# The location of the situation in a lane (distance from lane start)
float32 s

# How long this situation affect along the lane.
# Inf means take effect until lane ends
float32 length

# Type of situation
uint8 situation_type
uint8 SITUATION_NOT_SPECIFIED = 0
uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here
uint8 SITUATION_CROSSWALK = 2 # Crosswalk
uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc

# ------- Situation information -------
# The new speed limit. Zero means the vehicle is required to stop
float32 reduced_max_speed

# Additional information
string comments

================================================================================
MSG: zzz_cognition_msgs/RoadObstacle
# This message contains all the information that planning needs for a road object


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



(provide :zzz_cognition_msgs/JunctionMapState "ba2d16e33b435f07f3b1aab80a4c95c9")


