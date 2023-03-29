;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::LaneDetection)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'LaneDetection (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::LANEDETECTION")
  (make-package "ZZZ_PERCEPTION_MSGS::LANEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude LaneDetection.msg.html


(defclass zzz_perception_msgs::LaneDetection
  :super ros::object
  :slots (_center_line_coeffs _end_location ))

(defmethod zzz_perception_msgs::LaneDetection
  (:init
   (&key
    ((:center_line_coeffs __center_line_coeffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_location __end_location) 0.0)
    )
   (send-super :init)
   (setq _center_line_coeffs __center_line_coeffs)
   (setq _end_location (float __end_location))
   self)
  (:center_line_coeffs
   (&optional __center_line_coeffs)
   (if __center_line_coeffs (setq _center_line_coeffs __center_line_coeffs)) _center_line_coeffs)
  (:end_location
   (&optional __end_location)
   (if __end_location (setq _end_location __end_location)) _end_location)
  (:serialization-length
   ()
   (+
    ;; float32[] _center_line_coeffs
    (* 4    (length _center_line_coeffs)) 4
    ;; float32 _end_location
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _center_line_coeffs
     (write-long (length _center_line_coeffs) s)
     (dotimes (i (length _center_line_coeffs))
       (sys::poke (elt _center_line_coeffs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _end_location
       (sys::poke _end_location (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _center_line_coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_line_coeffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center_line_coeffs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _end_location
     (setq _end_location (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_perception_msgs::LaneDetection :md5sum-) "344c276f64db9a8b75d28e79a5fc0818")
(setf (get zzz_perception_msgs::LaneDetection :datatype-) "zzz_perception_msgs/LaneDetection")
(setf (get zzz_perception_msgs::LaneDetection :definition-)
      "# Geometric representation of center line of the lane
float32[] center_line_coeffs

# The location at the end of the line
float32 end_location

")



(provide :zzz_perception_msgs/LaneDetection "344c276f64db9a8b75d28e79a5fc0818")


