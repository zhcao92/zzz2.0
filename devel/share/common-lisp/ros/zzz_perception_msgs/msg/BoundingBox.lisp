; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude BoundingBox.msg.html

(cl:defclass <BoundingBox> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (dimension
    :reader dimension
    :initarg :dimension
    :type zzz_perception_msgs-msg:DimensionWithCovariance
    :initform (cl:make-instance 'zzz_perception_msgs-msg:DimensionWithCovariance)))
)

(cl:defclass BoundingBox (<BoundingBox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<BoundingBox> is deprecated: use zzz_perception_msgs-msg:BoundingBox instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <BoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:pose-val is deprecated.  Use zzz_perception_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'dimension-val :lambda-list '(m))
(cl:defmethod dimension-val ((m <BoundingBox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:dimension-val is deprecated.  Use zzz_perception_msgs-msg:dimension instead.")
  (dimension m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox>) ostream)
  "Serializes a message object of type '<BoundingBox>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox>) istream)
  "Deserializes a message object of type '<BoundingBox>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox>)))
  "Returns string type for a message object of type '<BoundingBox>"
  "zzz_perception_msgs/BoundingBox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox)))
  "Returns string type for a message object of type 'BoundingBox"
  "zzz_perception_msgs/BoundingBox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox>)))
  "Returns md5sum for a message object of type '<BoundingBox>"
  "b86d93b46fb62aa8e76866d776c9de52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox)))
  "Returns md5sum for a message object of type 'BoundingBox"
  "b86d93b46fb62aa8e76866d776c9de52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox>)))
  "Returns full string definition for message of type '<BoundingBox>"
  (cl:format cl:nil "~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox)))
  "Returns full string definition for message of type 'BoundingBox"
  (cl:format cl:nil "~%# A 3D bounding box that can be positioned and rotated about its center (6 DOF). Dimensions of this box are in meters~%~%# The position and orientation of the rigid body center~%geometry_msgs/PoseWithCovariance pose~%~%# The size of (in meters) the bounding box surrounding the object's center pose.~%DimensionWithCovariance dimension~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: zzz_perception_msgs/DimensionWithCovariance~%# Describing the size object in 3D space (in meters) with uncertainty~%~%float64 length_x # length(longitudinal direction)~%float64 length_y # width(lateral direction)~%float64 length_z # height~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (length_x, length_y, length_z)~%float64[9] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox
    (cl:cons ':pose (pose msg))
    (cl:cons ':dimension (dimension msg))
))
