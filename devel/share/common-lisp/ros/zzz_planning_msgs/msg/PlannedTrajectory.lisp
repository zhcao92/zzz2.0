; Auto-generated. Do not edit!


(cl:in-package zzz_planning_msgs-msg)


;//! \htmlinclude PlannedTrajectory.msg.html

(cl:defclass <PlannedTrajectory> (roslisp-msg-protocol:ros-message)
  ((Trajectory
    :reader Trajectory
    :initarg :Trajectory
    :type (cl:vector zzz_planning_msgs-msg:VehicleState)
   :initform (cl:make-array 0 :element-type 'zzz_planning_msgs-msg:VehicleState :initial-element (cl:make-instance 'zzz_planning_msgs-msg:VehicleState))))
)

(cl:defclass PlannedTrajectory (<PlannedTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannedTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannedTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name zzz_planning_msgs-msg:<PlannedTrajectory> is deprecated: use zzz_planning_msgs-msg:PlannedTrajectory instead.")))

(cl:ensure-generic-function 'Trajectory-val :lambda-list '(m))
(cl:defmethod Trajectory-val ((m <PlannedTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader zzz_planning_msgs-msg:Trajectory-val is deprecated.  Use zzz_planning_msgs-msg:Trajectory instead.")
  (Trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannedTrajectory>) ostream)
  "Serializes a message object of type '<PlannedTrajectory>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannedTrajectory>) istream)
  "Deserializes a message object of type '<PlannedTrajectory>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'zzz_planning_msgs-msg:VehicleState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannedTrajectory>)))
  "Returns string type for a message object of type '<PlannedTrajectory>"
  "zzz_planning_msgs/PlannedTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannedTrajectory)))
  "Returns string type for a message object of type 'PlannedTrajectory"
  "zzz_planning_msgs/PlannedTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannedTrajectory>)))
  "Returns md5sum for a message object of type '<PlannedTrajectory>"
  "ae087f427f20285f5721d2851c9817a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannedTrajectory)))
  "Returns md5sum for a message object of type 'PlannedTrajectory"
  "ae087f427f20285f5721d2851c9817a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannedTrajectory>)))
  "Returns full string definition for message of type '<PlannedTrajectory>"
  (cl:format cl:nil "VehicleState[] Trajectory~%================================================================================~%MSG: zzz_planning_msgs/VehicleState~%~%float32 x # m~%float32 y # m~%float32 z # m~%~%float32 vx # m/s~%float32 vy # m/s~%float32 vz # m/s~%~%float32 vl # m/s~%float32 vr # m/s~%~%float32 ax # m/s~%float32 ay # m/s~%float32 az # m/s~%~%float32 steer_angle #degree~%float32 acc #m/ss~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannedTrajectory)))
  "Returns full string definition for message of type 'PlannedTrajectory"
  (cl:format cl:nil "VehicleState[] Trajectory~%================================================================================~%MSG: zzz_planning_msgs/VehicleState~%~%float32 x # m~%float32 y # m~%float32 z # m~%~%float32 vx # m/s~%float32 vy # m/s~%float32 vz # m/s~%~%float32 vl # m/s~%float32 vr # m/s~%~%float32 ax # m/s~%float32 ay # m/s~%float32 az # m/s~%~%float32 steer_angle #degree~%float32 acc #m/ss~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannedTrajectory>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannedTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannedTrajectory
    (cl:cons ':Trajectory (Trajectory msg))
))
