;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::Dimension2DWithCovariance)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'Dimension2DWithCovariance (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::DIMENSION2DWITHCOVARIANCE")
  (make-package "ZZZ_PERCEPTION_MSGS::DIMENSION2DWITHCOVARIANCE"))

(in-package "ROS")
;;//! \htmlinclude Dimension2DWithCovariance.msg.html


(defclass zzz_perception_msgs::Dimension2DWithCovariance
  :super ros::object
  :slots (_length_x _length_y _covariance ))

(defmethod zzz_perception_msgs::Dimension2DWithCovariance
  (:init
   (&key
    ((:length_x __length_x) 0.0)
    ((:length_y __length_y) 0.0)
    ((:covariance __covariance) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _length_x (float __length_x))
   (setq _length_y (float __length_y))
   (setq _covariance __covariance)
   self)
  (:length_x
   (&optional __length_x)
   (if __length_x (setq _length_x __length_x)) _length_x)
  (:length_y
   (&optional __length_y)
   (if __length_y (setq _length_y __length_y)) _length_y)
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
    ;; float64[4] _covariance
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _length_x
       (sys::poke _length_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length_y
       (sys::poke _length_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[4] _covariance
     (dotimes (i 4)
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
   ;; float64[4] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get zzz_perception_msgs::Dimension2DWithCovariance :md5sum-) "eb80ebcc0a2ef8d1a26d96f37247983a")
(setf (get zzz_perception_msgs::Dimension2DWithCovariance :datatype-) "zzz_perception_msgs/Dimension2DWithCovariance")
(setf (get zzz_perception_msgs::Dimension2DWithCovariance :definition-)
      "# Describing the size object in 2D space (in pixels) with uncertainty

float64 length_x # width
float64 length_y # length

# Row-major representation of the 2x2 covariance matrix
# In order, the parameters are: (length_x, length_y)
float64[4] covariance

")



(provide :zzz_perception_msgs/Dimension2DWithCovariance "eb80ebcc0a2ef8d1a26d96f37247983a")


