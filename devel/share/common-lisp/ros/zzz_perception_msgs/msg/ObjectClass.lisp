; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude ObjectClass.msg.html

(cl:defclass <ObjectClass> (roslisp-msg-protocol:ros-message)
  ((classid
    :reader classid
    :initarg :classid
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (comments
    :reader comments
    :initarg :comments
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectClass (<ObjectClass>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectClass>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectClass)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<ObjectClass> is deprecated: use zzz_perception_msgs-msg:ObjectClass instead.")))

(cl:ensure-generic-function 'classid-val :lambda-list '(m))
(cl:defmethod classid-val ((m <ObjectClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:classid-val is deprecated.  Use zzz_perception_msgs-msg:classid instead.")
  (classid m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ObjectClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:score-val is deprecated.  Use zzz_perception_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'comments-val :lambda-list '(m))
(cl:defmethod comments-val ((m <ObjectClass>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:comments-val is deprecated.  Use zzz_perception_msgs-msg:comments instead.")
  (comments m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectClass>)))
    "Constants for message type '<ObjectClass>"
  '((:UNKNOWN . 0)
    (:UNKNOWN_DYNAMIC . 16)
    (:UNKNOWN_STATIC . 32)
    (:VEHICLE . 1)
    (:VEHICLE_PASSENGER . 17)
    (:VEHICEL_VAN . 33)
    (:VEHICLE_TRUCK . 49)
    (:VEHICLE_BUS . 65)
    (:VEHICLE_SCHOOLBUS . 321)
    (:VEHICLE_SCHOOLBUS_STOP . 4417)
    (:VEHICLE_EMERGENCY . 81)
    (:VEHICLE_EMERGENCY_POLICE . 337)
    (:VEHICLE_EMERGENCY_POLICE_FLASH . 4433)
    (:VEHICLE_EMERGENCY_FIRE . 593)
    (:VEHICLE_EMERGENCY_FIRE_FLASH . 4689)
    (:VEHICLE_EMERGENCY_CIVIL . 849)
    (:VEHICLE_EMERGENCY_CIVIL_FLASH . 4945)
    (:HUMAN . 2)
    (:HUMAN_PEDESTRIAN . 18)
    (:HUMAN_ROADWORKER . 34)
    (:CYCLIST . 3)
    (:CYCLIST_BICYCLE . 19)
    (:CYCLIST_MOTORCYCLE . 35)
    (:CYCLIST_TRICYCLE . 51)
    (:ANIMAL . 4)
    (:ANIMAL_DOGLIKE . 20)
    (:ANIMAL_DEERLIKE . 36)
    (:ANIMAL_COWLIKE . 52)
    (:ROAD_OBJECT . 5)
    (:ROAD_TRAFFIC_CONE . 21)
    (:ROAD_TRAFFIC_BLOCKER . 37)
    (:ROADSIDE_OBJECT . 6)
    (:ROADSIDE_TRAFFIC_LIGHT . 22)
    (:ROADSIDE_TRAFFIC_SIGN . 38)
    (:ROADSIDE_TREE . 54)
    (:LEVEL_MASK_0 . 15)
    (:LEVEL_MASK_1 . 255)
    (:LEVEL_MASK_2 . 4095)
    (:LEVEL_MASK_3 . 65535))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectClass)))
    "Constants for message type 'ObjectClass"
  '((:UNKNOWN . 0)
    (:UNKNOWN_DYNAMIC . 16)
    (:UNKNOWN_STATIC . 32)
    (:VEHICLE . 1)
    (:VEHICLE_PASSENGER . 17)
    (:VEHICEL_VAN . 33)
    (:VEHICLE_TRUCK . 49)
    (:VEHICLE_BUS . 65)
    (:VEHICLE_SCHOOLBUS . 321)
    (:VEHICLE_SCHOOLBUS_STOP . 4417)
    (:VEHICLE_EMERGENCY . 81)
    (:VEHICLE_EMERGENCY_POLICE . 337)
    (:VEHICLE_EMERGENCY_POLICE_FLASH . 4433)
    (:VEHICLE_EMERGENCY_FIRE . 593)
    (:VEHICLE_EMERGENCY_FIRE_FLASH . 4689)
    (:VEHICLE_EMERGENCY_CIVIL . 849)
    (:VEHICLE_EMERGENCY_CIVIL_FLASH . 4945)
    (:HUMAN . 2)
    (:HUMAN_PEDESTRIAN . 18)
    (:HUMAN_ROADWORKER . 34)
    (:CYCLIST . 3)
    (:CYCLIST_BICYCLE . 19)
    (:CYCLIST_MOTORCYCLE . 35)
    (:CYCLIST_TRICYCLE . 51)
    (:ANIMAL . 4)
    (:ANIMAL_DOGLIKE . 20)
    (:ANIMAL_DEERLIKE . 36)
    (:ANIMAL_COWLIKE . 52)
    (:ROAD_OBJECT . 5)
    (:ROAD_TRAFFIC_CONE . 21)
    (:ROAD_TRAFFIC_BLOCKER . 37)
    (:ROADSIDE_OBJECT . 6)
    (:ROADSIDE_TRAFFIC_LIGHT . 22)
    (:ROADSIDE_TRAFFIC_SIGN . 38)
    (:ROADSIDE_TREE . 54)
    (:LEVEL_MASK_0 . 15)
    (:LEVEL_MASK_1 . 255)
    (:LEVEL_MASK_2 . 4095)
    (:LEVEL_MASK_3 . 65535))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectClass>) ostream)
  "Serializes a message object of type '<ObjectClass>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'classid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'classid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'classid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectClass>) istream)
  "Deserializes a message object of type '<ObjectClass>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'classid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'classid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'classid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectClass>)))
  "Returns string type for a message object of type '<ObjectClass>"
  "zzz_perception_msgs/ObjectClass")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectClass)))
  "Returns string type for a message object of type 'ObjectClass"
  "zzz_perception_msgs/ObjectClass")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectClass>)))
  "Returns md5sum for a message object of type '<ObjectClass>"
  "991b8d3acc01ea523d3201482c907466")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectClass)))
  "Returns md5sum for a message object of type 'ObjectClass"
  "991b8d3acc01ea523d3201482c907466")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectClass>)))
  "Returns full string definition for message of type '<ObjectClass>"
  (cl:format cl:nil "# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectClass)))
  "Returns full string definition for message of type 'ObjectClass"
  (cl:format cl:nil "# The size of (in meters) the bounding box surrounding the object's center pose.~%~%# The unique numeric classification ID of object detected~%uint32 classid~%~%# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~~1.~%float32 score~%~%# Other information about the class (e.g. class name). Only for debug~%string comments~%~%##############################################################~%###   Here is a hierarchical table of all included types   ###~%##############################################################~%# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level~%~%uint32 UNKNOWN                          = 0     # 0x0000~%uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010~%uint32 UNKNOWN_STATIC                   = 32    # 0x0020~%~%uint32 VEHICLE                          = 1     # 0x0001~%uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles~%uint32 VEHICEL_VAN                      = 33    # 0x0021~%uint32 VEHICLE_TRUCK                    = 49    # 0x0031~%uint32 VEHICLE_BUS                      = 65    # 0x0041~%uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141~%uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141~%uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including ~%uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151~%uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151~%uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251~%uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251~%uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks~%uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351~%~%uint32 HUMAN                            = 2     # 0x0002~%uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012~%uint32 HUMAN_ROADWORKER                 = 34    # 0x0022~%~%uint32 CYCLIST                          = 3     # 0x0003~%uint32 CYCLIST_BICYCLE                  = 19    # 0x0013~%uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023~%uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033~%~%uint32 ANIMAL                           = 4     # 0x0004~%uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.~%uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.~%uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.~%~%uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area~%uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone~%uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign~%~%uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side~%uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016~%uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026~%uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation~%~%uint32 LEVEL_MASK_0                     = 15    # 0x000f~%uint32 LEVEL_MASK_1                     = 255   # 0x00ff~%uint32 LEVEL_MASK_2                     = 4095  # 0x0fff~%uint32 LEVEL_MASK_3                     = 65535 # 0xffff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectClass>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'comments))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectClass>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectClass
    (cl:cons ':classid (classid msg))
    (cl:cons ':score (score msg))
    (cl:cons ':comments (comments msg))
))
