;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::DetectionBox2DArray)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'DetectionBox2DArray (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::DETECTIONBOX2DARRAY")
  (make-package "ZZZ_PERCEPTION_MSGS::DETECTIONBOX2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectionBox2DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass zzz_perception_msgs::DetectionBox2DArray
  :super ros::object
  :slots (_header _detections ))

(defmethod zzz_perception_msgs::DetectionBox2DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) (let (r) (dotimes (i 0) (push (instance zzz_perception_msgs::DetectionBox2D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; zzz_perception_msgs/DetectionBox2D[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; zzz_perception_msgs/DetectionBox2D[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; zzz_perception_msgs/DetectionBox2D[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance zzz_perception_msgs::DetectionBox2D :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get zzz_perception_msgs::DetectionBox2DArray :md5sum-) "c825cb581911768013afb530d18257a4")
(setf (get zzz_perception_msgs::DetectionBox2DArray :datatype-) "zzz_perception_msgs/DetectionBox2DArray")
(setf (get zzz_perception_msgs::DetectionBox2DArray :definition-)
      "# Describe a list of 2D detections, for a multi-object 2D detector.

Header header

# A list of the detected proposals. A multi-proposal detector might generate
#   this list with many candidate detections generated from a single input.
DetectionBox2D[] detections
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
MSG: zzz_perception_msgs/DetectionBox2D
# Defines a box-shaped 2D detection result.

# ----------------- Data -----------------

# The 2D data that generated these results (i.e. region proposal cropped out of
#   the image). Not required for all use cases, so it may be empty.
sensor_msgs/Image source_img

# ---------------- Properties --------------------

# Describe several classification result for the object
# This field is required to be sorted in descending order of scores
ObjectClass[] classes

# This field indicates visual (or sound?) signal from the object
ObjectSignals signal

# 2D bounding box surrounding the object.
BoundingBox2D bbox

# This field is for store auxiliary text or data
string comments

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: zzz_perception_msgs/ObjectClass
# The size of (in meters) the bounding box surrounding the object's center pose.

# The unique numeric classification ID of object detected
uint32 classid

# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.
float32 score

# Other information about the class (e.g. class name). Only for debug
string comments

##############################################################
###   Here is a hierarchical table of all included types   ###
##############################################################
# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level

uint32 UNKNOWN                          = 0     # 0x0000
uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010
uint32 UNKNOWN_STATIC                   = 32    # 0x0020

uint32 VEHICLE                          = 1     # 0x0001
uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles
uint32 VEHICEL_VAN                      = 33    # 0x0021
uint32 VEHICLE_TRUCK                    = 49    # 0x0031
uint32 VEHICLE_BUS                      = 65    # 0x0041
uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141
uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141
uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including 
uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151
uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151
uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251
uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251
uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks
uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351

uint32 HUMAN                            = 2     # 0x0002
uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012
uint32 HUMAN_ROADWORKER                 = 34    # 0x0022

uint32 CYCLIST                          = 3     # 0x0003
uint32 CYCLIST_BICYCLE                  = 19    # 0x0013
uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023
uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033

uint32 ANIMAL                           = 4     # 0x0004
uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.
uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.
uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.

uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area
uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone
uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign

uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side
uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016
uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026
uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation

uint32 LEVEL_MASK_0                     = 15    # 0x000f
uint32 LEVEL_MASK_1                     = 255   # 0x00ff
uint32 LEVEL_MASK_2                     = 4095  # 0x0fff
uint32 LEVEL_MASK_3                     = 65535 # 0xffff

================================================================================
MSG: zzz_perception_msgs/ObjectSignals
# This message is used to represent detected vehicle light signals or human hand signals

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

================================================================================
MSG: zzz_perception_msgs/BoundingBox2D
# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point

# The position and orientation of the rigid body center
Pose2DWithCovariance pose

# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.
Dimension2DWithCovariance dimension

================================================================================
MSG: zzz_perception_msgs/Pose2DWithCovariance

float64 x # or u in u-v plane
float64 y # or v in u-v plane
float64 theta

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (x, y, theta)
float64[9] covariance

================================================================================
MSG: zzz_perception_msgs/Dimension2DWithCovariance
# Describing the size object in 2D space (in pixels) with uncertainty

float64 length_x # width
float64 length_y # length

# Row-major representation of the 2x2 covariance matrix
# In order, the parameters are: (length_x, length_y)
float64[4] covariance

")



(provide :zzz_perception_msgs/DetectionBox2DArray "c825cb581911768013afb530d18257a4")


