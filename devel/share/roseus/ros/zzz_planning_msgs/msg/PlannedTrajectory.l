;; Auto-generated. Do not edit!


(when (boundp 'zzz_planning_msgs::PlannedTrajectory)
  (if (not (find-package "ZZZ_PLANNING_MSGS"))
    (make-package "ZZZ_PLANNING_MSGS"))
  (shadow 'PlannedTrajectory (find-package "ZZZ_PLANNING_MSGS")))
(unless (find-package "ZZZ_PLANNING_MSGS::PLANNEDTRAJECTORY")
  (make-package "ZZZ_PLANNING_MSGS::PLANNEDTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude PlannedTrajectory.msg.html


(defclass zzz_planning_msgs::PlannedTrajectory
  :super ros::object
  :slots (_Trajectory ))

(defmethod zzz_planning_msgs::PlannedTrajectory
  (:init
   (&key
    ((:Trajectory __Trajectory) (let (r) (dotimes (i 0) (push (instance zzz_planning_msgs::VehicleState :init) r)) r))
    )
   (send-super :init)
   (setq _Trajectory __Trajectory)
   self)
  (:Trajectory
   (&rest __Trajectory)
   (if (keywordp (car __Trajectory))
       (send* _Trajectory __Trajectory)
     (progn
       (if __Trajectory (setq _Trajectory (car __Trajectory)))
       _Trajectory)))
  (:serialization-length
   ()
   (+
    ;; zzz_planning_msgs/VehicleState[] _Trajectory
    (apply #'+ (send-all _Trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; zzz_planning_msgs/VehicleState[] _Trajectory
     (write-long (length _Trajectory) s)
     (dolist (elem _Trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; zzz_planning_msgs/VehicleState[] _Trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Trajectory (let (r) (dotimes (i n) (push (instance zzz_planning_msgs::VehicleState :init) r)) r))
     (dolist (elem- _Trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get zzz_planning_msgs::PlannedTrajectory :md5sum-) "ae087f427f20285f5721d2851c9817a3")
(setf (get zzz_planning_msgs::PlannedTrajectory :datatype-) "zzz_planning_msgs/PlannedTrajectory")
(setf (get zzz_planning_msgs::PlannedTrajectory :definition-)
      "VehicleState[] Trajectory
================================================================================
MSG: zzz_planning_msgs/VehicleState

float32 x # m
float32 y # m
float32 z # m

float32 vx # m/s
float32 vy # m/s
float32 vz # m/s

float32 vl # m/s
float32 vr # m/s

float32 ax # m/s
float32 ay # m/s
float32 az # m/s

float32 steer_angle #degree
float32 acc #m/ss
")



(provide :zzz_planning_msgs/PlannedTrajectory "ae087f427f20285f5721d2851c9817a3")


