; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude DetectionBox.msg.html

(cl:defclass <DetectionBox> (roslisp-msg-protocol:ros-message)
  ((source_cloud
    :reader source_cloud
    :initarg :source_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (source_img
    :reader source_img
    :initarg :source_img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (source_frame
    :reader source_frame
    :initarg :source_frame
    :type cl:string
    :initform "")
   (classes
    :reader classes
    :initarg :classes
    :type (cl:vector zzz_perception_msgs-msg:ObjectClass)
   :initform (cl:make-array 0 :element-type 'zzz_perception_msgs-msg:ObjectClass :initial-element (cl:make-instance 'zzz_perception_msgs-msg:ObjectClass)))
   (signal
    :reader signal
    :initarg :signal
    :type zzz_perception_msgs-msg:ObjectSignals
    :initform (cl:make-instance 'zzz_perception_msgs-msg:ObjectSignals))
   (bbox
    :reader bbox
    :initarg :bbox
    :type zzz_perception_msgs-msg:BoundingBox
    :initform (cl:make-instance 'zzz_perception_msgs-msg:BoundingBox))
   (comments
    :reader comments
    :initarg :comments
    :type cl:string
    :initform ""))
)

(cl:defclass DetectionBox (<DetectionBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<DetectionBox> is deprecated: use zzz_perception_msgs-msg:DetectionBox instead.")))

(cl:ensure-generic-function 'source_cloud-val :lambda-list '(m))
(cl:defmethod source_cloud-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:source_cloud-val is deprecated.  Use zzz_perception_msgs-msg:source_cloud instead.")
  (source_cloud m))

(cl:ensure-generic-function 'source_img-val :lambda-list '(m))
(cl:defmethod source_img-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:source_img-val is deprecated.  Use zzz_perception_msgs-msg:source_img instead.")
  (source_img m))

(cl:ensure-generic-function 'source_frame-val :lambda-list '(m))
(cl:defmethod source_frame-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:source_frame-val is deprecated.  Use zzz_perception_msgs-msg:source_frame instead.")
  (source_frame m))

(cl:ensure-generic-function 'classes-val :lambda-list '(m))
(cl:defmethod classes-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:classes-val is deprecated.  Use zzz_perception_msgs-msg:classes instead.")
  (classes m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:signal-val is deprecated.  Use zzz_perception_msgs-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:bbox-val is deprecated.  Use zzz_perception_msgs-msg:bbox instead.")
  (bbox m))

(cl:ensure-generic-function 'comments-val :lambda-list '(m))
(cl:defmethod comments-val ((m <DetectionBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:comments-val is deprecated.  Use zzz_perception_msgs-msg:comments instead.")
  (comments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionBox>) ostream)
  "Serializes a message object of type '<DetectionBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source_cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source_img) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'classes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionBox>) istream)
  "Deserializes a message object of type '<DetectionBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source_cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source_img) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'classes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_perception_msgs-msg:ObjectClass))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'signal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comments) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comments) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionBox>)))
  "Returns string type for a message object of type '<DetectionBox>"
  "zzz_perception_msgs/DetectionBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionBox)))
  "Returns string type for a message object of type 'DetectionBox"
  "zzz_perception_msgs/DetectionBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionBox>)))
  "Returns md5sum for a message object of type '<DetectionBox>"
  "0a13bac53d8ff42860cb5814e580ec83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionBox)))
  "Returns md5sum for a message object of type 'DetectionBox"
  "0a13bac53d8ff42860cb5814e580ec83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionBox>)))
  "Returns full string definition for message of type '<DetectionBox>"
  (cl:format cl:nil "# Defines a box-shaped 3D detection result.~%~%# ----------------- Data -----------------~%~%# The 3D data that generated these results (i.e. object region cropped out of~%#   the point cloud). This information is not required for all detectors, so it may be empty.~%sensor_msgs/PointCloud2 source_cloud~%~%# The 2D data in the same area for fusion purpose~%sensor_msgs/Image source_img~%~%# The frame id of source_img~%string source_frame~%~%# ---------------- Properties --------------------~%~%# Describe several classification result for the object~%# This field is required to be sorted in descending order of scores~%ObjectClass[] classes~%~%# This field indicates visual (or sound?) signal from the object~%ObjectSignals signal~%~%# 3D bounding box surrounding the object.~%BoundingBox bbox~%~%# This field is for store auxiliary text or data. (e.g. annotation notes)~%string comments~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectSignals~%# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%================================================================================~%MSG: zzz_perception_msgs/BoundingBox~%~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionBox)))
  "Returns full string definition for message of type 'DetectionBox"
  (cl:format cl:nil "# Defines a box-shaped 3D detection result.~%~%# ----------------- Data -----------------~%~%# The 3D data that generated these results (i.e. object region cropped out of~%#   the point cloud). This information is not required for all detectors, so it may be empty.~%sensor_msgs/PointCloud2 source_cloud~%~%# The 2D data in the same area for fusion purpose~%sensor_msgs/Image source_img~%~%# The frame id of source_img~%string source_frame~%~%# ---------------- Properties --------------------~%~%# Describe several classification result for the object~%# This field is required to be sorted in descending order of scores~%ObjectClass[] classes~%~%# This field indicates visual (or sound?) signal from the object~%ObjectSignals signal~%~%# 3D bounding box surrounding the object.~%BoundingBox bbox~%~%# This field is for store auxiliary text or data. (e.g. annotation notes)~%string comments~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectSignals~%# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%================================================================================~%MSG: zzz_perception_msgs/BoundingBox~%~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source_cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source_img))
     4 (cl:length (cl:slot-value msg 'source_frame))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox))
     4 (cl:length (cl:slot-value msg 'comments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionBox>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionBox
    (cl:cons ':source_cloud (source_cloud msg))
    (cl:cons ':source_img (source_img msg))
    (cl:cons ':source_frame (source_frame msg))
    (cl:cons ':classes (classes msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':bbox (bbox msg))
    (cl:cons ':comments (comments msg))
))
