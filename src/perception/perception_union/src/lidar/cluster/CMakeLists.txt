
add_library(euclidean_cluster_lib STATIC
  euclidean_cluster.cc
)

target_link_libraries(euclidean_cluster_lib
  ${PCL_LIBRARIES}
  ${LOG_LIB}
)





