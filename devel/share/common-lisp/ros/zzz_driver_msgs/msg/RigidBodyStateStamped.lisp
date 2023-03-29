; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude RigidBodyStateStamped.msg.html

(cl:defclass <RigidBodyStateStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type zzz_driver_msgs-msg:RigidBodyState
    :initform (cl:make-instance 'zzz_driver_msgs-msg:RigidBodyState)))
)

(cl:defclass RigidBodyStateStamped (<RigidBodyStateStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidBodyStateStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidBodyStateStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<RigidBodyStateStamped> is deprecated: use zzz_driver_msgs-msg:RigidBodyStateStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RigidBodyStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:header-val is deprecated.  Use zzz_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RigidBodyStateStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:state-val is deprecated.  Use zzz_driver_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidBodyStateStamped>) ostream)
  "Serializes a message object of type '<RigidBodyStateStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidBodyStateStamped>) istream)
  "Deserializes a message object of type '<RigidBodyStateStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidBodyStateStamped>)))
  "Returns string type for a message object of type '<RigidBodyStateStamped>"
  "zzz_driver_msgs/RigidBodyStateStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidBodyStateStamped)))
  "Returns string type for a message object of type 'RigidBodyStateStamped"
  "zzz_driver_msgs/RigidBodyStateStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidBodyStateStamped>)))
  "Returns md5sum for a message object of type '<RigidBodyStateStamped>"
  "3ce82e0047669e82456465abb8d64149")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidBodyStateStamped)))
  "Returns md5sum for a message object of type 'RigidBodyStateStamped"
  "3ce82e0047669e82456465abb8d64149")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidBodyStateStamped>)))
  "Returns full string definition for message of type '<RigidBodyStateStamped>"
  (cl:format cl:nil "# Stamped version of RigidBodyState~%~%Header header~%RigidBodyState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_driver_msgs/RigidBodyState~%# This message contains commonly used state variables of rigid body~%~%# ID of frame fixed to the rigid body~%string child_frame_id~%~%# Location and orientatation of the object~%geometry_msgs/PoseWithCovariance  pose~%~%# Linear and angular velocity of the object~%geometry_msgs/TwistWithCovariance twist~%~%# Linear and angular acceleration of the object~%geometry_msgs/AccelWithCovariance accel~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidBodyStateStamped)))
  "Returns full string definition for message of type 'RigidBodyStateStamped"
  (cl:format cl:nil "# Stamped version of RigidBodyState~%~%Header header~%RigidBodyState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: zzz_driver_msgs/RigidBodyState~%# This message contains commonly used state variables of rigid body~%~%# ID of frame fixed to the rigid body~%string child_frame_id~%~%# Location and orientatation of the object~%geometry_msgs/PoseWithCovariance  pose~%~%# Linear and angular velocity of the object~%geometry_msgs/TwistWithCovariance twist~%~%# Linear and angular acceleration of the object~%geometry_msgs/AccelWithCovariance accel~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidBodyStateStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidBodyStateStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidBodyStateStamped
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
