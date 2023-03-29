;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::FrenetSerretState2D)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'FrenetSerretState2D (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::FRENETSERRETSTATE2D")
  (make-package "ZZZ_DRIVER_MSGS::FRENETSERRETSTATE2D"))

(in-package "ROS")
;;//! \htmlinclude FrenetSerretState2D.msg.html


(defclass zzz_driver_msgs::FrenetSerretState2D
  :super ros::object
  :slots (_s _d _psi _pose_covariance _vs _vd _omega _twist_covariance _sa _ad _epsilon _accel_covariance ))

(defmethod zzz_driver_msgs::FrenetSerretState2D
  (:init
   (&key
    ((:s __s) 0.0)
    ((:d __d) 0.0)
    ((:psi __psi) 0.0)
    ((:pose_covariance __pose_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:vs __vs) 0.0)
    ((:vd __vd) 0.0)
    ((:omega __omega) 0.0)
    ((:twist_covariance __twist_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:sa __sa) 0.0)
    ((:ad __ad) 0.0)
    ((:epsilon __epsilon) 0.0)
    ((:accel_covariance __accel_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _s (float __s))
   (setq _d (float __d))
   (setq _psi (float __psi))
   (setq _pose_covariance __pose_covariance)
   (setq _vs (float __vs))
   (setq _vd (float __vd))
   (setq _omega (float __omega))
   (setq _twist_covariance __twist_covariance)
   (setq _sa (float __sa))
   (setq _ad (float __ad))
   (setq _epsilon (float __epsilon))
   (setq _accel_covariance __accel_covariance)
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:pose_covariance
   (&optional __pose_covariance)
   (if __pose_covariance (setq _pose_covariance __pose_covariance)) _pose_covariance)
  (:vs
   (&optional __vs)
   (if __vs (setq _vs __vs)) _vs)
  (:vd
   (&optional __vd)
   (if __vd (setq _vd __vd)) _vd)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:twist_covariance
   (&optional __twist_covariance)
   (if __twist_covariance (setq _twist_covariance __twist_covariance)) _twist_covariance)
  (:sa
   (&optional __sa)
   (if __sa (setq _sa __sa)) _sa)
  (:ad
   (&optional __ad)
   (if __ad (setq _ad __ad)) _ad)
  (:epsilon
   (&optional __epsilon)
   (if __epsilon (setq _epsilon __epsilon)) _epsilon)
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
    ;; float32 _psi
    4
    ;; float32[9] _pose_covariance
    (* 4    9)
    ;; float32 _vs
    4
    ;; float32 _vd
    4
    ;; float32 _omega
    4
    ;; float32[9] _twist_covariance
    (* 4    9)
    ;; float32 _sa
    4
    ;; float32 _ad
    4
    ;; float32 _epsilon
    4
    ;; float32[9] _accel_covariance
    (* 4    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _d
       (sys::poke _d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[9] _pose_covariance
     (dotimes (i 9)
       (sys::poke (elt _pose_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _vs
       (sys::poke _vs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vd
       (sys::poke _vd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[9] _twist_covariance
     (dotimes (i 9)
       (sys::poke (elt _twist_covariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _sa
       (sys::poke _sa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ad
       (sys::poke _ad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epsilon
       (sys::poke _epsilon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[9] _accel_covariance
     (dotimes (i 9)
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
   ;; float32 _psi
     (setq _psi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[9] _pose_covariance
   (dotimes (i (length _pose_covariance))
     (setf (elt _pose_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _vs
     (setq _vs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vd
     (setq _vd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega
     (setq _omega (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[9] _twist_covariance
   (dotimes (i (length _twist_covariance))
     (setf (elt _twist_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _sa
     (setq _sa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ad
     (setq _ad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epsilon
     (setq _epsilon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[9] _accel_covariance
   (dotimes (i (length _accel_covariance))
     (setf (elt _accel_covariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get zzz_driver_msgs::FrenetSerretState2D :md5sum-) "df9764c6ee98f33fca6c752fdbb15bc4")
(setf (get zzz_driver_msgs::FrenetSerretState2D :datatype-) "zzz_driver_msgs/FrenetSerretState2D")
(setf (get zzz_driver_msgs::FrenetSerretState2D :definition-)
      "# This message describes a state in 2d Frenet-Serret Frame
# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction
# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas

# 2D states
float32 s # Offset in tanget direction
float32 d # Offset in normal direction
          # we omit the offset in binormal direction
float32 psi # Heading angle in s-d plane
float32[9] pose_covariance

# First order derivatives
float32 vs
float32 vd
float32 omega
float32[9] twist_covariance

# Second order derivatives
float32 sa # prevent keyword conflict
float32 ad
float32 epsilon
float32[9] accel_covariance

")



(provide :zzz_driver_msgs/FrenetSerretState2D "df9764c6ee98f33fca6c752fdbb15bc4")


