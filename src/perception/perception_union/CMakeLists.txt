cmake_minimum_required(VERSION 3.10.2)
project(perception)
# add_compile_options(std=c++11)
set(CMAKE_CXX_FLAGS "-std=c++11 -O2 -Wfloat-conversion")

option(USE_GPU "use gpu" ON)
option(CNN_PRE_USE_GPU "CNN pre use gpu" ON)

# cmake_host_system_information(RESULT _host_name QUERY HOSTNAME)
# message("--- _host_name variable is set to: " ${_host_name})

# message("--- system processor: ${CMAKE_SYSTEM_PROCESSOR}")
# if ("${CMAKE_SYSTEM_PROCESSOR}" MATCHES "x86_64")
#   option(USE_MIIVII "use miivii" OFF)
# else ()
#   if ("${_host_name}" MATCHES "miivii-tegra")
#     option(USE_MIIVII "use miivii" ON)
#     if (USE_MIIVII)
#       get_filename_component(ABS_WORKSPACE_PATH ${CMAKE_SOURCE_DIR}/.. ABSOLUTE)
#       add_definitions(-D_USE_MIIVII_)
#       add_definitions(-DPROJECT_PATH="${PROJECT_SOURCE_DIR}")
#       add_definitions(-DWORKSPACE_PATH="${ABS_WORKSPACE_PATH}")
#       message("+++ perception use PROJECT_PATH ${PROJECT_SOURCE_DIR}")
#       message("+++ perception use WORKSPACE_PATH ${ABS_WORKSPACE_PATH}")
#     endif ()
#   endif ()
# endif ()

if (USE_TIME_POINT)
  message("+++ use time point output.")
  add_definitions(-D_TIME_POINT_)
endif ()
if (USE_DUMP_TRAJECTORY)
  message("+++ use trajectory pose dump.")
  add_definitions(-D_USE_DUMP_TRAJECTORY_)
endif ()
if (USE_DUMP_DETECTION)
  message("+++ use detection pose dump.")
  add_definitions(-D_USE_DUMP_DETECTION_)
endif ()

if (USE_GPU)
message("-- USE_GPU")
if (CNN_PRE_USE_GPU)
add_definitions(-D__USE_GPU__)
endif ()
include(FindCUDA)
set(CUDA_ARCH_LIST 7.0 CACHE STRING
    "List of CUDA architectures (e.g. Pascal, Volta, etc) or \
compute capability versions (6.1, 7.0, etc) to generate code for. \
Set to Auto for automatic detection (default)."
)
cuda_select_nvcc_arch_flags(CUDA_ARCH_FLAGS ${CUDA_ARCH_LIST})
list(APPEND CUDA_NVCC_FLAGS ${CUDA_ARCH_FLAGS})
endif ()
find_package(CUDA)
find_package(Eigen3)
find_package(Boost)
find_package(OpenCV REQUIRED)
find_package(PCL REQUIRED)
add_definitions(${PCL_DEFINITIONS})
# link_directories(/usr/lib/x86_64-linux-gnu)


## find TensorRT
execute_process(COMMAND 
  find /opt -type d -name "TensorRT-7*" 
  OUTPUT_VARIABLE TensorRT_PATH_LIST
  OUTPUT_STRIP_TRAILING_WHITESPACE
)
set(TensorRT_ROOT "")
foreach(FILE ${TensorRT_PATH_LIST})
  if (${FILE} MATCHES "/opt/TensorRT-7*") 
    set(TensorRT_ROOT ${FILE})
  endif ()
endforeach()
if (TensorRT_ROOT)
  if (EXISTS ${TensorRT_ROOT}/lib/libnvinfer.so)
    set(TensorRT_INCLUDE_DIR ${TensorRT_ROOT}/include)
    set(TensorRT_LIBRARIES_DIR ${TensorRT_ROOT}/lib)
    message("+++ Find nvinfer in ${TensorRT_LIBRARIES_DIR}")
  else ()
    message("--- Not find nvinfer")
  endif ()
