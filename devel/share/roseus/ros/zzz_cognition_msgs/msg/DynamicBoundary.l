;; Auto-generated. Do not edit!


(when (boundp 'zzz_cognition_msgs::DynamicBoundary)
  (if (not (find-package "ZZZ_COGNITION_MSGS"))
    (make-package "ZZZ_COGNITION_MSGS"))
  (shadow 'DynamicBoundary (find-package "ZZZ_COGNITION_MSGS")))
(unless (find-package "ZZZ_COGNITION_MSGS::DYNAMICBOUNDARY")
  (make-package "ZZZ_COGNITION_MSGS::DYNAMICBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude DynamicBoundary.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_cognition_msgs::DynamicBoundary
  :super ros::object
  :slots (_header _boundary ))

(defmethod zzz_cognition_msgs::DynamicBoundary
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:boundary __boundary) (let (r) (dotimes (i 0) (push (instance zzz_cognition_msgs::DynamicBoundaryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _boundary __boundary)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:boundary
   (&rest __boundary)
   (if (keywordp (car __boundary))
       (send* _boundary __boundary)
     (progn
       (if __boundary (setq _boundary (car __boundary)))
       _boundary)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; zzz_cognition_msgs/DynamicBoundaryPoint[] _boundary
    (apply #'+ (send-all _boundary :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; zzz_cognition_msgs/DynamicBoundaryPoint[] _boundary
     (write-long (length _boundary) s)
     (dolist (elem _boundary)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; zzz_cognition_msgs/DynamicBoundaryPoint[] _boundary
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundary (let (r) (dotimes (i n) (push (instance zzz_cognition_msgs::DynamicBoundaryPoint :init) r)) r))
     (dolist (elem- _boundary)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get zzz_cognition_msgs::DynamicBoundary :md5sum-) "73db63c598006d00c116b478d56b2cc3")
(setf (get zzz_cognition_msgs::DynamicBoundary :datatype-) "zzz_cognition_msgs/DynamicBoundary")
(setf (get zzz_cognition_msgs::DynamicBoundary :definition-)
      "# This message represents a compact dynamc environment representation with dynamic boundary

Header header
DynamicBoundaryPoint[] boundary

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
MSG: zzz_cognition_msgs/DynamicBoundaryPoint
# This message represents a point in the dynamic boundary

float32 x
float32 y
float32 vx
float32 vy

")



(provide :zzz_cognition_msgs/DynamicBoundary "73db63c598006d00c116b478d56b2cc3")


