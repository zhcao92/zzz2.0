; Auto-generated. Do not edit!


(cl:in-package zzz_driver_msgs-msg)


;//! \htmlinclude FrenetSerretState.msg.html

(cl:defclass <FrenetSerretState> (roslisp-msg-protocol:ros-message)
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
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (psi_s
    :reader psi_s
    :initarg :psi_s
    :type cl:float
    :initform 0.0)
   (psi_d
    :reader psi_d
    :initarg :psi_d
    :type cl:float
    :initform 0.0)
   (psi_b
    :reader psi_b
    :initarg :psi_b
    :type cl:float
    :initform 0.0)
   (pose_covariance
    :reader pose_covariance
    :initarg :pose_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0))
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
   (vb
    :reader vb
    :initarg :vb
    :type cl:float
    :initform 0.0)
   (omega_s
    :reader omega_s
    :initarg :omega_s
    :type cl:float
    :initform 0.0)
   (omega_d
    :reader omega_d
    :initarg :omega_d
    :type cl:float
    :initform 0.0)
   (omega_b
    :reader omega_b
    :initarg :omega_b
    :type cl:float
    :initform 0.0)
   (twist_covariance
    :reader twist_covariance
    :initarg :twist_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0))
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
   (ab
    :reader ab
    :initarg :ab
    :type cl:float
    :initform 0.0)
   (epsilon_s
    :reader epsilon_s
    :initarg :epsilon_s
    :type cl:float
    :initform 0.0)
   (epsilon_d
    :reader epsilon_d
    :initarg :epsilon_d
    :type cl:float
    :initform 0.0)
   (epsilon_b
    :reader epsilon_b
    :initarg :epsilon_b
    :type cl:float
    :initform 0.0)
   (accel_covariance
    :reader accel_covariance
    :initarg :accel_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FrenetSerretState (<FrenetSerretState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrenetSerretState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrenetSerretState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_driver_msgs-msg:<FrenetSerretState> is deprecated: use zzz_driver_msgs-msg:FrenetSerretState instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:s-val is deprecated.  Use zzz_driver_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'd-val :lambda-list '(m))
(cl:defmethod d-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:d-val is deprecated.  Use zzz_driver_msgs-msg:d instead.")
  (d m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:b-val is deprecated.  Use zzz_driver_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'psi_s-val :lambda-list '(m))
(cl:defmethod psi_s-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:psi_s-val is deprecated.  Use zzz_driver_msgs-msg:psi_s instead.")
  (psi_s m))

(cl:ensure-generic-function 'psi_d-val :lambda-list '(m))
(cl:defmethod psi_d-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:psi_d-val is deprecated.  Use zzz_driver_msgs-msg:psi_d instead.")
  (psi_d m))

(cl:ensure-generic-function 'psi_b-val :lambda-list '(m))
(cl:defmethod psi_b-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:psi_b-val is deprecated.  Use zzz_driver_msgs-msg:psi_b instead.")
  (psi_b m))

(cl:ensure-generic-function 'pose_covariance-val :lambda-list '(m))
(cl:defmethod pose_covariance-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:pose_covariance-val is deprecated.  Use zzz_driver_msgs-msg:pose_covariance instead.")
  (pose_covariance m))

(cl:ensure-generic-function 'vs-val :lambda-list '(m))
(cl:defmethod vs-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:vs-val is deprecated.  Use zzz_driver_msgs-msg:vs instead.")
  (vs m))

(cl:ensure-generic-function 'vd-val :lambda-list '(m))
(cl:defmethod vd-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:vd-val is deprecated.  Use zzz_driver_msgs-msg:vd instead.")
  (vd m))

(cl:ensure-generic-function 'vb-val :lambda-list '(m))
(cl:defmethod vb-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:vb-val is deprecated.  Use zzz_driver_msgs-msg:vb instead.")
  (vb m))

(cl:ensure-generic-function 'omega_s-val :lambda-list '(m))
(cl:defmethod omega_s-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:omega_s-val is deprecated.  Use zzz_driver_msgs-msg:omega_s instead.")
  (omega_s m))

(cl:ensure-generic-function 'omega_d-val :lambda-list '(m))
(cl:defmethod omega_d-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:omega_d-val is deprecated.  Use zzz_driver_msgs-msg:omega_d instead.")
  (omega_d m))

(cl:ensure-generic-function 'omega_b-val :lambda-list '(m))
(cl:defmethod omega_b-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:omega_b-val is deprecated.  Use zzz_driver_msgs-msg:omega_b instead.")
  (omega_b m))

(cl:ensure-generic-function 'twist_covariance-val :lambda-list '(m))
(cl:defmethod twist_covariance-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:twist_covariance-val is deprecated.  Use zzz_driver_msgs-msg:twist_covariance instead.")
  (twist_covariance m))

(cl:ensure-generic-function 'sa-val :lambda-list '(m))
(cl:defmethod sa-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:sa-val is deprecated.  Use zzz_driver_msgs-msg:sa instead.")
  (sa m))

(cl:ensure-generic-function 'ad-val :lambda-list '(m))
(cl:defmethod ad-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:ad-val is deprecated.  Use zzz_driver_msgs-msg:ad instead.")
  (ad m))

(cl:ensure-generic-function 'ab-val :lambda-list '(m))
(cl:defmethod ab-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:ab-val is deprecated.  Use zzz_driver_msgs-msg:ab instead.")
  (ab m))

(cl:ensure-generic-function 'epsilon_s-val :lambda-list '(m))
(cl:defmethod epsilon_s-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:epsilon_s-val is deprecated.  Use zzz_driver_msgs-msg:epsilon_s instead.")
  (epsilon_s m))

(cl:ensure-generic-function 'epsilon_d-val :lambda-list '(m))
(cl:defmethod epsilon_d-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:epsilon_d-val is deprecated.  Use zzz_driver_msgs-msg:epsilon_d instead.")
  (epsilon_d m))

(cl:ensure-generic-function 'epsilon_b-val :lambda-list '(m))
(cl:defmethod epsilon_b-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:epsilon_b-val is deprecated.  Use zzz_driver_msgs-msg:epsilon_b instead.")
  (epsilon_b m))

(cl:ensure-generic-function 'accel_covariance-val :lambda-list '(m))
(cl:defmethod accel_covariance-val ((m <FrenetSerretState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_driver_msgs-msg:accel_covariance-val is deprecated.  Use zzz_driver_msgs-msg:accel_covariance instead.")
  (accel_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrenetSerretState>) ostream)
  "Serializes a message object of type '<FrenetSerretState>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi_b))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega_b))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ab))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epsilon_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epsilon_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epsilon_b))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrenetSerretState>) istream)
  "Deserializes a message object of type '<FrenetSerretState>"
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
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi_b) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'pose_covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'pose_covariance)))
    (cl:dotimes (i 36)
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
    (cl:setf (cl:slot-value msg 'vb) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_b) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'twist_covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'twist_covariance)))
    (cl:dotimes (i 36)
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
    (cl:setf (cl:slot-value msg 'ab) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epsilon_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epsilon_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epsilon_b) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'accel_covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'accel_covariance)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrenetSerretState>)))
  "Returns string type for a message object of type '<FrenetSerretState>"
  "zzz_driver_msgs/FrenetSerretState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrenetSerretState)))
  "Returns string type for a message object of type 'FrenetSerretState"
  "zzz_driver_msgs/FrenetSerretState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrenetSerretState>)))
  "Returns md5sum for a message object of type '<FrenetSerretState>"
  "f03652b9c5f9bef88b4d78664fce1034")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrenetSerretState)))
  "Returns md5sum for a message object of type 'FrenetSerretState"
  "f03652b9c5f9bef88b4d78664fce1034")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrenetSerretState>)))
  "Returns full string definition for message of type '<FrenetSerretState>"
  (cl:format cl:nil "# This message describes a state in 3d Frenet-Serret Frame~%# Currently we don't use 3D frenet state actually~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 3D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%float32 b # Offset in binormal direction~%float32 psi_s~%float32 psi_d~%float32 psi_b~%float32[36] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 vb~%float32 omega_s~%float32 omega_d~%float32 omega_b~%float32[36] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 ab~%float32 epsilon_s~%float32 epsilon_d~%float32 epsilon_b~%float32[36] accel_covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrenetSerretState)))
  "Returns full string definition for message of type 'FrenetSerretState"
  (cl:format cl:nil "# This message describes a state in 3d Frenet-Serret Frame~%# Currently we don't use 3D frenet state actually~%# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas~%~%# 3D states~%float32 s # Offset in tanget direction~%float32 d # Offset in normal direction~%float32 b # Offset in binormal direction~%float32 psi_s~%float32 psi_d~%float32 psi_b~%float32[36] pose_covariance~%~%# First order derivatives~%float32 vs~%float32 vd~%float32 vb~%float32 omega_s~%float32 omega_d~%float32 omega_b~%float32[36] twist_covariance~%~%# Second order derivatives~%float32 sa # prevent keyword conflict~%float32 ad~%float32 ab~%float32 epsilon_s~%float32 epsilon_d~%float32 epsilon_b~%float32[36] accel_covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrenetSerretState>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'twist_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accel_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrenetSerretState>))
  "Converts a ROS message object to a list"
  (cl:list 'FrenetSerretState
    (cl:cons ':s (s msg))
    (cl:cons ':d (d msg))
    (cl:cons ':b (b msg))
    (cl:cons ':psi_s (psi_s msg))
    (cl:cons ':psi_d (psi_d msg))
    (cl:cons ':psi_b (psi_b msg))
    (cl:cons ':pose_covariance (pose_covariance msg))
    (cl:cons ':vs (vs msg))
    (cl:cons ':vd (vd msg))
    (cl:cons ':vb (vb msg))
    (cl:cons ':omega_s (omega_s msg))
    (cl:cons ':omega_d (omega_d msg))
    (cl:cons ':omega_b (omega_b msg))
    (cl:cons ':twist_covariance (twist_covariance msg))
    (cl:cons ':sa (sa msg))
    (cl:cons ':ad (ad msg))
    (cl:cons ':ab (ab msg))
    (cl:cons ':epsilon_s (epsilon_s msg))
    (cl:cons ':epsilon_d (epsilon_d msg))
    (cl:cons ':epsilon_b (epsilon_b msg))
    (cl:cons ':accel_covariance (accel_covariance msg))
))
