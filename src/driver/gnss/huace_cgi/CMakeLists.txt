cmake_minimum_required(VERSION 2.8.3)
project(huace_cgi_gnss)

add_compile_options(-O2)
#add_compile_options(-g)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  geometry_msgs
  sensor_msgs
  novatel_gnss_msgs
  tf
)
#find_package(Boost COMPONENTS signals)
#find_package(Boost REQUIRED COMPONENTS thread)
catkin_package(
)

include_directories(
#  ${Boost_INCLUDE_DIR} 
  ${catkin_INCLUDE_DIRS}
)

add_library(${PROJECT_NAME}
   src/serial_port_object.cc
)
add_executable(${PROJECT_NAME}_gnss_node src/node.cpp)
target_link_libraries(${PROJECT_NAME}_gnss_node 
    ${catkin_LIBRARIES}
    ${PROJECT_NAME})
set_target_properties(${PROJECT_NAME}_gnss_node PROPERTIES OUTPUT_NAME gnss_node PREFIX "")


install(TARGETS ${PROJECT_NAME}_gnss_node
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

