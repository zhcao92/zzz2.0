;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::ResourceReport)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'ResourceReport (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::RESOURCEREPORT")
  (make-package "ZZZ_DRIVER_MSGS::RESOURCEREPORT"))

(in-package "ROS")
;;//! \htmlinclude ResourceReport.msg.html


(defclass zzz_driver_msgs::ResourceReport
  :super ros::object
  :slots (_energy_level _distance_to_refill _odometer ))

(defmethod zzz_driver_msgs::ResourceReport
  (:init
   (&key
    ((:energy_level __energy_level) 0.0)
    ((:distance_to_refill __distance_to_refill) 0.0)
    ((:odometer __odometer) 0.0)
    )
   (send-super :init)
   (setq _energy_level (float __energy_level))
   (setq _distance_to_refill (float __distance_to_refill))
   (setq _odometer (float __odometer))
   self)
  (:energy_level
   (&optional __energy_level)
   (if __energy_level (setq _energy_level __energy_level)) _energy_level)
  (:distance_to_refill
   (&optional __distance_to_refill)
   (if __distance_to_refill (setq _distance_to_refill __distance_to_refill)) _distance_to_refill)
  (:odometer
   (&optional __odometer)
   (if __odometer (setq _odometer __odometer)) _odometer)
  (:serialization-length
   ()
   (+
    ;; float32 _energy_level
    4
    ;; float32 _distance_to_refill
    4
    ;; float32 _odometer
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _energy_level
       (sys::poke _energy_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_refill
       (sys::poke _distance_to_refill (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odometer
       (sys::poke _odometer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _energy_level
     (setq _energy_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_refill
     (setq _distance_to_refill (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odometer
     (setq _odometer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_driver_msgs::ResourceReport :md5sum-) "0533402475b5b1c56a96351a1100d35f")
(setf (get zzz_driver_msgs::ResourceReport :datatype-) "zzz_driver_msgs/ResourceReport")
(setf (get zzz_driver_msgs::ResourceReport :definition-)
      "# Information for vehicle resources, can be used for eco driving

# Fuel level / EV battery level (%, 0 to 100)
float32 energy_level

# Estimate distance to refill fuel/battery
float32 distance_to_refill

# Odometer (km)
float32 odometer
")



(provide :zzz_driver_msgs/ResourceReport "0533402475b5b1c56a96351a1100d35f")


