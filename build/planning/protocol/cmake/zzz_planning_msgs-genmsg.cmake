# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "zzz_planning_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Izzz_planning_msgs:/home/qzl/Workspace/zzz2/src/planning/protocol/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(zzz_planning_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_custom_target(_zzz_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_planning_msgs" "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" "zzz_planning_msgs/VehicleState"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_custom_target(_zzz_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_planning_msgs" "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" ""
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_custom_target(_zzz_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "zzz_planning_msgs" "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" "nav_msgs/Path:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_cpp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_cpp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(zzz_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(zzz_planning_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(zzz_planning_msgs_generate_messages zzz_planning_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_cpp _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_cpp _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_cpp _zzz_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_planning_msgs_gencpp)
add_dependencies(zzz_planning_msgs_gencpp zzz_planning_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_planning_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_eus(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_eus(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(zzz_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(zzz_planning_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(zzz_planning_msgs_generate_messages zzz_planning_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_eus _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_eus _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_eus _zzz_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_planning_msgs_geneus)
add_dependencies(zzz_planning_msgs_geneus zzz_planning_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_planning_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_lisp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_lisp(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(zzz_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(zzz_planning_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(zzz_planning_msgs_generate_messages zzz_planning_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_lisp _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_lisp _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_lisp _zzz_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_planning_msgs_genlisp)
add_dependencies(zzz_planning_msgs_genlisp zzz_planning_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_planning_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_nodejs(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_nodejs(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(zzz_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(zzz_planning_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(zzz_planning_msgs_generate_messages zzz_planning_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_nodejs _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_nodejs _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_nodejs _zzz_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_planning_msgs_gennodejs)
add_dependencies(zzz_planning_msgs_gennodejs zzz_planning_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_planning_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_py(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs
)
_generate_msg_py(zzz_planning_msgs
  "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(zzz_planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(zzz_planning_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(zzz_planning_msgs_generate_messages zzz_planning_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/PlannedTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_py _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/VehicleState.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_py _zzz_planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/planning/protocol/msg/DecisionTrajectory.msg" NAME_WE)
add_dependencies(zzz_planning_msgs_generate_messages_py _zzz_planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(zzz_planning_msgs_genpy)
add_dependencies(zzz_planning_msgs_genpy zzz_planning_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS zzz_planning_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/zzz_planning_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(zzz_planning_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(zzz_planning_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/zzz_planning_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(zzz_planning_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(zzz_planning_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/zzz_planning_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(zzz_planning_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(zzz_planning_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/zzz_planning_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(zzz_planning_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(zzz_planning_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/zzz_planning_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(zzz_planning_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(zzz_planning_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
