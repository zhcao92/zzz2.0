add_definitions(-fPIC)
if (USE_GPU)
  add_library(pp_postprocess_lib STATIC
    postprocess.cpp  
  )
  target_link_libraries(pp_postprocess_lib
    ${OpenCV_LIBRARIES}
  )

  cuda_add_library(pp_postprocess_cuda_lib STATIC
    postprocess.cu
  )
  target_compile_options(pp_postprocess_cuda_lib PUBLIC -std=c++11 -O2 -Wall -Wfloat-conversion)
  set_target_properties(pp_postprocess_cuda_lib PROPERTIES POSITION_INDEPENDENT_CODE ON)
  target_link_libraries(pp_postprocess_cuda_lib
    pp_postprocess_lib
  )

  set(SOURCES_FILE
    pointpillars.cpp
    feature_generator.cpp
  )
  add_library(pointpillars_lib STATIC
    ${SOURCES_FILE}
  )
  target_link_libraries(pointpillars_lib
    ${OpenCV_LIBRARIES}
    ${CUDA_LIBRARIES}
    ${PCL_LIBRARIES}
    pp_postprocess_lib
    pp_postprocess_cuda_lib
    trt
    nvinfer
    nvinfer_plugin
    nvparsers
    nvonnxparser
    nvcaffe_parser
    ${CUDART}
    ${LOG_LIB}
  )

else ()

  set(SOURCES_FILE
    pointpillars.cpp
    postprocess.cpp
    feature_generator.cpp
    postprocess.cpp
  )
  add_library(pointpillars_lib STATIC
    ${SOURCES_FILE}
  )
  target_link_libraries(pointpillars_lib
    ${catkin_LIBRARIES}
    ${OpenCV_LIBRARIES}
    ${CUDA_LIBRARIES}
    ${PCL_LIBRARIES}
    trt
    nvinfer
    nvinfer_plugin
    nvparsers
    nvonnxparser
    nvcaffe_parser
    ${CUDART}
    ${LOG_LIB}
  )
endif()

