

  add_library(log_lib STATIC
    log.cc
  )

  target_link_libraries(log_lib
    zlog
  )





