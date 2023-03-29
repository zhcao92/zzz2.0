;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::LanePoint)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'LanePoint (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::LANEPOINT")
  (make-package "ZZZ_NAVIGATION_MSGS::LANEPOINT"))

(in-package "ROS")
;;//! \htmlinclude LanePoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass zzz_navigation_msgs::LanePoint
  :super ros::object
  :slots (_position _s _slope _curvature _tangent _width ))

(defmethod zzz_navigation_msgs::LanePoint
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:s __s) 0.0)
    ((:slope __slope) 0.0)
    ((:curvature __curvature) 0.0)
    ((:tangent __tangent) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _s (float __s))
   (setq _slope (float __slope))
   (setq _curvature (float __curvature))
   (setq _tangent (float __tangent))
   (setq _width (float __width))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:slope
   (&optional __slope)
   (if __slope (setq _slope __slope)) _slope)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:tangent
   (&optional __tangent)
   (if __tangent (setq _tangent __tangent)) _tangent)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _s
    4
    ;; float32 _slope
    4
    ;; float32 _curvature
    4
    ;; float32 _tangent
    4
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slope
       (sys::poke _slope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tangent
       (sys::poke _tangent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slope
     (setq _slope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tangent
     (setq _tangent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::LanePoint :md5sum-) "ad50465050a73449457070f73ee72c69")
(setf (get zzz_navigation_msgs::LanePoint :datatype-) "zzz_navigation_msgs/LanePoint")
(setf (get zzz_navigation_msgs::LanePoint :definition-)
      "# This message describe a road point from polyline represented lane

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



(provide :zzz_navigation_msgs/LanePoint "ad50465050a73449457070f73ee72c69")


