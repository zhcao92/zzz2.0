;; Auto-generated. Do not edit!


(when (boundp 'zzz_navigation_msgs::MapString)
  (if (not (find-package "ZZZ_NAVIGATION_MSGS"))
    (make-package "ZZZ_NAVIGATION_MSGS"))
  (shadow 'MapString (find-package "ZZZ_NAVIGATION_MSGS")))
(unless (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING")
  (make-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))

(in-package "ROS")
;;//! \htmlinclude MapString.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MAP_UNKNOWN*" (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(shadow '*MAP_UNKNOWN* (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(defconstant zzz_navigation_msgs::MapString::*MAP_UNKNOWN* 0)
(intern "*MAP_OPENDRIVE*" (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(shadow '*MAP_OPENDRIVE* (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(defconstant zzz_navigation_msgs::MapString::*MAP_OPENDRIVE* 1)
(intern "*MAP_SUMO*" (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(shadow '*MAP_SUMO* (find-package "ZZZ_NAVIGATION_MSGS::MAPSTRING"))
(defconstant zzz_navigation_msgs::MapString::*MAP_SUMO* 2)
(defclass zzz_navigation_msgs::MapString
  :super ros::object
  :slots (_header _map_type _content ))

(defmethod zzz_navigation_msgs::MapString
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map_type __map_type) 0)
    ((:content __content) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _map_type (round __map_type))
   (setq _content (string __content))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map_type
   (&optional __map_type)
   (if __map_type (setq _map_type __map_type)) _map_type)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _map_type
    1
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _map_type
       (write-byte _map_type s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _map_type
     (setq _map_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get zzz_navigation_msgs::MapString :md5sum-) "629c6319a47bf7a0c54d99f0ee184a58")
(setf (get zzz_navigation_msgs::MapString :datatype-) "zzz_navigation_msgs/MapString")
(setf (get zzz_navigation_msgs::MapString :definition-)
      "# This message is used for loading geologic map from string content

Header header

# Map type enum
uint8 map_type
uint8 MAP_UNKNOWN = 0
uint8 MAP_OPENDRIVE = 1
uint8 MAP_SUMO = 2

# Map content. It can be encoded, depending on the map_type
string content

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

")



(provide :zzz_navigation_msgs/MapString "629c6319a47bf7a0c54d99f0ee184a58")


