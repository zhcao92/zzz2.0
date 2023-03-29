; Auto-generated. Do not edit!


(cl:in-package zzz_navigation_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (bidirectional
    :reader bidirectional
    :initarg :bidirectional
    :type cl:boolean
    :initform cl:nil)
   (stop_state
    :reader stop_state
    :initarg :stop_state
    :type cl:fixnum
    :initform 0)
   (central_path_points
    :reader central_path_points
    :initarg :central_path_points
    :type (cl:vector zzz_navigation_msgs-msg:LanePoint)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:LanePoint :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:LanePoint)))
   (central_path_coeffs
    :reader central_path_coeffs
    :initarg :central_path_coeffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (central_path_type
    :reader central_path_type
    :initarg :central_path_type
    :type cl:fixnum
    :initform 0)
   (left_boundaries
    :reader left_boundaries
    :initarg :left_boundaries
    :type (cl:vector zzz_navigation_msgs-msg:LaneBoundary)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:LaneBoundary :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:LaneBoundary)))
   (right_boundaries
    :reader right_boundaries
    :initarg :right_boundaries
    :type (cl:vector zzz_navigation_msgs-msg:LaneBoundary)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:LaneBoundary :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:LaneBoundary)))
   (situations
    :reader situations
    :initarg :situations
    :type (cl:vector zzz_navigation_msgs-msg:LaneSituation)
   :initform (cl:make-array 0 :element-type 'zzz_navigation_msgs-msg:LaneSituation :initial-element (cl:make-instance 'zzz_navigation_msgs-msg:LaneSituation)))
   (traffic_light_pos
    :reader traffic_light_pos
    :initarg :traffic_light_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_navigation_msgs-msg:<Lane> is deprecated: use zzz_navigation_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:index-val is deprecated.  Use zzz_navigation_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:speed_limit-val is deprecated.  Use zzz_navigation_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:length-val is deprecated.  Use zzz_navigation_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:width-val is deprecated.  Use zzz_navigation_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'bidirectional-val :lambda-list '(m))
(cl:defmethod bidirectional-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:bidirectional-val is deprecated.  Use zzz_navigation_msgs-msg:bidirectional instead.")
  (bidirectional m))

(cl:ensure-generic-function 'stop_state-val :lambda-list '(m))
(cl:defmethod stop_state-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:stop_state-val is deprecated.  Use zzz_navigation_msgs-msg:stop_state instead.")
  (stop_state m))

(cl:ensure-generic-function 'central_path_points-val :lambda-list '(m))
(cl:defmethod central_path_points-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:central_path_points-val is deprecated.  Use zzz_navigation_msgs-msg:central_path_points instead.")
  (central_path_points m))

(cl:ensure-generic-function 'central_path_coeffs-val :lambda-list '(m))
(cl:defmethod central_path_coeffs-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:central_path_coeffs-val is deprecated.  Use zzz_navigation_msgs-msg:central_path_coeffs instead.")
  (central_path_coeffs m))

(cl:ensure-generic-function 'central_path_type-val :lambda-list '(m))
(cl:defmethod central_path_type-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:central_path_type-val is deprecated.  Use zzz_navigation_msgs-msg:central_path_type instead.")
  (central_path_type m))

(cl:ensure-generic-function 'left_boundaries-val :lambda-list '(m))
(cl:defmethod left_boundaries-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:left_boundaries-val is deprecated.  Use zzz_navigation_msgs-msg:left_boundaries instead.")
  (left_boundaries m))

(cl:ensure-generic-function 'right_boundaries-val :lambda-list '(m))
(cl:defmethod right_boundaries-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:right_boundaries-val is deprecated.  Use zzz_navigation_msgs-msg:right_boundaries instead.")
  (right_boundaries m))

(cl:ensure-generic-function 'situations-val :lambda-list '(m))
(cl:defmethod situations-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:situations-val is deprecated.  Use zzz_navigation_msgs-msg:situations instead.")
  (situations m))

