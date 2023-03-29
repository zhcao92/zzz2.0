;; Auto-generated. Do not edit!


(when (boundp 'zzz_planning_msgs::DecisionTrajectory)
  (if (not (find-package "ZZZ_PLANNING_MSGS"))
    (make-package "ZZZ_PLANNING_MSGS"))
  (shadow 'DecisionTrajectory (find-package "ZZZ_PLANNING_MSGS")))
(unless (find-package "ZZZ_PLANNING_MSGS::DECISIONTRAJECTORY")
  (make-package "ZZZ_PLANNING_MSGS::DECISIONTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude DecisionTrajectory.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_planning_msgs::DecisionTrajectory
  :super ros::object
  :slots (_header _trajectory _desired_speed _desired_acc _RLS_action _x _y _z _theta _kappa _s _dkappa _ddkappa _v _a _relative_time ))

(defmethod zzz_planning_msgs::DecisionTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory __trajectory) (instance nav_msgs::Path :init))
    ((:desired_speed __desired_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:desired_acc __desired_acc) 0.0)
    ((:RLS_action __RLS_action) 0.0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z __z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:theta __theta) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kappa __kappa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:s __s) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dkappa __dkappa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ddkappa __ddkappa) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:a __a) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:relative_time __relative_time) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory __trajectory)
   (setq _desired_speed __desired_speed)
   (setq _desired_acc (float __desired_acc))
   (setq _RLS_action (float __RLS_action))
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _theta __theta)
   (setq _kappa __kappa)
   (setq _s __s)
   (setq _dkappa __dkappa)
   (setq _ddkappa __ddkappa)
   (setq _v __v)
   (setq _a __a)
   (setq _relative_time __relative_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:desired_speed
   (&optional __desired_speed)
   (if __desired_speed (setq _desired_speed __desired_speed)) _desired_speed)
  (:desired_acc
   (&optional __desired_acc)
   (if __desired_acc (setq _desired_acc __desired_acc)) _desired_acc)
  (:RLS_action
   (&optional __RLS_action)
   (if __RLS_action (setq _RLS_action __RLS_action)) _RLS_action)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:dkappa
   (&optional __dkappa)
   (if __dkappa (setq _dkappa __dkappa)) _dkappa)
  (:ddkappa
   (&optional __ddkappa)
   (if __ddkappa (setq _ddkappa __ddkappa)) _ddkappa)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:relative_time
   (&optional __relative_time)
   (if __relative_time (setq _relative_time __relative_time)) _relative_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/Path _trajectory
    (send _trajectory :serialization-length)
    ;; float32[] _desired_speed
    (* 4    (length _desired_speed)) 4
    ;; float32 _desired_acc
    4
    ;; float32 _RLS_action
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; float32[] _z
    (* 4    (length _z)) 4
    ;; float32[] _theta
    (* 4    (length _theta)) 4
    ;; float32[] _kappa
    (* 4    (length _kappa)) 4
    ;; float32[] _s
    (* 4    (length _s)) 4
    ;; float32[] _dkappa
    (* 4    (length _dkappa)) 4
    ;; float32[] _ddkappa
    (* 4    (length _ddkappa)) 4
    ;; float32[] _v
    (* 4    (length _v)) 4
    ;; float32[] _a
    (* 4    (length _a)) 4
    ;; float32[] _relative_time
    (* 4    (length _relative_time)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/Path _trajectory
       (send _trajectory :serialize s)
     ;; float32[] _desired_speed
     (write-long (length _desired_speed) s)
     (dotimes (i (length _desired_speed))
       (sys::poke (elt _desired_speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _desired_acc
       (sys::poke _desired_acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _RLS_action
       (sys::poke _RLS_action (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z
     (write-long (length _z) s)
     (dotimes (i (length _z))
       (sys::poke (elt _z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _theta
     (write-long (length _theta) s)
     (dotimes (i (length _theta))
       (sys::poke (elt _theta i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kappa
     (write-long (length _kappa) s)
     (dotimes (i (length _kappa))
       (sys::poke (elt _kappa i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _s
     (write-long (length _s) s)
     (dotimes (i (length _s))
       (sys::poke (elt _s i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _dkappa
     (write-long (length _dkappa) s)
     (dotimes (i (length _dkappa))
       (sys::poke (elt _dkappa i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ddkappa
     (write-long (length _ddkappa) s)
     (dotimes (i (length _ddkappa))
       (sys::poke (elt _ddkappa i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _a
     (write-long (length _a) s)
     (dotimes (i (length _a))
       (sys::poke (elt _a i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _relative_time
     (write-long (length _relative_time) s)
     (dotimes (i (length _relative_time))
       (sys::poke (elt _relative_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/Path _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; float32[] _desired_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desired_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desired_speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _desired_acc
     (setq _desired_acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _RLS_action
     (setq _RLS_action (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _theta
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _theta (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _theta i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kappa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kappa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kappa i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _s (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _s i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _dkappa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dkappa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dkappa i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ddkappa
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ddkappa (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ddkappa i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _a i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _relative_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relative_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _relative_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get zzz_planning_msgs::DecisionTrajectory :md5sum-) "05b7e02cfb660bc5a6c2606f9e700187")
(setf (get zzz_planning_msgs::DecisionTrajectory :datatype-) "zzz_planning_msgs/DecisionTrajectory")
(setf (get zzz_planning_msgs::DecisionTrajectory :definition-)
      "
Header header

nav_msgs/Path trajectory

float32[] desired_speed # m/s

float32 desired_acc # m^2/s

float32 RLS_action #

## coordinate xyz  m(UTM)
float32[] x 
float32[] y 
float32[] z 
## direction on the x-y plane
float32[] theta
## curvature on the x-y planning
float32[] kappa
## accumulated distance from beginning of the path
float32[] s 
## derivative of kappa w.r.t s.
float32[] dkappa
## derivative of derivative of kappa w.r.t s.
float32[] ddkappa
## linear velocity
float32[] v    ## in [m/s]
## linear acceleration
float32[] a 
## relative time from beginning of the trajectory
float32[] relative_time 


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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :zzz_planning_msgs/DecisionTrajectory "05b7e02cfb660bc5a6c2606f9e700187")


