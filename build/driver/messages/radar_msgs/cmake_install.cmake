# Install script for directory: /home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/radar_msgs/msg" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarDetection.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarDetectionStamped.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarDetectionArray.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarTrack.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarTrackStamped.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarTrackArray.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarStatus.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/msg/RadarErrorStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/radar_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/radar_msgs/catkin_generated/installspace/radar_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/include/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/roseus/ros/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/common-lisp/ros/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/gennodejs/ros/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/radar_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/radar_msgs/catkin_generated/installspace/radar_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/radar_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/radar_msgs/catkin_generated/installspace/radar_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/radar_msgs/cmake" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/build/driver/messages/radar_msgs/catkin_generated/installspace/radar_msgsConfig.cmake"
    "/home/qzl/Workspace/zzz2/build/driver/messages/radar_msgs/catkin_generated/installspace/radar_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/radar_msgs" TYPE FILE FILES "/home/qzl/Workspace/zzz2/src/driver/messages/radar_msgs/package.xml")
endif()

