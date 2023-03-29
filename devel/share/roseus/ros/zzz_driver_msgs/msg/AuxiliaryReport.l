;; Auto-generated. Do not edit!


(when (boundp 'zzz_driver_msgs::AuxiliaryReport)
  (if (not (find-package "ZZZ_DRIVER_MSGS"))
    (make-package "ZZZ_DRIVER_MSGS"))
  (shadow 'AuxiliaryReport (find-package "ZZZ_DRIVER_MSGS")))
(unless (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT")
  (make-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryReport.msg.html


(intern "*FCW_AVAILABLE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*FCW_AVAILABLE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*FCW_AVAILABLE* 1)
(intern "*FCW_ALERT*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*FCW_ALERT* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*FCW_ALERT* 2)
(intern "*AEB_AVAILABLE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*AEB_AVAILABLE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*AEB_AVAILABLE* 1)
(intern "*AEB_PRECHARGE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*AEB_PRECHARGE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*AEB_PRECHARGE* 2)
(intern "*AEB_BRAKING*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*AEB_BRAKING* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*AEB_BRAKING* 4)
(intern "*ACC_AVAILABLE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*ACC_AVAILABLE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*ACC_AVAILABLE* 1)
(intern "*ACC_BRAKING*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*ACC_BRAKING* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*ACC_BRAKING* 2)
(intern "*LDW_AVAILABLE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*LDW_AVAILABLE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*LDW_AVAILABLE* 1)
(intern "*LDW_LEFT_ALERT*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*LDW_LEFT_ALERT* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*LDW_LEFT_ALERT* 2)
(intern "*LDW_RIGHT_ALERT*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*LDW_RIGHT_ALERT* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*LDW_RIGHT_ALERT* 4)
(intern "*BSD_AVAILABLE*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*BSD_AVAILABLE* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*BSD_AVAILABLE* 1)
(intern "*BSD_LEFT_ALERT*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*BSD_LEFT_ALERT* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*BSD_LEFT_ALERT* 2)
(intern "*BSD_RIGHT_ALERT*" (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(shadow '*BSD_RIGHT_ALERT* (find-package "ZZZ_DRIVER_MSGS::AUXILIARYREPORT"))
(defconstant zzz_driver_msgs::AuxiliaryReport::*BSD_RIGHT_ALERT* 4)
(defclass zzz_driver_msgs::AuxiliaryReport
  :super ros::object
  :slots (_fcw_flag _aeb_flag _acc_flag _ldw_flag _bsd_flag ))

(defmethod zzz_driver_msgs::AuxiliaryReport
  (:init
   (&key
    ((:fcw_flag __fcw_flag) 0)
    ((:aeb_flag __aeb_flag) 0)
    ((:acc_flag __acc_flag) 0)
    ((:ldw_flag __ldw_flag) 0)
    ((:bsd_flag __bsd_flag) 0)
    )
   (send-super :init)
   (setq _fcw_flag (round __fcw_flag))
   (setq _aeb_flag (round __aeb_flag))
   (setq _acc_flag (round __acc_flag))
   (setq _ldw_flag (round __ldw_flag))
   (setq _bsd_flag (round __bsd_flag))
   self)
  (:fcw_flag
   (&optional __fcw_flag)
   (if __fcw_flag (setq _fcw_flag __fcw_flag)) _fcw_flag)
  (:aeb_flag
   (&optional __aeb_flag)
   (if __aeb_flag (setq _aeb_flag __aeb_flag)) _aeb_flag)
  (:acc_flag
   (&optional __acc_flag)
   (if __acc_flag (setq _acc_flag __acc_flag)) _acc_flag)
  (:ldw_flag
   (&optional __ldw_flag)
   (if __ldw_flag (setq _ldw_flag __ldw_flag)) _ldw_flag)
  (:bsd_flag
   (&optional __bsd_flag)
   (if __bsd_flag (setq _bsd_flag __bsd_flag)) _bsd_flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _fcw_flag
    1
    ;; uint8 _aeb_flag
    1
    ;; uint8 _acc_flag
    1
    ;; uint8 _ldw_flag
    1
    ;; uint8 _bsd_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _fcw_flag
       (write-byte _fcw_flag s)
     ;; uint8 _aeb_flag
       (write-byte _aeb_flag s)
     ;; uint8 _acc_flag
       (write-byte _acc_flag s)
     ;; uint8 _ldw_flag
       (write-byte _ldw_flag s)
     ;; uint8 _bsd_flag
       (write-byte _bsd_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _fcw_flag
     (setq _fcw_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _aeb_flag
     (setq _aeb_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _acc_flag
     (setq _acc_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ldw_flag
     (setq _ldw_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bsd_flag
     (setq _bsd_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get zzz_driver_msgs::AuxiliaryReport :md5sum-) "46bed4f4c85b89c6936b9a6716c138b1")
(setf (get zzz_driver_msgs::AuxiliaryReport :datatype-) "zzz_driver_msgs/AuxiliaryReport")
(setf (get zzz_driver_msgs::AuxiliaryReport :definition-)
      "# This message provide interface for additional vehicle modules, e.g. ACC, BSD


# Forward Collison Warning status
uint8 fcw_flag
uint8 FCW_AVAILABLE = 1
uint8 FCW_ALERT = 2

# Automatic Emergency Brake status
uint8 aeb_flag
uint8 AEB_AVAILABLE = 1
uint8 AEB_PRECHARGE = 2
uint8 AEB_BRAKING = 4

# Adaptive Cruise Control status
uint8 acc_flag
uint8 ACC_AVAILABLE = 1
uint8 ACC_BRAKING = 2

# Lane Departure Warning status
uint8 ldw_flag
uint8 LDW_AVAILABLE = 1
uint8 LDW_LEFT_ALERT = 2
uint8 LDW_RIGHT_ALERT = 4

# Blind Spot Detection status
uint8 bsd_flag
uint8 BSD_AVAILABLE = 1
uint8 BSD_LEFT_ALERT = 2
uint8 BSD_RIGHT_ALERT = 4

")



(provide :zzz_driver_msgs/AuxiliaryReport "46bed4f4c85b89c6936b9a6716c138b1")