else ()
  if (EXISTS /usr/lib/aarch64-linux-gnu/libnvinfer.so) 
    set(TensorRT_INCLUDE_DIR /usr/include/aarch64-linux-gnu)
    set(TensorRT_LIBRARIES_DIR /usr/lib/aarch64-linux-gnu)
    message("+++ Find nvinfer in /usr/lib/aarch64-linux-gnu")
  elseif (EXISTS /usr/local/lib/libnvinfer.so) 
    set(TensorRT_INCLUDE_DIR /usr/local/include)
    set(TensorRT_LIBRARIES_DIR /usr/local/lib)
    message("+++ Find nvinfer in /usr/local/lib")
  elseif (EXISTS /usr/local/cuda/lib/libnvinfer.so) 
    set(TensorRT_INCLUDE_DIR /usr/local/cuda/include)
    set(TensorRT_LIBRARIES_DIR /usr/local/cuda/lib)
    message("+++ Find nvinfer in /usr/local/cuda/lib")
  else ()
    message("--- Not find nvinfer")
  endif ()
endif ()

message("+++ TensorRT_ROOT : ${TensorRT_ROOT}")
message("+++ TensorRT_INCLUDE_DIR : ${TensorRT_INCLUDE_DIR}")
message("+++ TensorRT_LIBRARIES_DIR : ${TensorRT_LIBRARIES_DIR}")

## Find TensorRT version
file(READ "${TensorRT_INCLUDE_DIR}/NvInferVersion.h" ver)
string(REGEX MATCH "NV_TENSORRT_SONAME_MAJOR ([0-9]*)" _ ${ver})
set(ver_major ${CMAKE_MATCH_1})
string(REGEX MATCH "NV_TENSORRT_SONAME_MINOR ([0-9]*)" _ ${ver})
set(ver_minor ${CMAKE_MATCH_1})
string(REGEX MATCH "NV_TENSORRT_SONAME_PATCH ([0-9]*)" _ ${ver})
set(ver_patch ${CMAKE_MATCH_1})
set(TensorRT_VERSION "${ver_major}.${ver_minor}.${ver_patch}")
message(STATUS "The project will building on platform(TensorRT ${TensorRT_VERSION}).")

# link_directories(${TensorRT_LIBRARIES_DIR})
include_directories(${TensorRT_INCLUDE_DIR})
link_directories(${TensorRT_LIBRARIES_DIR})


find_package(catkin REQUIRED COMPONENTS
  roscpp
  pcl_ros
  sensor_msgs
  geometry_msgs
  autoware_msgs
  map_msgs
  zzz_perception_msgs
)
find_package(yaml-cpp)

catkin_package(
  INCLUDE_DIRS
  include
  CATKIN_DEPENDS
  roscpp
  pcl_ros
  sensor_msgs
  geometry_msgs
  autoware_msgs
  nav_msgs
  zzz_perception_msgs
)

include_directories(
  include
  ${CMAKE_SOURCE_DIR}/tools/tensorrt_cpp/trt_infer
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
  ${OpenCV_INCLUDE_DIRS}
  ${CUDA_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
)

# if (NOT)
# if (exists "/usr/local/lib/libzlog.so")
if (EXISTS "/usr/local/lib/libzlog.so")
add_definitions(-D__USE_ZLOG__)
add_subdirectory( src/common/log )
set(LOG_LIB log_lib)
else ()
add_definitions(-D__USE_ROSLOG__)
set(LOG_LIB "")
endif ()

add_subdirectory( src/lidar )
add_subdirectory( src/localmap )

add_executable(perception
  node/perception_node.cc
  node/perception.cc
)

target_link_libraries(perception
  ${catkin_LIBRARIES}
  lidar_process_lib
  local_map_lib
  ${OpenCV_LIBRARIES}
  ${PCL_LIBRARIES}
  ${LOG_LIB}
  ${YAML_CPP_LIBRARIES}
)

add_dependencies(perception
  ${catkin_EXPORTED_TARGETS}
)

install(TARGETS
  perception 
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
  PATTERN ".svn" EXCLUDE
)

