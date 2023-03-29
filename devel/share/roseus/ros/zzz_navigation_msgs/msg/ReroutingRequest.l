;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::ReroutingRequest)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'ReroutingRequest (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::REROUTINGREQUEST")
  (make-package "ZZZ_NAVIGATION_MSGS::REROUTINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude ReroutingRequest.msg.html


(defclass zzz_navigation_msgs::ReroutingRequest
  :super ros::object
  :slots (_reason ))

(defmethod zzz_navigation_msgs::ReroutingRequest
  (:init
   (&key
    ((:reason __reason) 0)
    )
   (send-super :init)
   (setq _reason (round __reason))
   self)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; uint8 _reason
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _reason
       (write-byte _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _reason
     (setq _reason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::ReroutingRequest :md5sum-) "2d0cd4d064c4100824cd84b5a5934c3d")
(setf (get zzz_navigation_msgs::ReroutingRequest :datatype-) "zzz_navigation_msgs/ReroutingRequest")
(setf (get zzz_navigation_msgs::ReroutingRequest :definition-)
      "# This message represent request for rerouting.

# The reason for rerouting request
uint8 reason

# The destination for the rerouting request
# sensor_msgs/NavSatFix destination

")



(provide :zzz_navigation_msgs/ReroutingRequest "2d0cd4d064c4100824cd84b5a5934c3d")


