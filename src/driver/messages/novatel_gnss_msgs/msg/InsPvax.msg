#Ins_Pva
  Header header

#novatel long header
  LongHeader long_header

  uint32 ins_status
  uint32 pos_type
# in degrees
  float64 latitude   
# in degrees
  float64 longitude  
# Ellipsoidal height - WGS84 (m)
  float64 height     
  float32 undulation

# velocity in a northerly direction (m/s)
  float64 north_velocity 
# velocity in an easterly direction (m/s) 
  float64 east_velocity   
# velocity in an up direction
  float64 up_velocity     
# right handed rotation around y-axis (degrees)
  float64 roll            
# right handed rotation around x-axis (degrees)  
  float64 pitch           
# left handed rotation around z-axis (degrees)
  float64 azimuth         

  float32 latitude_std
  float32 longitude_std
  float32 height_std
  float32 north_velocity_std
  float32 east_velocity_std
  float32 up_velocity_std

  float32 roll_std
  float32 pitch_std
  float32 azimuth_std
  uint32 ext_slo_stat
  uint16 elapsed_time