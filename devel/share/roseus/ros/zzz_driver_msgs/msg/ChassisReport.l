;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::ChassisReport)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'ChassisReport (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::CHASSISREPORT")
  (make-package "ZZZ_DRIVER_MSGS::CHASSISREPORT"))

(in-package "ROS")
;;//! \htmlinclude ChassisReport.msg.html


(defclass zzz_driver_msgs::ChassisReport
  :super ros::object
  :slots (_speed _wheel_speed_fl _wheel_speed_fr _wheel_speed_rl _wheel_speed_rr ))

(defmethod zzz_driver_msgs::ChassisReport
  (:init
   (&key
    ((:speed __speed) 0.0)
    ((:wheel_speed_fl __wheel_speed_fl) 0)
    ((:wheel_speed_fr __wheel_speed_fr) 0)
    ((:wheel_speed_rl __wheel_speed_rl) 0)
    ((:wheel_speed_rr __wheel_speed_rr) 0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   (setq _wheel_speed_fl (round __wheel_speed_fl))
   (setq _wheel_speed_fr (round __wheel_speed_fr))
   (setq _wheel_speed_rl (round __wheel_speed_rl))
   (setq _wheel_speed_rr (round __wheel_speed_rr))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:wheel_speed_fl
   (&optional __wheel_speed_fl)
   (if __wheel_speed_fl (setq _wheel_speed_fl __wheel_speed_fl)) _wheel_speed_fl)
  (:wheel_speed_fr
   (&optional __wheel_speed_fr)
   (if __wheel_speed_fr (setq _wheel_speed_fr __wheel_speed_fr)) _wheel_speed_fr)
  (:wheel_speed_rl
   (&optional __wheel_speed_rl)
   (if __wheel_speed_rl (setq _wheel_speed_rl __wheel_speed_rl)) _wheel_speed_rl)
  (:wheel_speed_rr
   (&optional __wheel_speed_rr)
   (if __wheel_speed_rr (setq _wheel_speed_rr __wheel_speed_rr)) _wheel_speed_rr)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ;; int32 _wheel_speed_fl
    4
    ;; int32 _wheel_speed_fr
    4
    ;; int32 _wheel_speed_rl
    4
    ;; int32 _wheel_speed_rr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _wheel_speed_fl
       (write-long _wheel_speed_fl s)
     ;; int32 _wheel_speed_fr
       (write-long _wheel_speed_fr s)
     ;; int32 _wheel_speed_rl
       (write-long _wheel_speed_rl s)
     ;; int32 _wheel_speed_rr
       (write-long _wheel_speed_rr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _wheel_speed_fl
     (setq _wheel_speed_fl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheel_speed_fr
     (setq _wheel_speed_fr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheel_speed_rl
     (setq _wheel_speed_rl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheel_speed_rr
     (setq _wheel_speed_rr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_driver_msgs::ChassisReport :md5sum-) "b0a29ac7eeffeb332f52a08cd1c9e8d0")
(setf (get zzz_driver_msgs::ChassisReport :datatype-) "zzz_driver_msgs/ChassisReport")
(setf (get zzz_driver_msgs::ChassisReport :definition-)
      "# Information reported by chassis components

# Vehicle speed
float32 speed

# Wheel speed (rad/s)
int32 wheel_speed_fl
int32 wheel_speed_fr
int32 wheel_speed_rl
int32 wheel_speed_rr

")



(provide :zzz_driver_msgs/ChassisReport "b0a29ac7eeffeb332f52a08cd1c9e8d0")


