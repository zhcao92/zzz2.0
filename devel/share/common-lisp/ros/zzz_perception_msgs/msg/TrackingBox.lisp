; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude TrackingBox.msg.html

(cl:defclass <TrackingBox> (roslisp-msg-protocol:ros-message)
  ((uid
    :reader uid
    :initarg :uid
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
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
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance))
   (comments
    :reader comments
    :initarg :comments
    :type cl:string
    :initform ""))
)

(cl:defclass TrackingBox (<TrackingBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<TrackingBox> is deprecated: use zzz_perception_msgs-msg:TrackingBox instead.")))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:uid-val is deprecated.  Use zzz_perception_msgs-msg:uid instead.")
  (uid m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:confidence-val is deprecated.  Use zzz_perception_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'classes-val :lambda-list '(m))
(cl:defmethod classes-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:classes-val is deprecated.  Use zzz_perception_msgs-msg:classes instead.")
  (classes m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:signal-val is deprecated.  Use zzz_perception_msgs-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'bbox-val :lambda-list '(m))
(cl:defmethod bbox-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:bbox-val is deprecated.  Use zzz_perception_msgs-msg:bbox instead.")
  (bbox m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:twist-val is deprecated.  Use zzz_perception_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:accel-val is deprecated.  Use zzz_perception_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'comments-val :lambda-list '(m))
(cl:defmethod comments-val ((m <TrackingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:comments-val is deprecated.  Use zzz_perception_msgs-msg:comments instead.")
  (comments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingBox>) ostream)
  "Serializes a message object of type '<TrackingBox>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'classes))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingBox>) istream)
  "Deserializes a message object of type '<TrackingBox>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingBox>)))
  "Returns string type for a message object of type '<TrackingBox>"
  "zzz_perception_msgs/TrackingBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingBox)))
  "Returns string type for a message object of type 'TrackingBox"
  "zzz_perception_msgs/TrackingBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingBox>)))
  "Returns md5sum for a message object of type '<TrackingBox>"
  "8a670f6260df74e09e45192f57a95a73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingBox)))
  "Returns md5sum for a message object of type 'TrackingBox"
  "8a670f6260df74e09e45192f57a95a73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingBox>)))
  "Returns full string definition for message of type '<TrackingBox>"
  (cl:format cl:nil "# Defines a box-shaped 3D tracking result.~%~%# Unique id to determine the identification of tracked object.~%# This field could be a increasing number from zero or random hash number~%uint64 uid~%~%# Defines the (existence) confidence of the object [-1 ~~ 1].~%# The confidence can be negative to demonstrate that this object is invalid.~%# This confidence should not be fed into decision system. It should be used for validation purpose.~%float32 confidence~%~%# Describe several classification result for the object~%# This field is required to be sorted in descending order of scores~%ObjectClass[] classes~%~%# This field contains the behavior identification based on light signal or hand signal~%ObjectSignals signal~%~%# Current 3D bounding box.~%BoundingBox bbox~%~%# Estimated 3D velocity and accelaration~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/AccelWithCovariance accel~%~%# This field is for store auxiliary text or data~%string comments~%~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectSignals~%# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%================================================================================~%MSG: zzz_perception_msgs/BoundingBox~%~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingBox)))
  "Returns full string definition for message of type 'TrackingBox"
  (cl:format cl:nil "# Defines a box-shaped 3D tracking result.~%~%# Unique id to determine the identification of tracked object.~%# This field could be a increasing number from zero or random hash number~%uint64 uid~%~%# Defines the (existence) confidence of the object [-1 ~~ 1].~%# The confidence can be negative to demonstrate that this object is invalid.~%# This confidence should not be fed into decision system. It should be used for validation purpose.~%float32 confidence~%~%# Describe several classification result for the object~%# This field is required to be sorted in descending order of scores~%ObjectClass[] classes~%~%# This field contains the behavior identification based on light signal or hand signal~%ObjectSignals signal~%~%# Current 3D bounding box.~%BoundingBox bbox~%~%# Estimated 3D velocity and accelaration~%geometry_msgs/TwistWithCovariance twist~%geometry_msgs/AccelWithCovariance accel~%~%# This field is for store auxiliary text or data~%string comments~%~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectClass~%# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%================================================================================~%MSG: zzz_perception_msgs/ObjectSignals~%# This message is used to represent detected vehicle light signals or human hand signals~%~%# Signal flags. Multiple signal emission can exists in the same time.~%uint16 flags~%~%uint16 UNKNOWN                          = 0     # 0x00~%uint16 NONE                             = 16    # 0x10~%~%# This field is related to https://en.wikipedia.org/wiki/Automotive_lighting~%uint16 VEHICLE_SIGNAL                   = 1     # 0x01~%uint16 VEHICLE_SIGNAL_LEFT_TURN         = 17    # 0x11~%uint16 VEHICLE_SIGNAL_RIGHT_TURN        = 33    # 0x21~%uint16 VEHICLE_SIGNAL_HAZARD            = 49    # 0x31~%uint16 VEHICLE_SIGNAL_BRAKE             = 65    # 0x41~%uint16 VEHICLE_SIGNAL_REVERSE           = 81    # 0x51~%uint16 VEHICLE_SIGNAL_SPEED_30_LIMIT    = 97    # 0x61~%~%# This field is related to https://en.wikipedia.org/wiki/Traffic_light#Single_aspects~%uint16 TRAFFIC_LIGHT                    = 2     # 0x02~%uint16 TRAFFIC_LIGHT_RED                = 18    # 0x12~%uint16 TRAFFIC_LIGHT_YELLOW             = 34    # 0x22~%uint16 TRAFFIC_LIGHT_GREEN              = 50    # 0x32~%uint16 TRAFFIC_LIGHT_GREEN_LEFT_TURN    = 66    # 0x42~%uint16 TRAFFIC_LIGHT_GREEN_RIGHT_TURN   = 66    # 0x42~%~%# Confidence of the signal detection~%float32 score~%~%================================================================================~%MSG: zzz_perception_msgs/BoundingBox~%~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingBox>))
  (cl:+ 0
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     4 (cl:length (cl:slot-value msg 'comments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingBox>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingBox
    (cl:cons ':uid (uid msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':classes (classes msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':bbox (bbox msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':comments (comments msg))
))
