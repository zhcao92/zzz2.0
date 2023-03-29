; Auto-generated. Do not edit!


(cl:in-package zzz_perception_msgs-msg)


;//! \htmlinclude BoundingBox2D.msg.html

(cl:defclass <BoundingBox2D> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type zzz_perception_msgs-msg:Pose2DWithCovariance
    :initform (cl:make-instance 'zzz_perception_msgs-msg:Pose2DWithCovariance))
   (dimension
    :reader dimension
    :initarg :dimension
    :type zzz_perception_msgs-msg:Dimension2DWithCovariance
    :initform (cl:make-instance 'zzz_perception_msgs-msg:Dimension2DWithCovariance)))
)

(cl:defclass BoundingBox2D (<BoundingBox2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_perception_msgs-msg:<BoundingBox2D> is deprecated: use zzz_perception_msgs-msg:BoundingBox2D instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:pose-val is deprecated.  Use zzz_perception_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'dimension-val :lambda-list '(m))
(cl:defmethod dimension-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_perception_msgs-msg:dimension-val is deprecated.  Use zzz_perception_msgs-msg:dimension instead.")
  (dimension m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2D>) ostream)
  "Serializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimension) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2D>) istream)
  "Deserializes a message object of type '<BoundingBox2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimension) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2D>)))
  "Returns string type for a message object of type '<BoundingBox2D>"
  "zzz_perception_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2D)))
  "Returns string type for a message object of type 'BoundingBox2D"
  "zzz_perception_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2D>)))
  "Returns md5sum for a message object of type '<BoundingBox2D>"
  "ee985124803fe8633995d77cdc7fb361")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2D)))
  "Returns md5sum for a message object of type 'BoundingBox2D"
  "ee985124803fe8633995d77cdc7fb361")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2D>)))
  "Returns full string definition for message of type '<BoundingBox2D>"
  (cl:format cl:nil "# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point~%~%# The position and orientation of the rigid body center~%Pose2DWithCovariance pose~%~%# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.~%Dimension2DWithCovariance dimension~%~%================================================================================~%MSG: zzz_perception_msgs/Pose2DWithCovariance~%~%float64 x # or u in u-v plane~%float64 y # or v in u-v plane~%float64 theta~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (x, y, theta)~%float64[9] covariance~%~%================================================================================~%MSG: zzz_perception_msgs/Dimension2DWithCovariance~%# Describing the size object in 2D space (in pixels) with uncertainty~%~%float64 length_x # width~%float64 length_y # length~%~%# Row-major representation of the 2x2 covariance matrix~%# In order, the parameters are: (length_x, length_y)~%float64[4] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2D)))
  "Returns full string definition for message of type 'BoundingBox2D"
  (cl:format cl:nil "# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point~%~%# The position and orientation of the rigid body center~%Pose2DWithCovariance pose~%~%# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.~%Dimension2DWithCovariance dimension~%~%================================================================================~%MSG: zzz_perception_msgs/Pose2DWithCovariance~%~%float64 x # or u in u-v plane~%float64 y # or v in u-v plane~%float64 theta~%~%# Row-major representation of the 3x3 covariance matrix~%# In order, the parameters are: (x, y, theta)~%float64[9] covariance~%~%================================================================================~%MSG: zzz_perception_msgs/Dimension2DWithCovariance~%# Describing the size object in 2D space (in pixels) with uncertainty~%~%float64 length_x # width~%float64 length_y # length~%~%# Row-major representation of the 2x2 covariance matrix~%# In order, the parameters are: (length_x, length_y)~%float64[4] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimension))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2D
    (cl:cons ':pose (pose msg))
    (cl:cons ':dimension (dimension msg))
))
