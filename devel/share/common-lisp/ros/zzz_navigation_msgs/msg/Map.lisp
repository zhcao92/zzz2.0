; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude Map.msg.html

(cl:defclass <Map> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (in_junction
    :reader in_junction
    :initarg :in_junction
    :type cl:boolean
    :initform cl:nil)
   (exit_lane_index
    :reader exit_lane_index
    :initarg :exit_lane_index
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector zzz_navigation_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:Lane :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:Lane)))
   (drivable_area
    :reader drivable_area
    :initarg :drivable_area
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (next_drivable_area
    :reader next_drivable_area
    :initarg :next_drivable_area
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon))
   (next_lanes
    :reader next_lanes
    :initarg :next_lanes
    :type (cl:vector zzz_navigation_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:Lane :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:Lane)))
   (next_road_id
    :reader next_road_id
    :initarg :next_road_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Map (<Map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<Map> is deprecated: use zzz_navigation_msgs-msg:Map instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:header-val is deprecated.  Use zzz_navigation_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'in_junction-val :lambda-list '(m))
(cl:defmethod in_junction-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:in_junction-val is deprecated.  Use zzz_navigation_msgs-msg:in_junction instead.")
  (in_junction m))

(cl:ensure-generic-function 'exit_lane_index-val :lambda-list '(m))
(cl:defmethod exit_lane_index-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:exit_lane_index-val is deprecated.  Use zzz_navigation_msgs-msg:exit_lane_index instead.")
  (exit_lane_index m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:lanes-val is deprecated.  Use zzz_navigation_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'drivable_area-val :lambda-list '(m))
(cl:defmethod drivable_area-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:drivable_area-val is deprecated.  Use zzz_navigation_msgs-msg:drivable_area instead.")
  (drivable_area m))

(cl:ensure-generic-function 'next_drivable_area-val :lambda-list '(m))
(cl:defmethod next_drivable_area-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:next_drivable_area-val is deprecated.  Use zzz_navigation_msgs-msg:next_drivable_area instead.")
  (next_drivable_area m))

(cl:ensure-generic-function 'next_lanes-val :lambda-list '(m))
(cl:defmethod next_lanes-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:next_lanes-val is deprecated.  Use zzz_navigation_msgs-msg:next_lanes instead.")
  (next_lanes m))

(cl:ensure-generic-function 'next_road_id-val :lambda-list '(m))
(cl:defmethod next_road_id-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:next_road_id-val is deprecated.  Use zzz_navigation_msgs-msg:next_road_id instead.")
  (next_road_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Map>) ostream)
  "Serializes a message object of type '<Map>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_junction) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'exit_lane_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'exit_lane_index))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drivable_area) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_drivable_area) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'next_lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'next_lanes))
  (cl:let* ((signed (cl:slot-value msg 'next_road_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Map>) istream)
  "Deserializes a message object of type '<Map>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'in_junction) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'exit_lane_index) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'exit_lane_index)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drivable_area) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_drivable_area) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'next_lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'next_lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_road_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Map>)))
  "Returns string type for a message object of type '<Map>"
  "zzz_navigation_msgs/Map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map)))
  "Returns string type for a message object of type 'Map"
  "zzz_navigation_msgs/Map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Map>)))
  "Returns md5sum for a message object of type '<Map>"
  "6a0ce8991715e99e47d9ef00be19691c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Map)))
  "Returns md5sum for a message object of type 'Map"
  "6a0ce8991715e99e47d9ef00be19691c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Map>)))
  "Returns full string definition for message of type '<Map>"
  (cl:format cl:nil "# This message describes a static local map. This map contains all essential~%# information that should be generated by map provider. Generally this map is~%# limited in a scope of a road section (i.e. road network edge)~%# For extension, the junction shape information is provided~%# For safety concerns, the next unit (i.e. edge or junction) is provided~%~%Header header~%~%# Whether the map is in a structured environment~%bool in_junction # = True~%~%# Target lane index at the end of the section.~%int8[] exit_lane_index~%~%# Lanes if it's in a structured road, should be sorted by ascending index~%# The index is starting from right most lane, i.e. the right most lane is indexed as 0~%Lane[] lanes~%~%# Road area if in junction~%geometry_msgs/Polygon drivable_area~%~%# Next unit~%geometry_msgs/Polygon next_drivable_area~%Lane[] next_lanes~%int8 next_road_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_navigation_msgs/Lane~%# This message describe a lane with polyline representation~%~%# ----- Basic properties -----~%# the rightest lane is 0, reference lane is -1~%# TODO: remove this field~%int16 index~%~%# Speed limit (km/h)~%float32 speed_limit~%~%# Length of the lane. Provided for easy computation~%float32 length~%float32 width~%~%# Whether this lane allow two way traffic~%# This can be true when the road is too narrow or in the center turning lane~%bool bidirectional # = False~%~%# The situation when lane ends. This field could be updated with dynamic info.~%uint8 stop_state # = 0~%uint8 STOP_STATE_UNKNOWN = 0~%uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light~%uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light~%uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light~%uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light~%uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign~%~%# ----- Central path representation -----~%# The central_path_points field is used when central_path_type is waypoint.~%# Otherwise, central_path_coeffs should be used~%LanePoint[] central_path_points~%float32[] central_path_coeffs~%~%uint8 central_path_type # = 0~%uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized~%uint8 CENTRAL_PATH_LINE = 1~%uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola~%uint8 CENTRAL_PATH_POLYNOMIAL = 3 #~%uint8 CENTRAL_PATH_BEZIER = 4~%~%# ----- Boundary representation -----~%# The boundary description of current lane.~%# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder~%LaneBoundary[] left_boundaries~%LaneBoundary[] right_boundaries~%~%# ----- Auxiliary information of the lane -----~%# Road situations on this line. This field could be updated with dynamic info.~%LaneSituation[] situations~%~%# ---- traffic ligth position ------ ~%float32[] traffic_light_pos~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneBoundary~%# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneSituation~%# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Map)))
  "Returns full string definition for message of type 'Map"
  (cl:format cl:nil "# This message describes a static local map. This map contains all essential~%# information that should be generated by map provider. Generally this map is~%# limited in a scope of a road section (i.e. road network edge)~%# For extension, the junction shape information is provided~%# For safety concerns, the next unit (i.e. edge or junction) is provided~%~%Header header~%~%# Whether the map is in a structured environment~%bool in_junction # = True~%~%# Target lane index at the end of the section.~%int8[] exit_lane_index~%~%# Lanes if it's in a structured road, should be sorted by ascending index~%# The index is starting from right most lane, i.e. the right most lane is indexed as 0~%Lane[] lanes~%~%# Road area if in junction~%geometry_msgs/Polygon drivable_area~%~%# Next unit~%geometry_msgs/Polygon next_drivable_area~%Lane[] next_lanes~%int8 next_road_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_navigation_msgs/Lane~%# This message describe a lane with polyline representation~%~%# ----- Basic properties -----~%# the rightest lane is 0, reference lane is -1~%# TODO: remove this field~%int16 index~%~%# Speed limit (km/h)~%float32 speed_limit~%~%# Length of the lane. Provided for easy computation~%float32 length~%float32 width~%~%# Whether this lane allow two way traffic~%# This can be true when the road is too narrow or in the center turning lane~%bool bidirectional # = False~%~%# The situation when lane ends. This field could be updated with dynamic info.~%uint8 stop_state # = 0~%uint8 STOP_STATE_UNKNOWN = 0~%uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light~%uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light~%uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light~%uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light~%uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign~%~%# ----- Central path representation -----~%# The central_path_points field is used when central_path_type is waypoint.~%# Otherwise, central_path_coeffs should be used~%LanePoint[] central_path_points~%float32[] central_path_coeffs~%~%uint8 central_path_type # = 0~%uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized~%uint8 CENTRAL_PATH_LINE = 1~%uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola~%uint8 CENTRAL_PATH_POLYNOMIAL = 3 #~%uint8 CENTRAL_PATH_BEZIER = 4~%~%# ----- Boundary representation -----~%# The boundary description of current lane.~%# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder~%LaneBoundary[] left_boundaries~%LaneBoundary[] right_boundaries~%~%# ----- Auxiliary information of the lane -----~%# Road situations on this line. This field could be updated with dynamic info.~%LaneSituation[] situations~%~%# ---- traffic ligth position ------ ~%float32[] traffic_light_pos~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneBoundary~%# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneSituation~%# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Map>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'exit_lane_index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drivable_area))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_drivable_area))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'next_lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Map>))
  "Converts a ROS message object to a list"
  (cl:list 'Map
    (cl:cons ':header (header msg))
    (cl:cons ':in_junction (in_junction msg))
    (cl:cons ':exit_lane_index (exit_lane_index msg))
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':drivable_area (drivable_area msg))
    (cl:cons ':next_drivable_area (next_drivable_area msg))
    (cl:cons ':next_lanes (next_lanes msg))
    (cl:cons ':next_road_id (next_road_id msg))
))
