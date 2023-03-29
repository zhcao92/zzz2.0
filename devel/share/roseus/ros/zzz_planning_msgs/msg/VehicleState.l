;; Auto-generated. Do not edit!


(when (boundp 'zzz_planning_msgs::VehicleState)
  (if (not (find-package "ZZZ_PLANNING_MSGS"))
    (make-package "ZZZ_PLANNING_MSGS"))
  (shadow 'VehicleState (find-package "ZZZ_PLANNING_MSGS")))
(unless (find-package "ZZZ_PLANNING_MSGS::VEHICLESTATE")
  (make-package "ZZZ_PLANNING_MSGS::VEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleState.msg.html


(defclass zzz_planning_msgs::VehicleState
  :super ros::object
  :slots (_x _y _z _vx _vy _vz _vl _vr _ax _ay _az _steer_angle _acc ))

(defmethod zzz_planning_msgs::VehicleState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:vl __vl) 0.0)
    ((:vr __vr) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:steer_angle __steer_angle) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _vl (float __vl))
   (setq _vr (float __vr))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _steer_angle (float __steer_angle))
   (setq _acc (float __acc))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:vl
   (&optional __vl)
   (if __vl (setq _vl __vl)) _vl)
  (:vr
   (&optional __vr)
   (if __vr (setq _vr __vr)) _vr)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _vz
    4
    ;; float32 _vl
    4
    ;; float32 _vr
    4
    ;; float32 _ax
    4
    ;; float32 _ay
    4
    ;; float32 _az
    4
    ;; float32 _steer_angle
    4
    ;; float32 _acc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vl
       (sys::poke _vl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vr
       (sys::poke _vr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _az
       (sys::poke _az (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vz
     (setq _vz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vl
     (setq _vl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vr
     (setq _vr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax
     (setq _ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ay
     (setq _ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _az
     (setq _az (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get zzz_planning_msgs::VehicleState :md5sum-) "c05802da177a7a3327b6d367f339831e")
(setf (get zzz_planning_msgs::VehicleState :datatype-) "zzz_planning_msgs/VehicleState")
(setf (get zzz_planning_msgs::VehicleState :definition-)
      "
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



(provide :zzz_planning_msgs/VehicleState "c05802da177a7a3327b6d367f339831e")


