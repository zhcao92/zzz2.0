;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::Lane)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'Lane (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::LANE")
  (make-package "ZZZ_NAVIGATION_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(intern "*STOP_STATE_UNKNOWN*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_UNKNOWN* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_UNKNOWN* 0)
(intern "*STOP_STATE_THRU*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_THRU* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_THRU* 1)
(intern "*STOP_STATE_YIELD*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_YIELD* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_YIELD* 2)
(intern "*STOP_STATE_STOP*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_STOP* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_STOP* 3)
(intern "*STOP_STATE_STOP_YIELD*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_STOP_YIELD* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_STOP_YIELD* 4)
(intern "*STOP_STATE_STOP_YIELD_ALL_WAY*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*STOP_STATE_STOP_YIELD_ALL_WAY* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*STOP_STATE_STOP_YIELD_ALL_WAY* 5)
(intern "*CENTRAL_PATH_WAYPOINT*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*CENTRAL_PATH_WAYPOINT* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*CENTRAL_PATH_WAYPOINT* 0)
(intern "*CENTRAL_PATH_LINE*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*CENTRAL_PATH_LINE* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*CENTRAL_PATH_LINE* 1)
(intern "*CENTRAL_PATH_CONIC*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*CENTRAL_PATH_CONIC* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*CENTRAL_PATH_CONIC* 2)
(intern "*CENTRAL_PATH_POLYNOMIAL*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*CENTRAL_PATH_POLYNOMIAL* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*CENTRAL_PATH_POLYNOMIAL* 3)
(intern "*CENTRAL_PATH_BEZIER*" (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(shadow '*CENTRAL_PATH_BEZIER* (find-package "ZZZ_NAVIGATION_MSGS::LANE"))
(defconstant zzz_navigation_msgs::Lane::*CENTRAL_PATH_BEZIER* 4)
(defclass zzz_navigation_msgs::Lane
  :super ros::object
  :slots (_index _speed_limit _length _width _bidirectional _stop_state _central_path_points _central_path_coeffs _central_path_type _left_boundaries _right_boundaries _situations _traffic_light_pos ))

(defmethod zzz_navigation_msgs::Lane
  (:init
   (&key
    ((:index __index) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:bidirectional __bidirectional) nil)
    ((:stop_state __stop_state) 0)
    ((:central_path_points __central_path_points) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::LanePoint :init) r)) r))
    ((:central_path_coeffs __central_path_coeffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:central_path_type __central_path_type) 0)
    ((:left_boundaries __left_boundaries) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::LaneBoundary :init) r)) r))
    ((:right_boundaries __right_boundaries) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::LaneBoundary :init) r)) r))
    ((:situations __situations) (let (r) (dotimes (i 0) (push (instance zzz_navigation_msgs::LaneSituation :init) r)) r))
    ((:traffic_light_pos __traffic_light_pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _speed_limit (float __speed_limit))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _bidirectional __bidirectional)
   (setq _stop_state (round __stop_state))
   (setq _central_path_points __central_path_points)
   (setq _central_path_coeffs __central_path_coeffs)
   (setq _central_path_type (round __central_path_type))
   (setq _left_boundaries __left_boundaries)
   (setq _right_boundaries __right_boundaries)
   (setq _situations __situations)
   (setq _traffic_light_pos __traffic_light_pos)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:bidirectional
   (&optional __bidirectional)
   (if __bidirectional (setq _bidirectional __bidirectional)) _bidirectional)
  (:stop_state
   (&optional __stop_state)
   (if __stop_state (setq _stop_state __stop_state)) _stop_state)
  (:central_path_points
   (&rest __central_path_points)
   (if (keywordp (car __central_path_points))
       (send* _central_path_points __central_path_points)
     (progn
       (if __central_path_points (setq _central_path_points (car __central_path_points)))
       _central_path_points)))
  (:central_path_coeffs
   (&optional __central_path_coeffs)
   (if __central_path_coeffs (setq _central_path_coeffs __central_path_coeffs)) _central_path_coeffs)
  (:central_path_type
   (&optional __central_path_type)
   (if __central_path_type (setq _central_path_type __central_path_type)) _central_path_type)
  (:left_boundaries
   (&rest __left_boundaries)
   (if (keywordp (car __left_boundaries))
       (send* _left_boundaries __left_boundaries)
     (progn
       (if __left_boundaries (setq _left_boundaries (car __left_boundaries)))
       _left_boundaries)))
  (:right_boundaries
   (&rest __right_boundaries)
   (if (keywordp (car __right_boundaries))
       (send* _right_boundaries __right_boundaries)
     (progn
       (if __right_boundaries (setq _right_boundaries (car __right_boundaries)))
       _right_boundaries)))
  (:situations
   (&rest __situations)
   (if (keywordp (car __situations))
       (send* _situations __situations)
     (progn
       (if __situations (setq _situations (car __situations)))
       _situations)))
  (:traffic_light_pos
   (&optional __traffic_light_pos)
   (if __traffic_light_pos (setq _traffic_light_pos __traffic_light_pos)) _traffic_light_pos)
  (:serialization-length
   ()
   (+
    ;; int16 _index
    2
    ;; float32 _speed_limit
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; bool _bidirectional
    1
    ;; uint8 _stop_state
    1
    ;; zzz_navigation_msgs/LanePoint[] _central_path_points
    (apply #'+ (send-all _central_path_points :serialization-length)) 4
    ;; float32[] _central_path_coeffs
    (* 4    (length _central_path_coeffs)) 4
    ;; uint8 _central_path_type
    1
    ;; zzz_navigation_msgs/LaneBoundary[] _left_boundaries
    (apply #'+ (send-all _left_boundaries :serialization-length)) 4
    ;; zzz_navigation_msgs/LaneBoundary[] _right_boundaries
    (apply #'+ (send-all _right_boundaries :serialization-length)) 4
    ;; zzz_navigation_msgs/LaneSituation[] _situations
    (apply #'+ (send-all _situations :serialization-length)) 4
    ;; float32[] _traffic_light_pos
    (* 4    (length _traffic_light_pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _index
       (write-word _index s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _bidirectional
       (if _bidirectional (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _stop_state
       (write-byte _stop_state s)
     ;; zzz_navigation_msgs/LanePoint[] _central_path_points
     (write-long (length _central_path_points) s)
     (dolist (elem _central_path_points)
       (send elem :serialize s)
       )
     ;; float32[] _central_path_coeffs
     (write-long (length _central_path_coeffs) s)
     (dotimes (i (length _central_path_coeffs))
       (sys::poke (elt _central_path_coeffs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8 _central_path_type
       (write-byte _central_path_type s)
     ;; zzz_navigation_msgs/LaneBoundary[] _left_boundaries
     (write-long (length _left_boundaries) s)
     (dolist (elem _left_boundaries)
       (send elem :serialize s)
       )
     ;; zzz_navigation_msgs/LaneBoundary[] _right_boundaries
     (write-long (length _right_boundaries) s)
     (dolist (elem _right_boundaries)
       (send elem :serialize s)
       )
     ;; zzz_navigation_msgs/LaneSituation[] _situations
     (write-long (length _situations) s)
     (dolist (elem _situations)
       (send elem :serialize s)
       )
     ;; float32[] _traffic_light_pos
     (write-long (length _traffic_light_pos) s)
     (dotimes (i (length _traffic_light_pos))
       (sys::poke (elt _traffic_light_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _bidirectional
     (setq _bidirectional (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _stop_state
     (setq _stop_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; zzz_navigation_msgs/LanePoint[] _central_path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _central_path_points (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::LanePoint :init) r)) r))
     (dolist (elem- _central_path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _central_path_coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _central_path_coeffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _central_path_coeffs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8 _central_path_type
     (setq _central_path_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; zzz_navigation_msgs/LaneBoundary[] _left_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_boundaries (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::LaneBoundary :init) r)) r))
     (dolist (elem- _left_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; zzz_navigation_msgs/LaneBoundary[] _right_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_boundaries (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::LaneBoundary :init) r)) r))
     (dolist (elem- _right_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; zzz_navigation_msgs/LaneSituation[] _situations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _situations (let (r) (dotimes (i n) (push (instance zzz_navigation_msgs::LaneSituation :init) r)) r))
     (dolist (elem- _situations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _traffic_light_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _traffic_light_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::Lane :md5sum-) "5cbd728e4b6ec4ecaad9c99fca2ccf56")
(setf (get zzz_navigation_msgs::Lane :datatype-) "zzz_navigation_msgs/Lane")
(setf (get zzz_navigation_msgs::Lane :definition-)
      "# This message describe a lane with polyline representation

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

")



(provide :zzz_navigation_msgs/Lane "5cbd728e4b6ec4ecaad9c99fca2ccf56")


