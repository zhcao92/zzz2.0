;; Auto-generated. Do not edit!


(when (boundp 'zzz_perception_msgs::ObjectClass)
  (if (not (find-package "ZZZ_PERCEPTION_MSGS"))
    (make-package "ZZZ_PERCEPTION_MSGS"))
  (shadow 'ObjectClass (find-package "ZZZ_PERCEPTION_MSGS")))
(unless (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS")
  (make-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))

(in-package "ROS")
;;//! \htmlinclude ObjectClass.msg.html


(intern "*UNKNOWN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*UNKNOWN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*UNKNOWN* 0)
(intern "*UNKNOWN_DYNAMIC*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*UNKNOWN_DYNAMIC* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*UNKNOWN_DYNAMIC* 16)
(intern "*UNKNOWN_STATIC*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*UNKNOWN_STATIC* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*UNKNOWN_STATIC* 32)
(intern "*VEHICLE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE* 1)
(intern "*VEHICLE_PASSENGER*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_PASSENGER* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_PASSENGER* 17)
(intern "*VEHICEL_VAN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICEL_VAN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICEL_VAN* 33)
(intern "*VEHICLE_TRUCK*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_TRUCK* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_TRUCK* 49)
(intern "*VEHICLE_BUS*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_BUS* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_BUS* 65)
(intern "*VEHICLE_SCHOOLBUS*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_SCHOOLBUS* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_SCHOOLBUS* 321)
(intern "*VEHICLE_SCHOOLBUS_STOP*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_SCHOOLBUS_STOP* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_SCHOOLBUS_STOP* 4417)
(intern "*VEHICLE_EMERGENCY*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY* 81)
(intern "*VEHICLE_EMERGENCY_POLICE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_POLICE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_POLICE* 337)
(intern "*VEHICLE_EMERGENCY_POLICE_FLASH*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_POLICE_FLASH* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_POLICE_FLASH* 4433)
(intern "*VEHICLE_EMERGENCY_FIRE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_FIRE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_FIRE* 593)
(intern "*VEHICLE_EMERGENCY_FIRE_FLASH*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_FIRE_FLASH* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_FIRE_FLASH* 4689)
(intern "*VEHICLE_EMERGENCY_CIVIL*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_CIVIL* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_CIVIL* 849)
(intern "*VEHICLE_EMERGENCY_CIVIL_FLASH*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*VEHICLE_EMERGENCY_CIVIL_FLASH* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*VEHICLE_EMERGENCY_CIVIL_FLASH* 4945)
(intern "*HUMAN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*HUMAN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*HUMAN* 2)
(intern "*HUMAN_PEDESTRIAN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*HUMAN_PEDESTRIAN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*HUMAN_PEDESTRIAN* 18)
(intern "*HUMAN_ROADWORKER*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*HUMAN_ROADWORKER* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*HUMAN_ROADWORKER* 34)
(intern "*CYCLIST*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*CYCLIST* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*CYCLIST* 3)
(intern "*CYCLIST_BICYCLE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*CYCLIST_BICYCLE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*CYCLIST_BICYCLE* 19)
(intern "*CYCLIST_MOTORCYCLE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*CYCLIST_MOTORCYCLE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*CYCLIST_MOTORCYCLE* 35)
(intern "*CYCLIST_TRICYCLE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*CYCLIST_TRICYCLE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*CYCLIST_TRICYCLE* 51)
(intern "*ANIMAL*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ANIMAL* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ANIMAL* 4)
(intern "*ANIMAL_DOGLIKE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ANIMAL_DOGLIKE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ANIMAL_DOGLIKE* 20)
(intern "*ANIMAL_DEERLIKE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ANIMAL_DEERLIKE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ANIMAL_DEERLIKE* 36)
(intern "*ANIMAL_COWLIKE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ANIMAL_COWLIKE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ANIMAL_COWLIKE* 52)
(intern "*ROAD_OBJECT*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROAD_OBJECT* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROAD_OBJECT* 5)
(intern "*ROAD_TRAFFIC_CONE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROAD_TRAFFIC_CONE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROAD_TRAFFIC_CONE* 21)
(intern "*ROAD_TRAFFIC_BLOCKER*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROAD_TRAFFIC_BLOCKER* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROAD_TRAFFIC_BLOCKER* 37)
(intern "*ROADSIDE_OBJECT*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROADSIDE_OBJECT* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROADSIDE_OBJECT* 6)
(intern "*ROADSIDE_TRAFFIC_LIGHT*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROADSIDE_TRAFFIC_LIGHT* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROADSIDE_TRAFFIC_LIGHT* 22)
(intern "*ROADSIDE_TRAFFIC_SIGN*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROADSIDE_TRAFFIC_SIGN* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROADSIDE_TRAFFIC_SIGN* 38)
(intern "*ROADSIDE_TREE*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*ROADSIDE_TREE* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*ROADSIDE_TREE* 54)
(intern "*LEVEL_MASK_0*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*LEVEL_MASK_0* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*LEVEL_MASK_0* 15)
(intern "*LEVEL_MASK_1*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*LEVEL_MASK_1* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*LEVEL_MASK_1* 255)
(intern "*LEVEL_MASK_2*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*LEVEL_MASK_2* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*LEVEL_MASK_2* 4095)
(intern "*LEVEL_MASK_3*" (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(shadow '*LEVEL_MASK_3* (find-package "ZZZ_PERCEPTION_MSGS::OBJECTCLASS"))
(defconstant zzz_perception_msgs::ObjectClass::*LEVEL_MASK_3* 65535)
(defclass zzz_perception_msgs::ObjectClass
  :super ros::object
  :slots (_classid _score _comments ))

(defmethod zzz_perception_msgs::ObjectClass
  (:init
   (&key
    ((:classid __classid) 0)
    ((:score __score) 0.0)
    ((:comments __comments) "")
    )
   (send-super :init)
   (setq _classid (round __classid))
   (setq _score (float __score))
   (setq _comments (string __comments))
   self)
  (:classid
   (&optional __classid)
   (if __classid (setq _classid __classid)) _classid)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:comments
   (&optional __comments)
   (if __comments (setq _comments __comments)) _comments)
  (:serialization-length
   ()
   (+
    ;; uint32 _classid
    4
    ;; float32 _score
    4
    ;; string _comments
    4 (length _comments)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _classid
       (write-long _classid s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _comments
       (write-long (length _comments) s) (princ _comments s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _classid
     (setq _classid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _comments
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comments (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get zzz_perception_msgs::ObjectClass :md5sum-) "991b8d3acc01ea523d3201482c907466")
(setf (get zzz_perception_msgs::ObjectClass :datatype-) "zzz_perception_msgs/ObjectClass")
(setf (get zzz_perception_msgs::ObjectClass :definition-)
      "# The size of (in meters) the bounding box surrounding the object's center pose.

# The unique numeric classification ID of object detected
uint32 classid

# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.
float32 score

# Other information about the class (e.g. class name). Only for debug
string comments

##############################################################
###   Here is a hierarchical table of all included types   ###
##############################################################
# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level

uint32 UNKNOWN                          = 0     # 0x0000
uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010
uint32 UNKNOWN_STATIC                   = 32    # 0x0020

uint32 VEHICLE                          = 1     # 0x0001
uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles
uint32 VEHICEL_VAN                      = 33    # 0x0021
uint32 VEHICLE_TRUCK                    = 49    # 0x0031
uint32 VEHICLE_BUS                      = 65    # 0x0041
uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141
uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141
uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including 
uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151
uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151
uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251
uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251
uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks
uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351

uint32 HUMAN                            = 2     # 0x0002
uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012
uint32 HUMAN_ROADWORKER                 = 34    # 0x0022

uint32 CYCLIST                          = 3     # 0x0003
uint32 CYCLIST_BICYCLE                  = 19    # 0x0013
uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023
uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033

uint32 ANIMAL                           = 4     # 0x0004
uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.
uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.
uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.

uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area
uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone
uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. \"Road Closed\" sign

uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side
uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016
uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026
uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation

uint32 LEVEL_MASK_0                     = 15    # 0x000f
uint32 LEVEL_MASK_1                     = 255   # 0x00ff
uint32 LEVEL_MASK_2                     = 4095  # 0x0fff
uint32 LEVEL_MASK_3                     = 65535 # 0xffff

")



(provide :zzz_perception_msgs/ObjectClass "991b8d3acc01ea523d3201482c907466")


