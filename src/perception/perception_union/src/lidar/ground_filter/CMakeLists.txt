
add_library(ground_filter_lib STATIC
  plane_ground_filter.cc
)

target_link_libraries(ground_filter_lib
  ${PCL_LIBRARIES}
  ${LOG_LIB}
)





