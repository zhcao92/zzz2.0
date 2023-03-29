;; Auto-generated. Do not edit!


(when (boundp 'zzz_cognition_msgs::VehicleLocationArray)
  (if (not (find-package "ZZZ_COGNITION_MSGS"))
    (make-package "ZZZ_COGNITION_MSGS"))
  (shadow 'VehicleLocationArray (find-package "ZZZ_COGNITION_MSGS")))
(unless (find-package "ZZZ_COGNITION_MSGS::VEHICLELOCATIONARRAY")
  (make-package "ZZZ_COGNITION_MSGS::VEHICLELOCATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude VehicleLocationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_cognition_msgs::VehicleLocationArray
  :super ros::object
  :slots (_header _vehiclelocationarray ))

(defmethod zzz_cognition_msgs::VehicleLocationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehiclelocationarray __vehiclelocationarray) (let (r) (dotimes (i 0) (push (instance zzz_cognition_msgs::VehicleLocation :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehiclelocationarray __vehiclelocationarray)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehiclelocationarray
   (&rest __vehiclelocationarray)
   (if (keywordp (car __vehiclelocationarray))
       (send* _vehiclelocationarray __vehiclelocationarray)
     (progn
       (if __vehiclelocationarray (setq _vehiclelocationarray (car __vehiclelocationarray)))
       _vehiclelocationarray)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; zzz_cognition_msgs/VehicleLocation[] _vehiclelocationarray
    (apply #'+ (send-all _vehiclelocationarray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; zzz_cognition_msgs/VehicleLocation[] _vehiclelocationarray
     (write-long (length _vehiclelocationarray) s)
     (dolist (elem _vehiclelocationarray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; zzz_cognition_msgs/VehicleLocation[] _vehiclelocationarray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehiclelocationarray (let (r) (dotimes (i n) (push (instance zzz_cognition_msgs::VehicleLocation :init) r)) r))
     (dolist (elem- _vehiclelocationarray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get zzz_cognition_msgs::VehicleLocationArray :md5sum-) "05a1add39e990f1618c38da9e9721a1b")
(setf (get zzz_cognition_msgs::VehicleLocationArray :datatype-) "zzz_cognition_msgs/VehicleLocationArray")
(setf (get zzz_cognition_msgs::VehicleLocationArray :definition-)
      "Header header
VehicleLocation[] vehiclelocationarray

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: zzz_cognition_msgs/VehicleLocation
Header header

float64 lat
float64 lon
float64 x
float64 y
float64 z
float64 w

")



(provide :zzz_cognition_msgs/VehicleLocationArray "05a1add39e990f1618c38da9e9721a1b")


