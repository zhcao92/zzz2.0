;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::RigidBodyStateStamped)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'RigidBodyStateStamped (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::RIGIDBODYSTATESTAMPED")
  (make-package "ZZZ_DRIVER_MSGS::RIGIDBODYSTATESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude RigidBodyStateStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_driver_msgs::RigidBodyStateStamped
  :super ros::object
  :slots (_header _state ))

(defmethod zzz_driver_msgs::RigidBodyStateStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance zzz_driver_msgs::RigidBodyState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; zzz_driver_msgs/RigidBodyState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; zzz_driver_msgs/RigidBodyState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; zzz_driver_msgs/RigidBodyState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get zzz_driver_msgs::RigidBodyStateStamped :md5sum-) "3ce82e0047669e82456465abb8d64149")
(setf (get zzz_driver_msgs::RigidBodyStateStamped :datatype-) "zzz_driver_msgs/RigidBodyStateStamped")
(setf (get zzz_driver_msgs::RigidBodyStateStamped :definition-)
      "# Stamped version of RigidBodyState

Header header
RigidBodyState state

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

")



(provide :zzz_driver_msgs/RigidBodyStateStamped "3ce82e0047669e82456465abb8d64149")


