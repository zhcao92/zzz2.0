;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::Pose2DWithCovariance)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'Pose2DWithCovariance (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::POSE2DWITHCOVARIANCE")
  (make-package "ZZZ_PERCEPTION_MSGS::POSE2DWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude Pose2DWithCovariance.msg.html


(defclass zzz_perception_msgs::Pose2DWithCovariance
  :super ros::object
  :slots (_x _y _theta _covariance ))

(defmethod zzz_perception_msgs::Pose2DWithCovariance
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _covariance __covariance)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get zzz_perception_msgs::Pose2DWithCovariance :md5sum-) "d5a368996278e1e9cb10088f43ec5e39")
(setf (get zzz_perception_msgs::Pose2DWithCovariance :datatype-) "zzz_perception_msgs/Pose2DWithCovariance")
(setf (get zzz_perception_msgs::Pose2DWithCovariance :definition-)
      "
float64 x # or u in u-v plane
float64 y # or v in u-v plane
float64 theta

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (x, y, theta)
float64[9] covariance

")



(provide :zzz_perception_msgs/Pose2DWithCovariance "d5a368996278e1e9cb10088f43ec5e39")


