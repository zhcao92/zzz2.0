;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::FrenetSerretState)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'FrenetSerretState (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::FRENETSERRETSTATE")
  (make-package "ZZZ_DRIVER_MSGS::FRENETSERRETSTATE"))

(in-package "ROS")
;;//! \htmlinclude FrenetSerretState.msg.html


(defclass zzz_driver_msgs::FrenetSerretState
  :super ros::object
  :slots (_s _d _b _psi_s _psi_d _psi_b _pose_covariance _vs _vd _vb _omega_s _omega_d _omega_b _twist_covariance _sa _ad _ab _epsilon_s _epsilon_d _epsilon_b _accel_covariance ))

(defmethod zzz_driver_msgs::FrenetSerretState
  (:init
   (&key
    ((:s __s) 0.0)
    ((:d __d) 0.0)
    ((:b __b) 0.0)
    ((:psi_s __psi_s) 0.0)
    ((:psi_d __psi_d) 0.0)
    ((:psi_b __psi_b) 0.0)
    ((:pose_covariance __pose_covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:vs __vs) 0.0)
    ((:vd __vd) 0.0)
    ((:vb __vb) 0.0)
    ((:omega_s __omega_s) 0.0)
    ((:omega_d __omega_d) 0.0)
    ((:omega_b __omega_b) 0.0)
    ((:twist_covariance __twist_covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:sa __sa) 0.0)
    ((:ad __ad) 0.0)
    ((:ab __ab) 0.0)
    ((:epsilon_s __epsilon_s) 0.0)
    ((:epsilon_d __epsilon_d) 0.0)
    ((:epsilon_b __epsilon_b) 0.0)
    ((:accel_covariance __accel_covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _d (float __d))
   (setq _b (float __b))
   (setq _psi_s (float __psi_s))
   (setq _psi_d (float __psi_d))
   (setq _psi_b (float __psi_b))
   (setq _pose_covariance __pose_covariance)
   (setq _vs (float __vs))
   (setq _vd (float __vd))
   (setq _vb (float __vb))
   (setq _omega_s (float __omega_s))
   (setq _omega_d (float __omega_d))
   (setq _omega_b (float __omega_b))
   (setq _twist_covariance __twist_covariance)
   (setq _sa (float __sa))
   (setq _ad (float __ad))
   (setq _ab (float __ab))
   (setq _epsilon_s (float __epsilon_s))
   (setq _epsilon_d (float __epsilon_d))
   (setq _epsilon_b (float __epsilon_b))
   (setq _accel_covariance __accel_covariance)
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:psi_s
   (&optional __psi_s)
   (if __psi_s (setq _psi_s __psi_s)) _psi_s)
  (:psi_d
   (&optional __psi_d)
   (if __psi_d (setq _psi_d __psi_d)) _psi_d)
  (:psi_b
   (&optional __psi_b)
   (if __psi_b (setq _psi_b __psi_b)) _psi_b)
  (:pose_covariance
   (&optional __pose_covariance)
   (if __pose_covariance (setq _pose_covariance __pose_covariance)) _pose_covariance)
  (:vs
   (&optional __vs)
   (if __vs (setq _vs __vs)) _vs)
  (:vd
   (&optional __vd)
   (if __vd (setq _vd __vd)) _vd)
  (:vb
   (&optional __vb)
   (if __vb (setq _vb __vb)) _vb)
  (:omega_s
   (&optional __omega_s)
   (if __omega_s (setq _omega_s __omega_s)) _omega_s)
  (:omega_d
   (&optional __omega_d)
   (if __omega_d (setq _omega_d __omega_d)) _omega_d)
  (:omega_b
   (&optional __omega_b)
   (if __omega_b (setq _omega_b __omega_b)) _omega_b)
  (:twist_covariance
   (&optional __twist_covariance)
   (if __twist_covariance (setq _twist_covariance __twist_covariance)) _twist_covariance)
  (:sa
   (&optional __sa)
   (if __sa (setq _sa __sa)) _sa)
  (:ad
   (&optional __ad)
   (if __ad (setq _ad __ad)) _ad)
  (:ab
   (&optional __ab)
   (if __ab (setq _ab __ab)) _ab)
  (:epsilon_s
   (&optional __epsilon_s)
   (if __epsilon_s (setq _epsilon_s __epsilon_s)) _epsilon_s)
  (:epsilon_d
   (&optional __epsilon_d)
   (if __epsilon_d (setq _epsilon_d __epsilon_d)) _epsilon_d)
  (:epsilon_b
   (&optional __epsilon_b)
   (if __epsilon_b (setq _epsilon_b __epsilon_b)) _epsilon_b)
  (:accel_covariance
   (&optional __accel_covariance)
   (if __accel_covariance (setq _accel_covariance __accel_covariance)) _accel_covariance)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ;; float32 _d
    4
    ;; float32 _b
    4
    ;; float32 _psi_s
    4
    ;; float32 _psi_d
    4
    ;; float32 _psi_b
    4
    ;; float32[36] _pose_covariance
    (* 4    36)
    ;; float32 _vs
    4
    ;; float32 _vd
    4
    ;; float32 _vb
    4
    ;; float32 _omega_s
    4
    ;; float32 _omega_d
    4
    ;; float32 _omega_b
    4
    ;; float32[36] _twist_covariance
    (* 4    36)
    ;; float32 _sa
    4
    ;; float32 _ad
    4
    ;; float32 _ab
    4
    ;; float32 _epsilon_s
    4
    ;; float32 _epsilon_d
    4
    ;; float32 _epsilon_b
    4
    ;; float32[36] _accel_covariance
    (* 4    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi_s
       (sys::poke _psi_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi_d
       (sys::poke _psi_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi_b
       (sys::poke _psi_b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[36] _pose_covariance
     (dotimes (i 36)
       (sys::poke (elt _pose_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _vs
       (sys::poke _vs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vd
       (sys::poke _vd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vb
       (sys::poke _vb (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_s
       (sys::poke _omega_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_d
       (sys::poke _omega_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_b
       (sys::poke _omega_b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[36] _twist_covariance
     (dotimes (i 36)
       (sys::poke (elt _twist_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _sa
       (sys::poke _sa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ad
       (sys::poke _ad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ab
       (sys::poke _ab (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epsilon_s
       (sys::poke _epsilon_s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epsilon_d
       (sys::poke _epsilon_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epsilon_b
       (sys::poke _epsilon_b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[36] _accel_covariance
     (dotimes (i 36)
       (sys::poke (elt _accel_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _d
     (setq _d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi_s
     (setq _psi_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi_d
     (setq _psi_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi_b
     (setq _psi_b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[36] _pose_covariance
   (dotimes (i (length _pose_covariance))
     (setf (elt _pose_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _vs
     (setq _vs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vd
     (setq _vd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vb
     (setq _vb (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_s
     (setq _omega_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_d
     (setq _omega_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_b
     (setq _omega_b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[36] _twist_covariance
   (dotimes (i (length _twist_covariance))
     (setf (elt _twist_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _sa
     (setq _sa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ad
     (setq _ad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ab
     (setq _ab (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epsilon_s
     (setq _epsilon_s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epsilon_d
     (setq _epsilon_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epsilon_b
     (setq _epsilon_b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[36] _accel_covariance
   (dotimes (i (length _accel_covariance))
     (setf (elt _accel_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get zzz_driver_msgs::FrenetSerretState :md5sum-) "f03652b9c5f9bef88b4d78664fce1034")
(setf (get zzz_driver_msgs::FrenetSerretState :datatype-) "zzz_driver_msgs/FrenetSerretState")
(setf (get zzz_driver_msgs::FrenetSerretState :definition-)
      "# This message describes a state in 3d Frenet-Serret Frame
# Currently we don't use 3D frenet state actually
# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas

# 3D states
float32 s # Offset in tanget direction
float32 d # Offset in normal direction
float32 b # Offset in binormal direction
float32 psi_s
float32 psi_d
float32 psi_b
float32[36] pose_covariance

# First order derivatives
float32 vs
float32 vd
float32 vb
float32 omega_s
float32 omega_d
float32 omega_b
float32[36] twist_covariance

# Second order derivatives
float32 sa # prevent keyword conflict
float32 ad
float32 ab
float32 epsilon_s
float32 epsilon_d
float32 epsilon_b
float32[36] accel_covariance

")



(provide :zzz_driver_msgs/FrenetSerretState "f03652b9c5f9bef88b4d78664fce1034")


