# Install script for directory: /home/qzl/Workspace/zzz2/src/cognition/protocol

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
  include("/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zzz_cognition_msgs/msg" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/JunctionMapState.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/LaneState.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MultiLaneMapState.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/MapState.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/RoadObstacle.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DrivingSpace.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundary.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/DynamicBoundaryPoint.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocation.msg"
    "/home/qzl/Workspace/zzz2/src/cognition/protocol/msg/VehicleLocationArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zzz_cognition_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/installspace/zzz_cognition_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/include/zzz_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/roseus/ros/zzz_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/common-lisp/ros/zzz_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/gennodejs/ros/zzz_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/zzz_cognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/zzz_cognition_msgs" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/zzz_cognition_msgs" FILES_MATCHING REGEX "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/zzz_cognition_msgs/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/installspace/zzz_cognition_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zzz_cognition_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/installspace/zzz_cognition_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zzz_cognition_msgs/cmake" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/installspace/zzz_cognition_msgsConfig.cmake"
    "/home/qzl/Workspace/zzz2/build/cognition/protocol/catkin_generated/installspace/zzz_cognition_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zzz_cognition_msgs" TYPE FILE FILES "/home/qzl/Workspace/zzz2/src/cognition/protocol/package.xml")
endif()

