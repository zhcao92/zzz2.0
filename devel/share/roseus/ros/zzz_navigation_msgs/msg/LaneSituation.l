;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::LaneSituation)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'LaneSituation (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION")
  (make-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))

(in-package "ROS")
;;//! \htmlinclude LaneSituation.msg.html


(intern "*SITUATION_NOT_SPECIFIED*" (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(shadow '*SITUATION_NOT_SPECIFIED* (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(defconstant zzz_navigation_msgs::LaneSituation::*SITUATION_NOT_SPECIFIED* 0)
(intern "*SITUATION_BLOCKED*" (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(shadow '*SITUATION_BLOCKED* (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(defconstant zzz_navigation_msgs::LaneSituation::*SITUATION_BLOCKED* 1)
(intern "*SITUATION_CROSSWALK*" (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(shadow '*SITUATION_CROSSWALK* (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(defconstant zzz_navigation_msgs::LaneSituation::*SITUATION_CROSSWALK* 2)
(intern "*SITUATION_REDUCE_SPEED*" (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(shadow '*SITUATION_REDUCE_SPEED* (find-package "ZZZ_NAVIGATION_MSGS::LANESITUATION"))
(defconstant zzz_navigation_msgs::LaneSituation::*SITUATION_REDUCE_SPEED* 3)
(defclass zzz_navigation_msgs::LaneSituation
  :super ros::object
  :slots (_s _length _situation_type _reduced_max_speed _comments ))

(defmethod zzz_navigation_msgs::LaneSituation
  (:init
   (&key
    ((:s __s) 0.0)
    ((:length __length) 0.0)
    ((:situation_type __situation_type) 0)
    ((:reduced_max_speed __reduced_max_speed) 0.0)
    ((:comments __comments) "")
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _length (float __length))
   (setq _situation_type (round __situation_type))
   (setq _reduced_max_speed (float __reduced_max_speed))
   (setq _comments (string __comments))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:situation_type
   (&optional __situation_type)
   (if __situation_type (setq _situation_type __situation_type)) _situation_type)
  (:reduced_max_speed
   (&optional __reduced_max_speed)
   (if __reduced_max_speed (setq _reduced_max_speed __reduced_max_speed)) _reduced_max_speed)
  (:comments
   (&optional __comments)
   (if __comments (setq _comments __comments)) _comments)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ;; float32 _length
    4
    ;; uint8 _situation_type
    1
    ;; float32 _reduced_max_speed
    4
    ;; string _comments
    4 (length _comments)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _situation_type
       (write-byte _situation_type s)
     ;; float32 _reduced_max_speed
       (sys::poke _reduced_max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _comments
       (write-long (length _comments) s) (princ _comments s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _situation_type
     (setq _situation_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _reduced_max_speed
     (setq _reduced_max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _comments
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comments (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::LaneSituation :md5sum-) "0d4a4be92b4d0a3851a0b3bbd6d00866")
(setf (get zzz_navigation_msgs::LaneSituation :datatype-) "zzz_navigation_msgs/LaneSituation")
(setf (get zzz_navigation_msgs::LaneSituation :definition-)
      "# This message store any uncommon situations on a road
# Situation can be a map specified object or fresh events

# The location of the situation in a lane (distance from lane start)
float32 s

# How long this situation affect along the lane.
# Inf means take effect until lane ends
float32 length

# Type of situation
uint8 situation_type
uint8 SITUATION_NOT_SPECIFIED = 0
uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here
uint8 SITUATION_CROSSWALK = 2 # Crosswalk
uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc

# ------- Situation information -------
# The new speed limit. Zero means the vehicle is required to stop
float32 reduced_max_speed

# Additional information
string comments

")



(provide :zzz_navigation_msgs/LaneSituation "0d4a4be92b4d0a3851a0b3bbd6d00866")


