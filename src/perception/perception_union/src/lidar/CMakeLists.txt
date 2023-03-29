# add_definitions(-fPIC)
add_subdirectory( ground_filter )
add_subdirectory( cluster )
add_subdirectory( segmentation )
add_subdirectory( point_pillars )
add_subdirectory( tracker )
find_package(yaml-cpp)
add_library(lidar_process_lib STATIC
  lidar_process.cc
)

target_link_libraries(lidar_process_lib
  ${OpenCV_LIBRARIES}
  ${PCL_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
  ${LOG_LIB}
  pthread

  segment_lib
  pointpillars_lib
  ground_filter_lib
  euclidean_cluster_lib
  tracker_lib
)



