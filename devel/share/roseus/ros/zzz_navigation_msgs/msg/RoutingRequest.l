;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::RoutingRequest)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'RoutingRequest (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::ROUTINGREQUEST")
  (make-package "ZZZ_NAVIGATION_MSGS::ROUTINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude RoutingRequest.msg.html


(defclass zzz_navigation_msgs::RoutingRequest
  :super ros::object
  :slots (_x _y ))

(defmethod zzz_navigation_msgs::RoutingRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::RoutingRequest :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get zzz_navigation_msgs::RoutingRequest :datatype-) "zzz_navigation_msgs/RoutingRequest")
(setf (get zzz_navigation_msgs::RoutingRequest :definition-)
      "# This message represent request for routing.

float32 x
float32 y

")



(provide :zzz_navigation_msgs/RoutingRequest "ff8d7d66dd3e4b731ef14a45d38888b6")


