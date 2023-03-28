find_package(yaml-cpp)
add_library(tracker_lib STATIC
  kf/standard_kalman_config.cc
  kf/standard_kalman_filter.cc
  kf/lidar_track.cc
  HungarianAlg.cpp
  gnn_bipartite_graph_matcher.cc
)

target_link_libraries(tracker_lib
  ${PCL_LIBRARIES}
  ${LOG_LIB}
  ${YAML_CPP_LIBRARIES}
)

add_executable(standard_kalman_test
  kf/standard_kalman_test.cc
  kf/standard_kalman_config.cc
  kf/standard_kalman_filter.cc
)

target_link_libraries(standard_kalman_test
  ${PCL_LIBRARIES}
  ${LOG_LIB}
  ${YAML_CPP_LIBRARIES}
)


