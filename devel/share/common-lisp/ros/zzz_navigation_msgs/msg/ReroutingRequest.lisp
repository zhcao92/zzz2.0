; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude ReroutingRequest.msg.html

(cl:defclass <ReroutingRequest> (roslisp-msg-protocol:ros-message)
  ((reason
    :reader reason
    :initarg :reason
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReroutingRequest (<ReroutingRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReroutingRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReroutingRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<ReroutingRequest> is deprecated: use zzz_navigation_msgs-msg:ReroutingRequest instead.")))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <ReroutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:reason-val is deprecated.  Use zzz_navigation_msgs-msg:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReroutingRequest>) ostream)
  "Serializes a message object of type '<ReroutingRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReroutingRequest>) istream)
  "Deserializes a message object of type '<ReroutingRequest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reason)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReroutingRequest>)))
  "Returns string type for a message object of type '<ReroutingRequest>"
  "zzz_navigation_msgs/ReroutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReroutingRequest)))
  "Returns string type for a message object of type 'ReroutingRequest"
  "zzz_navigation_msgs/ReroutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReroutingRequest>)))
  "Returns md5sum for a message object of type '<ReroutingRequest>"
  "2d0cd4d064c4100824cd84b5a5934c3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReroutingRequest)))
  "Returns md5sum for a message object of type 'ReroutingRequest"
  "2d0cd4d064c4100824cd84b5a5934c3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReroutingRequest>)))
  "Returns full string definition for message of type '<ReroutingRequest>"
  (cl:format cl:nil "# This message represent request for rerouting.~%~%# The reason for rerouting request~%uint8 reason~%~%# The destination for the rerouting request~%# sensor_msgs/NavSatFix destination~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReroutingRequest)))
  "Returns full string definition for message of type 'ReroutingRequest"
  (cl:format cl:nil "# This message represent request for rerouting.~%~%# The reason for rerouting request~%uint8 reason~%~%# The destination for the rerouting request~%# sensor_msgs/NavSatFix destination~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReroutingRequest>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReroutingRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'ReroutingRequest
    (cl:cons ':reason (reason msg))
))
