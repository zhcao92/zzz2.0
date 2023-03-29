
(cl:in-package :asdf)

(defsystem "zzz_planning_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DecisionTrajectory" :depends-on ("_package_DecisionTrajectory"))
    (:file "_package_DecisionTrajectory" :depends-on ("_package"))
    (:file "PlannedTrajectory" :depends-on ("_package_PlannedTrajectory"))
    (:file "_package_PlannedTrajectory" :depends-on ("_package"))
    (:file "VehicleState" :depends-on ("_package_VehicleState"))
    (:file "_package_VehicleState" :depends-on ("_package"))
  ))