
(cl:in-package :asdf)

(defsystem "zzz_cognition_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
               :zzz_driver_msgs-msg
               :zzz_navigation_msgs-msg
               :zzz_perception_msgs-msg
)
  :components ((:file "_package")
    (:file "DrivingSpace" :depends-on ("_package_DrivingSpace"))
    (:file "_package_DrivingSpace" :depends-on ("_package"))
    (:file "DynamicBoundary" :depends-on ("_package_DynamicBoundary"))
    (:file "_package_DynamicBoundary" :depends-on ("_package"))
    (:file "DynamicBoundaryPoint" :depends-on ("_package_DynamicBoundaryPoint"))
    (:file "_package_DynamicBoundaryPoint" :depends-on ("_package"))
    (:file "JunctionMapState" :depends-on ("_package_JunctionMapState"))
    (:file "_package_JunctionMapState" :depends-on ("_package"))
    (:file "LaneState" :depends-on ("_package_LaneState"))
    (:file "_package_LaneState" :depends-on ("_package"))
    (:file "MapState" :depends-on ("_package_MapState"))
    (:file "_package_MapState" :depends-on ("_package"))
    (:file "MultiLaneMapState" :depends-on ("_package_MultiLaneMapState"))
    (:file "_package_MultiLaneMapState" :depends-on ("_package"))
    (:file "RoadObstacle" :depends-on ("_package_RoadObstacle"))
    (:file "_package_RoadObstacle" :depends-on ("_package"))
    (:file "VehicleLocation" :depends-on ("_package_VehicleLocation"))
    (:file "_package_VehicleLocation" :depends-on ("_package"))
    (:file "VehicleLocationArray" :depends-on ("_package_VehicleLocationArray"))
    (:file "_package_VehicleLocationArray" :depends-on ("_package"))
  ))