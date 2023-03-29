
(cl:in-package :asdf)

(defsystem "zzz_perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "BoundingBox2D" :depends-on ("_package_BoundingBox2D"))
    (:file "_package_BoundingBox2D" :depends-on ("_package"))
    (:file "CooperativeMsg" :depends-on ("_package_CooperativeMsg"))
    (:file "_package_CooperativeMsg" :depends-on ("_package"))
    (:file "DetectionBox" :depends-on ("_package_DetectionBox"))
    (:file "_package_DetectionBox" :depends-on ("_package"))
    (:file "DetectionBox2D" :depends-on ("_package_DetectionBox2D"))
    (:file "_package_DetectionBox2D" :depends-on ("_package"))
    (:file "DetectionBox2DArray" :depends-on ("_package_DetectionBox2DArray"))
    (:file "_package_DetectionBox2DArray" :depends-on ("_package"))
    (:file "DetectionBoxArray" :depends-on ("_package_DetectionBoxArray"))
    (:file "_package_DetectionBoxArray" :depends-on ("_package"))
    (:file "Dimension2DWithCovariance" :depends-on ("_package_Dimension2DWithCovariance"))
    (:file "_package_Dimension2DWithCovariance" :depends-on ("_package"))
    (:file "DimensionWithCovariance" :depends-on ("_package_DimensionWithCovariance"))
    (:file "_package_DimensionWithCovariance" :depends-on ("_package"))
    (:file "LaneDetection" :depends-on ("_package_LaneDetection"))
    (:file "_package_LaneDetection" :depends-on ("_package"))
    (:file "LaneDetectionArray" :depends-on ("_package_LaneDetectionArray"))
    (:file "_package_LaneDetectionArray" :depends-on ("_package"))
    (:file "ObjectClass" :depends-on ("_package_ObjectClass"))
    (:file "_package_ObjectClass" :depends-on ("_package"))
    (:file "ObjectSignals" :depends-on ("_package_ObjectSignals"))
    (:file "_package_ObjectSignals" :depends-on ("_package"))
    (:file "Pose2DWithCovariance" :depends-on ("_package_Pose2DWithCovariance"))
    (:file "_package_Pose2DWithCovariance" :depends-on ("_package"))
    (:file "TrackingBox" :depends-on ("_package_TrackingBox"))
    (:file "_package_TrackingBox" :depends-on ("_package"))
    (:file "TrackingBoxArray" :depends-on ("_package_TrackingBoxArray"))
    (:file "_package_TrackingBoxArray" :depends-on ("_package"))
  ))