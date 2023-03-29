;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::BoundingBox)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'BoundingBox (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::BOUNDINGBOX")
  (make-package "ZZZ_PERCEPTION_MSGS::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass zzz_perception_msgs::BoundingBox
  :super ros::object
  :slots (_pose _dimension ))

(defmethod zzz_perception_msgs::BoundingBox
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:dimension __dimension) (instance zzz_perception_msgs::DimensionWithCovariance :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _dimension __dimension)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:dimension
   (&rest __dimension)
   (if (keywordp (car __dimension))
       (send* _dimension __dimension)
     (progn
       (if __dimension (setq _dimension (car __dimension)))
       _dimension)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; zzz_perception_msgs/DimensionWithCovariance _dimension
    (send _dimension :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; zzz_perception_msgs/DimensionWithCovariance _dimension
       (send _dimension :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; zzz_perception_msgs/DimensionWithCovariance _dimension
     (send _dimension :deserialize buf ptr-) (incf ptr- (send _dimension :serialization-length))
   ;;
   self)
  )

(setf (get zzz_perception_msgs::BoundingBox :md5sum-) "b86d93b46fb62aa8e76866d776c9de52")
(setf (get zzz_perception_msgs::BoundingBox :datatype-) "zzz_perception_msgs/BoundingBox")
(setf (get zzz_perception_msgs::BoundingBox :definition-)
      "
# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters

# The position and orientation of the rigid body center
geometry_msgs/PoseWithCovariance pose

# The size of (in meters) the bounding box surrounding the object's center pose.
DimensionWithCovariance dimension
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
MSG: zzz_perception_msgs/DimensionWithCovariance
# Describing the size object in 3D space (in meters) with uncertainty

float64 length_x # length(longitudinal direction)
float64 length_y # width(lateral direction)
float64 length_z # height

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (length_x, length_y, length_z)
float64[9] covariance

")



(provide :zzz_perception_msgs/BoundingBox "b86d93b46fb62aa8e76866d776c9de52")


