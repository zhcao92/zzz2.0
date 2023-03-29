if (CNN_PRE_USE_GPU)
  cuda_add_library(feature_gen_lib STATIC 
    feature_generator_cuda.cu
    prekernel.cu
  )
  target_compile_options(feature_gen_lib PUBLIC -std=c++11 -O2 -Wall -Wfloat-conversion)
  set_target_properties(feature_gen_lib PROPERTIES POSITION_INDEPENDENT_CODE ON)

  add_library(segment_lib STATIC
    cluster2d.cc
    segmentation.cc
  )

  target_link_libraries(segment_lib 
    ${OpenCV_LIBRARIES}
    ${CUDA_LIBRARIES}
    ${PCL_LIBRARIES}
    feature_gen_lib
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

  add_library(segment_lib STATIC
    cluster2d.cc
    feature_generator.cc
    segmentation.cc
  )

  target_link_libraries(segment_lib
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

endif ()



