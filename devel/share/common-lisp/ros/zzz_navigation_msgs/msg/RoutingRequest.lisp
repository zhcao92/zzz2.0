; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude RoutingRequest.msg.html

(cl:defclass <RoutingRequest> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoutingRequest (<RoutingRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<RoutingRequest> is deprecated: use zzz_navigation_msgs-msg:RoutingRequest instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:x-val is deprecated.  Use zzz_navigation_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:y-val is deprecated.  Use zzz_navigation_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingRequest>) ostream)
  "Serializes a message object of type '<RoutingRequest>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingRequest>) istream)
  "Deserializes a message object of type '<RoutingRequest>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingRequest>)))
  "Returns string type for a message object of type '<RoutingRequest>"
  "zzz_navigation_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingRequest)))
  "Returns string type for a message object of type 'RoutingRequest"
  "zzz_navigation_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingRequest>)))
  "Returns md5sum for a message object of type '<RoutingRequest>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingRequest)))
  "Returns md5sum for a message object of type 'RoutingRequest"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingRequest>)))
  "Returns full string definition for message of type '<RoutingRequest>"
  (cl:format cl:nil "# This message represent request for routing.~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingRequest)))
  "Returns full string definition for message of type 'RoutingRequest"
  (cl:format cl:nil "# This message represent request for routing.~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingRequest>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingRequest
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
