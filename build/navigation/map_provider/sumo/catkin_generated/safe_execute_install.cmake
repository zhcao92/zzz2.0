execute_process(COMMAND "/home/qzl/Workspace/zzz2/build/navigation/map_provider/sumo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/qzl/Workspace/zzz2/build/navigation/map_provider/sumo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
