;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::DimensionWithCovariance)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'DimensionWithCovariance (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::DIMENSIONWITHCOVARIANCE")
  (make-package "ZZZ_PERCEPTION_MSGS::DIMENSIONWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude DimensionWithCovariance.msg.html


(defclass zzz_perception_msgs::DimensionWithCovariance
  :super ros::object
  :slots (_length_x _length_y _length_z _covariance ))

(defmethod zzz_perception_msgs::DimensionWithCovariance
  (:init
   (&key
    ((:length_x __length_x) 0.0)
    ((:length_y __length_y) 0.0)
    ((:length_z __length_z) 0.0)
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _length_x (float __length_x))
   (setq _length_y (float __length_y))
   (setq _length_z (float __length_z))
   (setq _covariance __covariance)
   self)
  (:length_x
   (&optional __length_x)
   (if __length_x (setq _length_x __length_x)) _length_x)
  (:length_y
   (&optional __length_y)
   (if __length_y (setq _length_y __length_y)) _length_y)
  (:length_z
   (&optional __length_z)
   (if __length_z (setq _length_z __length_z)) _length_z)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; float64 _length_x
    8
    ;; float64 _length_y
    8
    ;; float64 _length_z
    8
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _length_x
       (sys::poke _length_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length_y
       (sys::poke _length_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length_z
       (sys::poke _length_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _length_x
     (setq _length_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length_y
     (setq _length_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length_z
     (setq _length_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get zzz_perception_msgs::DimensionWithCovariance :md5sum-) "ee5f3d39f08623c93a6f325eab556879")
(setf (get zzz_perception_msgs::DimensionWithCovariance :datatype-) "zzz_perception_msgs/DimensionWithCovariance")
(setf (get zzz_perception_msgs::DimensionWithCovariance :definition-)
      "# Describing the size object in 3D space (in meters) with uncertainty

float64 length_x # length(longitudinal direction)
float64 length_y # width(lateral direction)
float64 length_z # height

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (length_x, length_y, length_z)
float64[9] covariance

")



(provide :zzz_perception_msgs/DimensionWithCovariance "ee5f3d39f08623c93a6f325eab556879")


