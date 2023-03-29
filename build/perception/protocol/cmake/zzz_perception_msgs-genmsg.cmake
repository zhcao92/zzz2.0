# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zzz_perception_msgs: 16 messages, 0 services")

set(MSG_I_FLAGS "-Izzz_perception_msgs:/home/qzl/Workspace/zzz2/src/perception/protocol/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zzz_perception_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" "zzz_perception_msgs/LaneDetection:std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" "sensor_msgs/Image:zzz_perception_msgs/ObjectSignals:zzz_perception_msgs/ObjectClass:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:std_msgs/Header:zzz_perception_msgs/BoundingBox:zzz_perception_msgs/DimensionWithCovariance:zzz_perception_msgs/DetectionBox:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" "zzz_perception_msgs/BoundingBox2D:sensor_msgs/Image:zzz_perception_msgs/Dimension2DWithCovariance:zzz_perception_msgs/ObjectClass:zzz_perception_msgs/Pose2DWithCovariance:std_msgs/Header:zzz_perception_msgs/ObjectSignals"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" "zzz_perception_msgs/BoundingBox:geometry_msgs/Pose:zzz_perception_msgs/TrackingBox:zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:geometry_msgs/Accel:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:zzz_perception_msgs/TrackingBoxArray:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:nav_msgs/Odometry:std_msgs/Header:zzz_perception_msgs/DimensionWithCovariance:zzz_perception_msgs/ObjectSignals:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" "zzz_perception_msgs/BoundingBox2D:sensor_msgs/Image:std_msgs/Header:zzz_perception_msgs/Dimension2DWithCovariance:zzz_perception_msgs/ObjectClass:zzz_perception_msgs/Pose2DWithCovariance:zzz_perception_msgs/DetectionBox2D:zzz_perception_msgs/ObjectSignals"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" "zzz_perception_msgs/BoundingBox:zzz_perception_msgs/TrackingBox:zzz_perception_msgs/ObjectClass:geometry_msgs/AccelWithCovariance:geometry_msgs/Accel:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:std_msgs/Header:zzz_perception_msgs/DimensionWithCovariance:zzz_perception_msgs/ObjectSignals:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" "sensor_msgs/Image:zzz_perception_msgs/ObjectClass:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:std_msgs/Header:zzz_perception_msgs/BoundingBox:zzz_perception_msgs/DimensionWithCovariance:zzz_perception_msgs/ObjectSignals:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" "zzz_perception_msgs/Dimension2DWithCovariance:zzz_perception_msgs/Pose2DWithCovariance"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" "geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:zzz_perception_msgs/DimensionWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_custom_target(_zzz_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_perception_msgs" "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" "zzz_perception_msgs/ObjectClass:zzz_perception_msgs/BoundingBox:geometry_msgs/AccelWithCovariance:geometry_msgs/TwistWithCovariance:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:geometry_msgs/Accel:zzz_perception_msgs/DimensionWithCovariance:zzz_perception_msgs/ObjectSignals:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_cpp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(zzz_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zzz_perception_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zzz_perception_msgs_generate_messages zzz_perception_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_cpp _zzz_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_perception_msgs_gencpp)
add_dependencies(zzz_perception_msgs_gencpp zzz_perception_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_perception_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_eus(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(zzz_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zzz_perception_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zzz_perception_msgs_generate_messages zzz_perception_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_eus _zzz_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_perception_msgs_geneus)
add_dependencies(zzz_perception_msgs_geneus zzz_perception_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_perception_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_lisp(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(zzz_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zzz_perception_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zzz_perception_msgs_generate_messages zzz_perception_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_lisp _zzz_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_perception_msgs_genlisp)
add_dependencies(zzz_perception_msgs_genlisp zzz_perception_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_perception_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_nodejs(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zzz_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zzz_perception_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zzz_perception_msgs_generate_messages zzz_perception_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_nodejs _zzz_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_perception_msgs_gennodejs)
add_dependencies(zzz_perception_msgs_gennodejs zzz_perception_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_perception_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)
_generate_msg_py(zzz_perception_msgs
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/AccelWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Accel.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg;/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(zzz_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zzz_perception_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zzz_perception_msgs_generate_messages zzz_perception_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetectionArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectClass.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Dimension2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/Pose2DWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/ObjectSignals.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/CooperativeMsg.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox2DArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DimensionWithCovariance.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBoxArray.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/DetectionBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/BoundingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/LaneDetection.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/perception/protocol/msg/TrackingBox.msg" NAME_WE)
add_dependencies(zzz_perception_msgs_generate_messages_py _zzz_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_perception_msgs_genpy)
add_dependencies(zzz_perception_msgs_genpy zzz_perception_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_perception_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_perception_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zzz_perception_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(zzz_perception_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(zzz_perception_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(zzz_perception_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_perception_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zzz_perception_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(zzz_perception_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(zzz_perception_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(zzz_perception_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_perception_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zzz_perception_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(zzz_perception_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(zzz_perception_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(zzz_perception_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_perception_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zzz_perception_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(zzz_perception_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(zzz_perception_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(zzz_perception_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_perception_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zzz_perception_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(zzz_perception_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(zzz_perception_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(zzz_perception_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
