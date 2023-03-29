;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::LaneBoundary)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'LaneBoundary (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY")
  (make-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundary.msg.html


(intern "*BOUNDARY_UNKNOWN*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_UNKNOWN* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_UNKNOWN* 0)
(intern "*BOUNDARY_DASHED_WHITE*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_DASHED_WHITE* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_DASHED_WHITE* 1)
(intern "*BOUNDARY_DASHED_YELLOW*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_DASHED_YELLOW* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_DASHED_YELLOW* 2)
(intern "*BOUNDARY_SOLID_WHITE*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_SOLID_WHITE* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_SOLID_WHITE* 3)
(intern "*BOUNDARY_SOLID_YELLOW*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_SOLID_YELLOW* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_SOLID_YELLOW* 4)
(intern "*BOUNDARY_SOLID_YELLOW_TURN*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_SOLID_YELLOW_TURN* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_SOLID_YELLOW_TURN* 5)
(intern "*BOUNDARY_CURB*" (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(shadow '*BOUNDARY_CURB* (find-package "ZZZ_NAVIGATION_MSGS::LANEBOUNDARY"))
(defconstant zzz_navigation_msgs::LaneBoundary::*BOUNDARY_CURB* 6)
(defclass zzz_navigation_msgs::LaneBoundary
  :super ros::object
  :slots (_boundary_point _boundary_type _confidence ))

(defmethod zzz_navigation_msgs::LaneBoundary
  (:init
   (&key
    ((:boundary_point __boundary_point) (instance zzz_navigation_msgs::LanePoint :init))
    ((:boundary_type __boundary_type) 0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _boundary_point __boundary_point)
   (setq _boundary_type (round __boundary_type))
   (setq _confidence (float __confidence))
   self)
  (:boundary_point
   (&rest __boundary_point)
   (if (keywordp (car __boundary_point))
       (send* _boundary_point __boundary_point)
     (progn
       (if __boundary_point (setq _boundary_point (car __boundary_point)))
       _boundary_point)))
  (:boundary_type
   (&optional __boundary_type)
   (if __boundary_type (setq _boundary_type __boundary_type)) _boundary_type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; zzz_navigation_msgs/LanePoint _boundary_point
    (send _boundary_point :serialization-length)
    ;; uint8 _boundary_type
    1
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zzz_navigation_msgs/LanePoint _boundary_point
       (send _boundary_point :serialize s)
     ;; uint8 _boundary_type
       (write-byte _boundary_type s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zzz_navigation_msgs/LanePoint _boundary_point
     (send _boundary_point :deserialize buf ptr-) (incf ptr- (send _boundary_point :serialization-length))
   ;; uint8 _boundary_type
     (setq _boundary_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::LaneBoundary :md5sum-) "fa651533f9c7508c5cea4c2a98d9e055")
(setf (get zzz_navigation_msgs::LaneBoundary :datatype-) "zzz_navigation_msgs/LaneBoundary")
(setf (get zzz_navigation_msgs::LaneBoundary :definition-)
      "# This message describe the boundary type of a part of a lane

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

")



(provide :zzz_navigation_msgs/LaneBoundary "fa651533f9c7508c5cea4c2a98d9e055")


