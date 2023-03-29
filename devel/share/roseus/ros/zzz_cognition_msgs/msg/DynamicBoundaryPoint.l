;; Auto-generated. Do not edit!


(when (boundp 'zzz_cognition_msgs::DynamicBoundaryPoint)
  (if (not (find-package "ZZZ_COGNITION_MSGS"))
    (make-package "ZZZ_COGNITION_MSGS"))
  (shadow 'DynamicBoundaryPoint (find-package "ZZZ_COGNITION_MSGS")))
(unless (find-package "ZZZ_COGNITION_MSGS::DYNAMICBOUNDARYPOINT")
  (make-package "ZZZ_COGNITION_MSGS::DYNAMICBOUNDARYPOINT"))

(in-package "ROS")
;;//! \htmlinclude DynamicBoundaryPoint.msg.html


(defclass zzz_cognition_msgs::DynamicBoundaryPoint
  :super ros::object
  :slots (_x _y _vx _vy ))

(defmethod zzz_cognition_msgs::DynamicBoundaryPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_cognition_msgs::DynamicBoundaryPoint :md5sum-) "2af08925b9da4c99c24669eae33385e8")
(setf (get zzz_cognition_msgs::DynamicBoundaryPoint :datatype-) "zzz_cognition_msgs/DynamicBoundaryPoint")
(setf (get zzz_cognition_msgs::DynamicBoundaryPoint :definition-)
      "# This message represents a point in the dynamic boundary

float32 x
float32 y
float32 vx
float32 vy

")



(provide :zzz_cognition_msgs/DynamicBoundaryPoint "2af08925b9da4c99c24669eae33385e8")


