# Install script for directory: /home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/novatel_gnss_msgs/msg" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/LongHeader.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/BdsEphemeris.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/BestPosb.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/BestVelb.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/GloEphemeris.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/GpChc.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/GpsEphemeris.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/Headingb.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/Heading2b.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/InsPva.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/InsPvax.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/RangeIn.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/Range.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/RawImu.msg"
    "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/msg/CorrImuDada.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/novatel_gnss_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/novatel_gnss_msgs/catkin_generated/installspace/novatel_gnss_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/include/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/roseus/ros/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/common-lisp/ros/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/share/gennodejs/ros/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/qzl/Workspace/zzz2/devel/lib/python2.7/dist-packages/novatel_gnss_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/novatel_gnss_msgs/catkin_generated/installspace/novatel_gnss_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/novatel_gnss_msgs/cmake" TYPE FILE FILES "/home/qzl/Workspace/zzz2/build/driver/messages/novatel_gnss_msgs/catkin_generated/installspace/novatel_gnss_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/novatel_gnss_msgs/cmake" TYPE FILE FILES
    "/home/qzl/Workspace/zzz2/build/driver/messages/novatel_gnss_msgs/catkin_generated/installspace/novatel_gnss_msgsConfig.cmake"
    "/home/qzl/Workspace/zzz2/build/driver/messages/novatel_gnss_msgs/catkin_generated/installspace/novatel_gnss_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/novatel_gnss_msgs" TYPE FILE FILES "/home/qzl/Workspace/zzz2/src/driver/messages/novatel_gnss_msgs/package.xml")
endif()

