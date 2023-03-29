;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::ObjectSignals)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'ObjectSignals (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS")
  (make-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))

(in-package "ROS")
;;//! \htmlinclude ObjectSignals.msg.html


(intern "*UNKNOWN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*UNKNOWN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*UNKNOWN* 0)
(intern "*NONE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*NONE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*NONE* 16)
(intern "*VEHICLE_SIGNAL*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL* 1)
(intern "*VEHICLE_SIGNAL_LEFT_TURN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_LEFT_TURN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_LEFT_TURN* 17)
(intern "*VEHICLE_SIGNAL_RIGHT_TURN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_RIGHT_TURN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_RIGHT_TURN* 33)
(intern "*VEHICLE_SIGNAL_HAZARD*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_HAZARD* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_HAZARD* 49)
(intern "*VEHICLE_SIGNAL_BRAKE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_BRAKE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_BRAKE* 65)
(intern "*VEHICLE_SIGNAL_REVERSE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_REVERSE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_REVERSE* 81)
(intern "*VEHICLE_SIGNAL_SPEED_30_LIMIT*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*VEHICLE_SIGNAL_SPEED_30_LIMIT* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*VEHICLE_SIGNAL_SPEED_30_LIMIT* 97)
(intern "*TRAFFIC_LIGHT*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT* 2)
(intern "*TRAFFIC_LIGHT_RED*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT_RED* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT_RED* 18)
(intern "*TRAFFIC_LIGHT_YELLOW*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT_YELLOW* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT_YELLOW* 34)
(intern "*TRAFFIC_LIGHT_GREEN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT_GREEN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT_GREEN* 50)
(intern "*TRAFFIC_LIGHT_GREEN_LEFT_TURN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT_GREEN_LEFT_TURN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT_GREEN_LEFT_TURN* 66)
(intern "*TRAFFIC_LIGHT_GREEN_RIGHT_TURN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(shadow '*TRAFFIC_LIGHT_GREEN_RIGHT_TURN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTSIGNALS"))
(defconstant zzz_perception_msgs::ObjectSignals::*TRAFFIC_LIGHT_GREEN_RIGHT_TURN* 66)
(defclass zzz_perception_msgs::ObjectSignals
  :super ros::object
  :slots (_flags _score ))

(defmethod zzz_perception_msgs::ObjectSignals
  (:init
   (&key
    ((:flags __flags) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _flags (round __flags))
   (setq _score (float __score))
   self)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint16 _flags
    2
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _flags
       (write-word _flags s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _flags
     (setq _flags (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_perception_msgs::ObjectSignals :md5sum-) "a7911e45a2280b3764131391e149fc54")
(setf (get zzz_perception_msgs::ObjectSignals :datatype-) "zzz_perception_msgs/ObjectSignals")
(setf (get zzz_perception_msgs::ObjectSignals :definition-)
      "# This message is used to represent detected vehicle light signals or human hand signals

# Signal flags. Multiple signal emission can exists in the same time.
uint16 flags

uint16 UNKNOWN                          = 0     # 0x00
uint16 NONE                             = 16    # 0x10

# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting
uint16 VEHICLE_SIGNAL                   = 1     # 0x01
uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11
uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21
uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31
uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41
uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51
uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61

# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects
uint16 TRAFFIC_LIGHT                    = 2     # 0x02
uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12
uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22
uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32
uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42
uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42

# Confidence of the signal detection
float32 score

")



(provide :zzz_perception_msgs/ObjectSignals "a7911e45a2280b3764131391e149fc54")


