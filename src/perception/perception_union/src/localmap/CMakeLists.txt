find_package(yaml-cpp)
add_library(local_map_lib # STATIC
  local_map.cc
)

target_link_libraries(local_map_lib
  ${YAML_CPP_LIBRARIES}
  ${OpenCV_LIBRARIES}
)



