;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::Map)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'Map (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::MAP")
  (make-package "ZZZ_NAVIGATION_MSGS::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_navigation_msgs::Map
  :super ros::object
  :slots (_header _in_junction _exit_lane_index _lanes _drivable_area _next_drivable_area _next_lanes _next_road_id ))

(defmethod zzz_navigation_msgs::Map
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:in_junction __in_junction) nil)
    ((:exit_lane_index __exit_lane_index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::Lane :init) r)) r))
    ((:drivable_area __drivable_area) (instance geometry_msgs::Polygon :init))
    ((:next_drivable_area __next_drivable_area) (instance geometry_msgs::Polygon :init))
    ((:next_lanes __next_lanes) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::Lane :init) r)) r))
    ((:next_road_id __next_road_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _in_junction __in_junction)
   (setq _exit_lane_index __exit_lane_index)
   (setq _lanes __lanes)
   (setq _drivable_area __drivable_area)
   (setq _next_drivable_area __next_drivable_area)
   (setq _next_lanes __next_lanes)
   (setq _next_road_id (round __next_road_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:in_junction
   (&optional __in_junction)
   (if __in_junction (setq _in_junction __in_junction)) _in_junction)
  (:exit_lane_index
   (&optional __exit_lane_index)
   (if __exit_lane_index (setq _exit_lane_index __exit_lane_index)) _exit_lane_index)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:drivable_area
   (&rest __drivable_area)
   (if (keywordp (car __drivable_area))
       (send* _drivable_area __drivable_area)
     (progn
       (if __drivable_area (setq _drivable_area (car __drivable_area)))
       _drivable_area)))
  (:next_drivable_area
   (&rest __next_drivable_area)
   (if (keywordp (car __next_drivable_area))
       (send* _next_drivable_area __next_drivable_area)
     (progn
       (if __next_drivable_area (setq _next_drivable_area (car __next_drivable_area)))
       _next_drivable_area)))
  (:next_lanes
   (&rest __next_lanes)
   (if (keywordp (car __next_lanes))
       (send* _next_lanes __next_lanes)
     (progn
       (if __next_lanes (setq _next_lanes (car __next_lanes)))
       _next_lanes)))
  (:next_road_id
   (&optional __next_road_id)
   (if __next_road_id (setq _next_road_id __next_road_id)) _next_road_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _in_junction
    1
    ;; int8[] _exit_lane_index
    (* 1    (length _exit_lane_index)) 4
    ;; zzz_navigation_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; geometry_msgs/Polygon _drivable_area
    (send _drivable_area :serialization-length)
    ;; geometry_msgs/Polygon _next_drivable_area
    (send _next_drivable_area :serialization-length)
    ;; zzz_navigation_msgs/Lane[] _next_lanes
    (apply #'+ (send-all _next_lanes :serialization-length)) 4
    ;; int8 _next_road_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _in_junction
       (if _in_junction (write-byte -1 s) (write-byte 0 s))
     ;; int8[] _exit_lane_index
     (write-long (length _exit_lane_index) s)
     (dotimes (i (length _exit_lane_index))
       (write-byte (elt _exit_lane_index i) s)
       )
     ;; zzz_navigation_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Polygon _drivable_area
       (send _drivable_area :serialize s)
     ;; geometry_msgs/Polygon _next_drivable_area
       (send _next_drivable_area :serialize s)
     ;; zzz_navigation_msgs/Lane[] _next_lanes
     (write-long (length _next_lanes) s)
     (dolist (elem _next_lanes)
       (send elem :serialize s)
       )
     ;; int8 _next_road_id
       (write-byte _next_road_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _in_junction
     (setq _in_junction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8[] _exit_lane_index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _exit_lane_index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _exit_lane_index i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _exit_lane_index i) 127) (setf (elt _exit_lane_index i) (- (elt _exit_lane_index i) 256)))
     ))
   ;; zzz_navigation_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Polygon _drivable_area
     (send _drivable_area :deserialize buf ptr-) (incf ptr- (send _drivable_area :serialization-length))
   ;; geometry_msgs/Polygon _next_drivable_area
     (send _next_drivable_area :deserialize buf ptr-) (incf ptr- (send _next_drivable_area :serialization-length))
   ;; zzz_navigation_msgs/Lane[] _next_lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _next_lanes (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::Lane :init) r)) r))
     (dolist (elem- _next_lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _next_road_id
     (setq _next_road_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _next_road_id 127) (setq _next_road_id (- _next_road_id 256)))
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::Map :md5sum-) "6a0ce8991715e99e47d9ef00be19691c")
(setf (get zzz_navigation_msgs::Map :datatype-) "zzz_navigation_msgs/Map")
(setf (get zzz_navigation_msgs::Map :definition-)
      "# This message describes a static local map. This map contains all essential
# information that should be generated by map provider. Generally this map is
# limited in a scope of a road section (i.e. road network edge)
# For extension, the junction shape information is provided
# For safety concerns, the next unit (i.e. edge or junction) is provided

Header header

# Whether the map is in a structured environment
bool in_junction # = True

# Target lane index at the end of the section.
int8[] exit_lane_index

# Lanes if it's in a structured road, should be sorted by ascending index
# The index is starting from right most lane, i.e. the right most lane is indexed as 0
Lane[] lanes

# Road area if in junction
geometry_msgs/Polygon drivable_area

# Next unit
geometry_msgs/Polygon next_drivable_area
Lane[] next_lanes
int8 next_road_id

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
")



(provide :zzz_navigation_msgs/Map "6a0ce8991715e99e47d9ef00be19691c")


