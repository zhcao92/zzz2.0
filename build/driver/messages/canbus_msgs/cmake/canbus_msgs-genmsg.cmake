# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "canbus_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Icanbus_msgs:/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(canbus_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_custom_target(_canbus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "canbus_msgs" "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_cpp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(canbus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(canbus_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(canbus_msgs_generate_messages canbus_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_cpp _canbus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(canbus_msgs_gencpp)
add_dependencies(canbus_msgs_gencpp canbus_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS canbus_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)
_generate_msg_eus(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(canbus_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(canbus_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(canbus_msgs_generate_messages canbus_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_eus _canbus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(canbus_msgs_geneus)
add_dependencies(canbus_msgs_geneus canbus_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS canbus_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)
_generate_msg_lisp(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(canbus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(canbus_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(canbus_msgs_generate_messages canbus_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_lisp _canbus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(canbus_msgs_genlisp)
add_dependencies(canbus_msgs_genlisp canbus_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS canbus_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)
_generate_msg_nodejs(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(canbus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(canbus_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(canbus_msgs_generate_messages canbus_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_nodejs _canbus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(canbus_msgs_gennodejs)
add_dependencies(canbus_msgs_gennodejs canbus_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS canbus_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)
_generate_msg_py(canbus_msgs
  "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(canbus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(canbus_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(canbus_msgs_generate_messages canbus_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg" NAME_WE)
add_dependencies(canbus_msgs_generate_messages_py _canbus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(canbus_msgs_genpy)
add_dependencies(canbus_msgs_genpy canbus_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS canbus_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/canbus_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(canbus_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/canbus_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(canbus_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/canbus_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(canbus_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/canbus_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(canbus_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/canbus_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(canbus_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
