# Install script for directory: /home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/qzl/Workspace/zzz2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/canbus_msgs/msg" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_1_0x106.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_2_0x102.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/IPC_SCU_3_0x103.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_1_0x20A.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_2_0x205.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_3_0x206.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_4_0x207.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_5_0x208.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_6_0x209.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/SCU_IPC_7_0x301.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/msg/POWER_MANAGE_0xB9.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/canbus_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/canbus_msgs/catkin_generated/installspace/canbus_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/include/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/roseus/ros/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/common-lisp/ros/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/gennodejs/ros/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/canbus_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/canbus_msgs/catkin_generated/installspace/canbus_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/canbus_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/canbus_msgs/catkin_generated/installspace/canbus_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/canbus_msgs/cmake" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/build/driver/messages/canbus_msgs/catkin_generated/installspace/canbus_msgsConfig.cmake"
    "/home/qzl/Workspace/zzz2/build/driver/messages/canbus_msgs/catkin_generated/installspace/canbus_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/canbus_msgs" TYPE FILE FILES "/home/qzl/Workspace/zzz2/src/driver/messages/canbus_msgs/package.xml")
endif()

