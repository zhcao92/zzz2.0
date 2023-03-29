;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::ControlReport)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'ControlReport (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::CONTROLREPORT")
  (make-package "ZZZ_DRIVER_MSGS::CONTROLREPORT"))

(in-package "ROS")
;;//! \htmlinclude ControlReport.msg.html


(defclass zzz_driver_msgs::ControlReport
  :super ros::object
  :slots (_throttle_available _throttle_override _throttle_report _brake_available _brake_override _brake_report _steer_available _steer_override _steer_report ))

(defmethod zzz_driver_msgs::ControlReport
  (:init
   (&key
    ((:throttle_available __throttle_available) nil)
    ((:throttle_override __throttle_override) nil)
    ((:throttle_report __throttle_report) 0.0)
    ((:brake_available __brake_available) nil)
    ((:brake_override __brake_override) nil)
    ((:brake_report __brake_report) 0.0)
    ((:steer_available __steer_available) nil)
    ((:steer_override __steer_override) nil)
    ((:steer_report __steer_report) 0.0)
    )
   (send-super :init)
   (setq _throttle_available __throttle_available)
   (setq _throttle_override __throttle_override)
   (setq _throttle_report (float __throttle_report))
   (setq _brake_available __brake_available)
   (setq _brake_override __brake_override)
   (setq _brake_report (float __brake_report))
   (setq _steer_available __steer_available)
   (setq _steer_override __steer_override)
   (setq _steer_report (float __steer_report))
   self)
  (:throttle_available
   (&optional __throttle_available)
   (if __throttle_available (setq _throttle_available __throttle_available)) _throttle_available)
  (:throttle_override
   (&optional __throttle_override)
   (if __throttle_override (setq _throttle_override __throttle_override)) _throttle_override)
  (:throttle_report
   (&optional __throttle_report)
   (if __throttle_report (setq _throttle_report __throttle_report)) _throttle_report)
  (:brake_available
   (&optional __brake_available)
   (if __brake_available (setq _brake_available __brake_available)) _brake_available)
  (:brake_override
   (&optional __brake_override)
   (if __brake_override (setq _brake_override __brake_override)) _brake_override)
  (:brake_report
   (&optional __brake_report)
   (if __brake_report (setq _brake_report __brake_report)) _brake_report)
  (:steer_available
   (&optional __steer_available)
   (if __steer_available (setq _steer_available __steer_available)) _steer_available)
  (:steer_override
   (&optional __steer_override)
   (if __steer_override (setq _steer_override __steer_override)) _steer_override)
  (:steer_report
   (&optional __steer_report)
   (if __steer_report (setq _steer_report __steer_report)) _steer_report)
  (:serialization-length
   ()
   (+
    ;; bool _throttle_available
    1
    ;; bool _throttle_override
    1
    ;; float32 _throttle_report
    4
    ;; bool _brake_available
    1
    ;; bool _brake_override
    1
    ;; float32 _brake_report
    4
    ;; bool _steer_available
    1
    ;; bool _steer_override
    1
    ;; float32 _steer_report
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _throttle_available
       (if _throttle_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _throttle_override
       (if _throttle_override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _throttle_report
       (sys::poke _throttle_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _brake_available
       (if _brake_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_override
       (if _brake_override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _brake_report
       (sys::poke _brake_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _steer_available
       (if _steer_available (write-byte -1 s) (write-byte 0 s))
     ;; bool _steer_override
       (if _steer_override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steer_report
       (sys::poke _steer_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _throttle_available
     (setq _throttle_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _throttle_override
     (setq _throttle_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _throttle_report
     (setq _throttle_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _brake_available
     (setq _brake_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_override
     (setq _brake_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _brake_report
     (setq _brake_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _steer_available
     (setq _steer_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _steer_override
     (setq _steer_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steer_report
     (setq _steer_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_driver_msgs::ControlReport :md5sum-) "cca91eb5bf039a027d362a7a7aae6512")
(setf (get zzz_driver_msgs::ControlReport :datatype-) "zzz_driver_msgs/ControlReport")
(setf (get zzz_driver_msgs::ControlReport :definition-)
      "# Interface for vehicle control

# ---------- Trottle ----------
# Throttle control by-wire enabled
bool throttle_available
# Throttle control overtaken
bool throttle_override 
# Reported throttle level
float32 throttle_report

# ---------- Brake ----------
# Braking control by-wire enabled
bool brake_available
# Braking control overtaken
bool brake_override
# Reported braking level
float32 brake_report

# ---------- Steering ----------
# Steering control by-wire enabled
bool steer_available
# Steering control overtaken
bool steer_override
# Reported steering level
float32 steer_report

")



(provide :zzz_driver_msgs/ControlReport "cca91eb5bf039a027d362a7a7aae6512")


