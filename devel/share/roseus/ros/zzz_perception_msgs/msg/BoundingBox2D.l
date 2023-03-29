;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::BoundingBox2D)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'BoundingBox2D (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::BOUNDINGBOX2D")
  (make-package "ZZZ_PERCEPTION_MSGS::BOUNDINGBOX2D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2D.msg.html


(defclass zzz_perception_msgs::BoundingBox2D
  :super ros::object
  :slots (_pose _dimension ))

(defmethod zzz_perception_msgs::BoundingBox2D
  (:init
   (&key
    ((:pose __pose) (instance zzz_perception_msgs::Pose2DWithCovariance :init))
    ((:dimension __dimension) (instance zzz_perception_msgs::Dimension2DWithCovariance :init))
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
    ;; zzz_perception_msgs/Pose2DWithCovariance _pose
    (send _pose :serialization-length)
    ;; zzz_perception_msgs/Dimension2DWithCovariance _dimension
    (send _dimension :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zzz_perception_msgs/Pose2DWithCovariance _pose
       (send _pose :serialize s)
     ;; zzz_perception_msgs/Dimension2DWithCovariance _dimension
       (send _dimension :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zzz_perception_msgs/Pose2DWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; zzz_perception_msgs/Dimension2DWithCovariance _dimension
     (send _dimension :deserialize buf ptr-) (incf ptr- (send _dimension :serialization-length))
   ;;
   self)
  )

(setf (get zzz_perception_msgs::BoundingBox2D :md5sum-) "ee985124803fe8633995d77cdc7fb361")
(setf (get zzz_perception_msgs::BoundingBox2D :datatype-) "zzz_perception_msgs/BoundingBox2D")
(setf (get zzz_perception_msgs::BoundingBox2D :definition-)
      "# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point

# The position and orientation of the rigid body center
Pose2DWithCovariance pose

# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.
Dimension2DWithCovariance dimension

================================================================================
MSG: zzz_perception_msgs/Pose2DWithCovariance

float64 x # or u in u-v plane
float64 y # or v in u-v plane
float64 theta

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (x, y, theta)
float64[9] covariance

================================================================================
MSG: zzz_perception_msgs/Dimension2DWithCovariance
# Describing the size object in 2D space (in pixels) with uncertainty

float64 length_x # width
float64 length_y # length

# Row-major representation of the 2x2 covariance matrix
# In order, the parameters are: (length_x, length_y)
float64[4] covariance

")



(provide :zzz_perception_msgs/BoundingBox2D "ee985124803fe8633995d77cdc7fb361")


