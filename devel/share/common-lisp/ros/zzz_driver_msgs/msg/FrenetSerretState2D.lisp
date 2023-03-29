; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude FrenetSerretState2D.msg.html

(cl:defclass <FrenetSerretState2D> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (d
    :reader d
    :initarg :d
    :type cl:float
    :initform 0.0)
   (psi
    :reader psi
    :initarg :psi
    :type cl:float
    :initform 0.0)
   (pose_covariance
    :reader pose_covariance
    :initarg :pose_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (vs
    :reader vs
    :initarg :vs
    :type cl:float
    :initform 0.0)
   (vd
    :reader vd
    :initarg :vd
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0)
   (twist_covariance
    :reader twist_covariance
    :initarg :twist_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (sa
    :reader sa
    :initarg :sa
    :type cl:float
    :initform 0.0)
   (ad
    :reader ad
    :initarg :ad
    :type cl:float
    :initform 0.0)
   (epsilon
    :reader epsilon
    :initarg :epsilon
    :type cl:float
    :initform 0.0)
   (accel_covariance
    :reader accel_covariance
    :initarg :accel_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FrenetSerretState2D (<FrenetSerretState2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrenetSerretState2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrenetSerretState2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<FrenetSerretState2D> is deprecated: use zzz_driver_msgs-msg:FrenetSerretState2D instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:s-val is deprecated.  Use zzz_driver_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:d-val is deprecated.  Use zzz_driver_msgs-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:psi-val is deprecated.  Use zzz_driver_msgs-msg:psi instead.")
  (psi m))

(cl:ensure-generic-function 'pose_covariance-val :lambda-list '(m))
(cl:defmethod pose_covariance-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:pose_covariance-val is deprecated.  Use zzz_driver_msgs-msg:pose_covariance instead.")
  (pose_covariance m))

(cl:ensure-generic-function 'vs-val :lambda-list '(m))
(cl:defmethod vs-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:vs-val is deprecated.  Use zzz_driver_msgs-msg:vs instead.")
  (vs m))

(cl:ensure-generic-function 'vd-val :lambda-list '(m))
(cl:defmethod vd-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:vd-val is deprecated.  Use zzz_driver_msgs-msg:vd instead.")
  (vd m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:omega-val is deprecated.  Use zzz_driver_msgs-msg:omega instead.")
  (omega m))

(cl:ensure-generic-function 'twist_covariance-val :lambda-list '(m))
(cl:defmethod twist_covariance-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:twist_covariance-val is deprecated.  Use zzz_driver_msgs-msg:twist_covariance instead.")
  (twist_covariance m))

(cl:ensure-generic-function 'sa-val :lambda-list '(m))
(cl:defmethod sa-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:sa-val is deprecated.  Use zzz_driver_msgs-msg:sa instead.")
  (sa m))

(cl:ensure-generic-function 'ad-val :lambda-list '(m))
(cl:defmethod ad-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:ad-val is deprecated.  Use zzz_driver_msgs-msg:ad instead.")
  (ad m))

(cl:ensure-generic-function 'epsilon-val :lambda-list '(m))
(cl:defmethod epsilon-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:epsilon-val is deprecated.  Use zzz_driver_msgs-msg:epsilon instead.")
  (epsilon m))

(cl:ensure-generic-function 'accel_covariance-val :lambda-list '(m))
(cl:defmethod accel_covariance-val ((m <FrenetSerretState2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:accel_covariance-val is deprecated.  Use zzz_driver_msgs-msg:accel_covariance instead.")
  (accel_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrenetSerretState2D>) ostream)
  "Serializes a message object of type '<FrenetSerretState2D>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose_covariance))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'twist_covariance))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epsilon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'accel_covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrenetSerretState2D>) istream)
  "Deserializes a message object of type '<FrenetSerretState2D>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'pose_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'pose_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'twist_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'twist_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sa) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epsilon) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'accel_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'accel_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrenetSerretState2D>)))
  "Returns string type for a message object of type '<FrenetSerretState2D>"
  "zzz_driver_msgs/FrenetSerretState2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrenetSerretState2D)))
  "Returns string type for a message object of type 'FrenetSerretState2D"
  "zzz_driver_msgs/FrenetSerretState2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrenetSerretState2D>)))
  "Returns md5sum for a message object of type '<FrenetSerretState2D>"
  "df9764c6ee98f33fca6c752fdbb15bc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrenetSerretState2D)))
  "Returns md5sum for a message object of type 'FrenetSerretState2D"
  "df9764c6ee98f33fca6c752fdbb15bc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrenetSerretState2D>)))
  "Returns full string definition for message of type '<FrenetSerretState2D>"
  (cl:format cl:nil "# This message describes a state in 2d Frenet-Serret Frame~%# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 2D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%          # we omit the offset in binormal direction~%float32 psi # Heading angle in s-d plane~%float32[9] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 omega~%float32[9] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 epsilon~%float32[9] accel_covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrenetSerretState2D)))
  "Returns full string definition for message of type 'FrenetSerretState2D"
  (cl:format cl:nil "# This message describes a state in 2d Frenet-Serret Frame~%# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 2D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%          # we omit the offset in binormal direction~%float32 psi # Heading angle in s-d plane~%float32[9] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 omega~%float32[9] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 epsilon~%float32[9] accel_covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrenetSerretState2D>))
  (cl:+ 0
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'twist_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accel_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrenetSerretState2D>))
  "Converts a ROS message object to a list"
  (cl:list 'FrenetSerretState2D
    (cl:cons ':s (s msg))
    (cl:cons ':d (d msg))
    (cl:cons ':psi (psi msg))
    (cl:cons ':pose_covariance (pose_covariance msg))
    (cl:cons ':vs (vs msg))
    (cl:cons ':vd (vd msg))
    (cl:cons ':omega (omega msg))
    (cl:cons ':twist_covariance (twist_covariance msg))
    (cl:cons ':sa (sa msg))
    (cl:cons ':ad (ad msg))
    (cl:cons ':epsilon (epsilon msg))
    (cl:cons ':accel_covariance (accel_covariance msg))
))
