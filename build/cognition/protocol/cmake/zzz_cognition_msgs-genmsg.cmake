# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zzz_cognition_msgs: 10 messages, 0 services")

set(MSG_I_FLAGS "-Izzz_cognition_msgs:/home/qzl/Workspace/zzz2/src/cognition/protocol/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Izzz_perception_msgs:/home/qzl/Workspace/zzz2/src/perception/protocol/msg;-Izzz_navigation_msgs:/home/qzl/Workspace/zzz2/src/navigation/protocol/msg;-Izzz_driver_msgs:/home/qzl/Workspace/zzz2/src/driver/protocol/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zzz_cognition_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" "zzz_navigation_msgs/LaneBoundary:zzz_cognition_msgs/RoadObstacle:zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:zzz_driver_msgs/RigidBodyState:geometry_msgs/Point32:geometry_msgs/Polygon:zzz_perception_msgs/DimensionWithCovariance:zzz_navigation_msgs/LaneSituation:zzz_navigation_msgs/LanePoint:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Accel:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:zzz_cognition_msgs/LaneState:zzz_navigation_msgs/Lane:zzz_driver_msgs/FrenetSerretState2D:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" "zzz_cognition_msgs/VehicleLocation:std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" "zzz_driver_msgs/RigidBodyState:zzz_driver_msgs/FrenetSerretState2D:geometry_msgs/Vector3:geometry_msgs/AccelWithCovariance:geometry_msgs/Point32:geometry_msgs/Accel:geometry_msgs/Point:zzz_navigation_msgs/LaneBoundary:geometry_msgs/TwistWithCovariance:zzz_navigation_msgs/Lane:zzz_cognition_msgs/RoadObstacle:geometry_msgs/Quaternion:zzz_navigation_msgs/LanePoint:zzz_navigation_msgs/LaneSituation:geometry_msgs/Pose:std_msgs/Header:zzz_cognition_msgs/LaneState:zzz_perception_msgs/ObjectClass:geometry_msgs/Twist:geometry_msgs/PoseWithCovariance:geometry_msgs/Polygon:zzz_perception_msgs/DimensionWithCovariance:zzz_cognition_msgs/JunctionMapState:zzz_cognition_msgs/MultiLaneMapState"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" "zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:zzz_driver_msgs/RigidBodyState:geometry_msgs/Polygon:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Point32:geometry_msgs/Accel:zzz_driver_msgs/FrenetSerretState2D:zzz_perception_msgs/DimensionWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" "zzz_navigation_msgs/LaneBoundary:zzz_cognition_msgs/RoadObstacle:zzz_navigation_msgs/LanePoint:geometry_msgs/AccelWithCovariance:zzz_driver_msgs/RigidBodyState:geometry_msgs/Accel:zzz_perception_msgs/DimensionWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:zzz_navigation_msgs/LaneSituation:geometry_msgs/PoseWithCovariance:zzz_perception_msgs/ObjectClass:geometry_msgs/Point32:std_msgs/Header:zzz_driver_msgs/FrenetSerretState2D:geometry_msgs/Polygon:geometry_msgs/Quaternion:zzz_navigation_msgs/Lane:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" "zzz_navigation_msgs/LaneBoundary:zzz_cognition_msgs/RoadObstacle:zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:zzz_driver_msgs/RigidBodyState:geometry_msgs/Point32:geometry_msgs/Polygon:zzz_perception_msgs/DimensionWithCovariance:zzz_navigation_msgs/LaneSituation:zzz_navigation_msgs/LanePoint:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Accel:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:zzz_cognition_msgs/LaneState:zzz_navigation_msgs/Lane:zzz_driver_msgs/FrenetSerretState2D:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" "zzz_cognition_msgs/DynamicBoundaryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_custom_target(_zzz_cognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_cognition_msgs" "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" "zzz_navigation_msgs/LaneBoundary:zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:zzz_driver_msgs/RigidBodyState:geometry_msgs/Point32:geometry_msgs/Polygon:zzz_perception_msgs/DimensionWithCovariance:zzz_navigation_msgs/LaneSituation:zzz_navigation_msgs/LanePoint:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Accel:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:zzz_cognition_msgs/RoadObstacle:zzz_navigation_msgs/Lane:zzz_driver_msgs/FrenetSerretState2D:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_cpp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(zzz_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zzz_cognition_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zzz_cognition_msgs_generate_messages zzz_cognition_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_cpp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_cognition_msgs_gencpp)
add_dependencies(zzz_cognition_msgs_gencpp zzz_cognition_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_cognition_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_eus(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(zzz_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zzz_cognition_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zzz_cognition_msgs_generate_messages zzz_cognition_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_eus _zzz_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_cognition_msgs_geneus)
add_dependencies(zzz_cognition_msgs_geneus zzz_cognition_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_cognition_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_lisp(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(zzz_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zzz_cognition_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zzz_cognition_msgs_generate_messages zzz_cognition_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_lisp _zzz_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_cognition_msgs_genlisp)
add_dependencies(zzz_cognition_msgs_genlisp zzz_cognition_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_cognition_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_nodejs(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zzz_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zzz_cognition_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zzz_cognition_msgs_generate_messages zzz_cognition_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_nodejs _zzz_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_cognition_msgs_gennodejs)
add_dependencies(zzz_cognition_msgs_gennodejs zzz_cognition_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_cognition_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)
_generate_msg_py(zzz_cognition_msgs
  "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneBoundary.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/RigidBodyState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LaneSituation.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/LanePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg;/home/qzl/Workspace/zzz2/src/navigation/protocol/msg/Lane.msg;/home/qzl/Workspace/zzz2/src/driver/protocol/msg/FrenetSerretState2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(zzz_cognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zzz_cognition_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zzz_cognition_msgs_generate_messages zzz_cognition_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg" NAME_WE)
add_dependencies(zzz_cognition_msgs_generate_messages_py _zzz_cognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_cognition_msgs_genpy)
add_dependencies(zzz_cognition_msgs_genpy zzz_cognition_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_cognition_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zzz_cognition_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(zzz_cognition_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET zzz_perception_msgs_generate_messages_cpp)
  add_dependencies(zzz_cognition_msgs_generate_messages_cpp zzz_perception_msgs_generate_messages_cpp)
endif()
if(TARGET zzz_navigation_msgs_generate_messages_cpp)
  add_dependencies(zzz_cognition_msgs_generate_messages_cpp zzz_navigation_msgs_generate_messages_cpp)
endif()
if(TARGET zzz_driver_msgs_generate_messages_cpp)
  add_dependencies(zzz_cognition_msgs_generate_messages_cpp zzz_driver_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zzz_cognition_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(zzz_cognition_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET zzz_perception_msgs_generate_messages_eus)
  add_dependencies(zzz_cognition_msgs_generate_messages_eus zzz_perception_msgs_generate_messages_eus)
endif()
if(TARGET zzz_navigation_msgs_generate_messages_eus)
  add_dependencies(zzz_cognition_msgs_generate_messages_eus zzz_navigation_msgs_generate_messages_eus)
endif()
if(TARGET zzz_driver_msgs_generate_messages_eus)
  add_dependencies(zzz_cognition_msgs_generate_messages_eus zzz_driver_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zzz_cognition_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(zzz_cognition_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET zzz_perception_msgs_generate_messages_lisp)
  add_dependencies(zzz_cognition_msgs_generate_messages_lisp zzz_perception_msgs_generate_messages_lisp)
endif()
if(TARGET zzz_navigation_msgs_generate_messages_lisp)
  add_dependencies(zzz_cognition_msgs_generate_messages_lisp zzz_navigation_msgs_generate_messages_lisp)
endif()
if(TARGET zzz_driver_msgs_generate_messages_lisp)
  add_dependencies(zzz_cognition_msgs_generate_messages_lisp zzz_driver_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zzz_cognition_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(zzz_cognition_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET zzz_perception_msgs_generate_messages_nodejs)
  add_dependencies(zzz_cognition_msgs_generate_messages_nodejs zzz_perception_msgs_generate_messages_nodejs)
endif()
if(TARGET zzz_navigation_msgs_generate_messages_nodejs)
  add_dependencies(zzz_cognition_msgs_generate_messages_nodejs zzz_navigation_msgs_generate_messages_nodejs)
endif()
if(TARGET zzz_driver_msgs_generate_messages_nodejs)
  add_dependencies(zzz_cognition_msgs_generate_messages_nodejs zzz_driver_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_cognition_msgs/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zzz_cognition_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(zzz_cognition_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET zzz_perception_msgs_generate_messages_py)
  add_dependencies(zzz_cognition_msgs_generate_messages_py zzz_perception_msgs_generate_messages_py)
endif()
if(TARGET zzz_navigation_msgs_generate_messages_py)
  add_dependencies(zzz_cognition_msgs_generate_messages_py zzz_navigation_msgs_generate_messages_py)
endif()
if(TARGET zzz_driver_msgs_generate_messages_py)
  add_dependencies(zzz_cognition_msgs_generate_messages_py zzz_driver_msgs_generate_messages_py)
endif()