(cl:ensure-generic-function 'traffic_light_pos-val :lambda-list '(m))
(cl:defmethod traffic_light_pos-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_navigation_msgs-msg:traffic_light_pos-val is deprecated.  Use zzz_navigation_msgs-msg:traffic_light_pos instead.")
  (traffic_light_pos m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Lane>)))
    "Constants for message type '<Lane>"
  '((:STOP_STATE_UNKNOWN . 0)
    (:STOP_STATE_THRU . 1)
    (:STOP_STATE_YIELD . 2)
    (:STOP_STATE_STOP . 3)
    (:STOP_STATE_STOP_YIELD . 4)
    (:STOP_STATE_STOP_YIELD_ALL_WAY . 5)
    (:CENTRAL_PATH_WAYPOINT . 0)
    (:CENTRAL_PATH_LINE . 1)
    (:CENTRAL_PATH_CONIC . 2)
    (:CENTRAL_PATH_POLYNOMIAL . 3)
    (:CENTRAL_PATH_BEZIER . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Lane)))
    "Constants for message type 'Lane"
  '((:STOP_STATE_UNKNOWN . 0)
    (:STOP_STATE_THRU . 1)
    (:STOP_STATE_YIELD . 2)
    (:STOP_STATE_STOP . 3)
    (:STOP_STATE_STOP_YIELD . 4)
    (:STOP_STATE_STOP_YIELD_ALL_WAY . 5)
    (:CENTRAL_PATH_WAYPOINT . 0)
    (:CENTRAL_PATH_LINE . 1)
    (:CENTRAL_PATH_CONIC . 2)
    (:CENTRAL_PATH_POLYNOMIAL . 3)
    (:CENTRAL_PATH_BEZIER . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bidirectional) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_state)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'central_path_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'central_path_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'central_path_coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'central_path_coeffs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_path_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_boundaries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_boundaries))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_boundaries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_boundaries))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'situations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'situations))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'traffic_light_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'bidirectional) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_state)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'central_path_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'central_path_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:LanePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'central_path_coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'central_path_coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_path_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_boundaries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_boundaries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:LaneBoundary))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_boundaries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_boundaries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:LaneBoundary))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'situations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'situations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_navigation_msgs-msg:LaneSituation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "zzz_navigation_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "zzz_navigation_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "5cbd728e4b6ec4ecaad9c99fca2ccf56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "5cbd728e4b6ec4ecaad9c99fca2ccf56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "# This message describe a lane with polyline representation~%~%# ----- Basic properties -----~%# the rightest lane is 0, reference lane is -1~%# TODO: remove this field~%int16 index~%~%# Speed limit (km/h)~%float32 speed_limit~%~%# Length of the lane. Provided for easy computation~%float32 length~%float32 width~%~%# Whether this lane allow two way traffic~%# This can be true when the road is too narrow or in the center turning lane~%bool bidirectional # = False~%~%# The situation when lane ends. This field could be updated with dynamic info.~%uint8 stop_state # = 0~%uint8 STOP_STATE_UNKNOWN = 0~%uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light~%uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light~%uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light~%uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light~%uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign~%~%# ----- Central path representation -----~%# The central_path_points field is used when central_path_type is waypoint.~%# Otherwise, central_path_coeffs should be used~%LanePoint[] central_path_points~%float32[] central_path_coeffs~%~%uint8 central_path_type # = 0~%uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized~%uint8 CENTRAL_PATH_LINE = 1~%uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola~%uint8 CENTRAL_PATH_POLYNOMIAL = 3 #~%uint8 CENTRAL_PATH_BEZIER = 4~%~%# ----- Boundary representation -----~%# The boundary description of current lane.~%# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder~%LaneBoundary[] left_boundaries~%LaneBoundary[] right_boundaries~%~%# ----- Auxiliary information of the lane -----~%# Road situations on this line. This field could be updated with dynamic info.~%LaneSituation[] situations~%~%# ---- traffic ligth position ------ ~%float32[] traffic_light_pos~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneBoundary~%# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneSituation~%# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "# This message describe a lane with polyline representation~%~%# ----- Basic properties -----~%# the rightest lane is 0, reference lane is -1~%# TODO: remove this field~%int16 index~%~%# Speed limit (km/h)~%float32 speed_limit~%~%# Length of the lane. Provided for easy computation~%float32 length~%float32 width~%~%# Whether this lane allow two way traffic~%# This can be true when the road is too narrow or in the center turning lane~%bool bidirectional # = False~%~%# The situation when lane ends. This field could be updated with dynamic info.~%uint8 stop_state # = 0~%uint8 STOP_STATE_UNKNOWN = 0~%uint8 STOP_STATE_THRU = 1 # e.g. drive through at lane connection, green light~%uint8 STOP_STATE_YIELD = 2 # e.g. unprotected left/right turn, flashing yellow light~%uint8 STOP_STATE_STOP = 3 # e.g. red light, yellow light~%uint8 STOP_STATE_STOP_YIELD = 4 # e.g. stop sign, right turn at red light~%uint8 STOP_STATE_STOP_YIELD_ALL_WAY = 5 # e.g. flashing red light, all way stop sign~%~%# ----- Central path representation -----~%# The central_path_points field is used when central_path_type is waypoint.~%# Otherwise, central_path_coeffs should be used~%LanePoint[] central_path_points~%float32[] central_path_coeffs~%~%uint8 central_path_type # = 0~%uint8 CENTRAL_PATH_WAYPOINT = 0 # discretized~%uint8 CENTRAL_PATH_LINE = 1~%uint8 CENTRAL_PATH_CONIC = 2 # conic section, including parabola and hyperbola~%uint8 CENTRAL_PATH_POLYNOMIAL = 3 #~%uint8 CENTRAL_PATH_BEZIER = 4~%~%# ----- Boundary representation -----~%# The boundary description of current lane.~%# Not that the boundary type only describe the behaviour from current lane to neighbour lane or road shoulder~%LaneBoundary[] left_boundaries~%LaneBoundary[] right_boundaries~%~%# ----- Auxiliary information of the lane -----~%# Road situations on this line. This field could be updated with dynamic info.~%LaneSituation[] situations~%~%# ---- traffic ligth position ------ ~%float32[] traffic_light_pos~%================================================================================~%MSG: zzz_navigation_msgs/LanePoint~%# This message describe a road point from polyline represented lane~%~%# The 3D position of the lane point~%geometry_msgs/Point position~%~%# ----- Other useful information -----~%# Distance from lane start to current point. The distance of the first point should be zero~%float32 s~%~%# Slope at current position of the road~%# Can be used to control the throttle~%float32 slope~%~%# Road curvature at current position of the road~%# Can be used to slow down before turning~%float32 curvature~%~%# The yaw angle of tangent line (in radian)~%float32 tangent~%~%# Road width at current position~%# Can be used to determine the carefulness of driving~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneBoundary~%# This message describe the boundary type of a part of a lane~%~%# Lane boundary point~%LanePoint boundary_point~%~%# Boundary type from between `s` and `s` of the next section start~%uint8 boundary_type~%uint8 BOUNDARY_UNKNOWN = 0~%uint8 BOUNDARY_DASHED_WHITE = 1  # neighbour lane has same direction.~%uint8 BOUNDARY_DASHED_YELLOW = 2 # neighbour lane has different direction.~%uint8 BOUNDARY_SOLID_WHITE = 3   # neighbour lane has same direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW = 4  # neighbour lane has different direction, not allowed to change lane.~%uint8 BOUNDARY_SOLID_YELLOW_TURN = 5  # neighbour lane has different direction, not allowed to change lane unless turning.~%uint8 BOUNDARY_CURB = 6          # neighbour is road shoulder~%~%# Confidence of the lane boundary classification~%float32 confidence~%~%================================================================================~%MSG: zzz_navigation_msgs/LaneSituation~%# This message store any uncommon situations on a road~%# Situation can be a map specified object or fresh events~%~%# The location of the situation in a lane (distance from lane start)~%float32 s~%~%# How long this situation affect along the lane.~%# Inf means take effect until lane ends~%float32 length~%~%# Type of situation~%uint8 situation_type~%uint8 SITUATION_NOT_SPECIFIED = 0~%uint8 SITUATION_BLOCKED = 1 # Something blocked this lane, vehicle should stop here~%uint8 SITUATION_CROSSWALK = 2 # Crosswalk~%uint8 SITUATION_REDUCE_SPEED = 3 # Reducing speed is required. This can be due to speed bump, construction, or school bus stop, etc~%~%# ------- Situation information -------~%# The new speed limit. Zero means the vehicle is required to stop~%float32 reduced_max_speed~%~%# Additional information~%string comments~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     2
     4
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'central_path_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'central_path_coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_boundaries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_boundaries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'situations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':index (index msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':bidirectional (bidirectional msg))
    (cl:cons ':stop_state (stop_state msg))
    (cl:cons ':central_path_points (central_path_points msg))
    (cl:cons ':central_path_coeffs (central_path_coeffs msg))
    (cl:cons ':central_path_type (central_path_type msg))
    (cl:cons ':left_boundaries (left_boundaries msg))
    (cl:cons ':right_boundaries (right_boundaries msg))
    (cl:cons ':situations (situations msg))
    (cl:cons ':traffic_light_pos (traffic_light_pos msg))
))
