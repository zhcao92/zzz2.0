
Header header

nav_msgs/Path trajectory

float32[] desired_speed # m/s

float32 desired_acc # m^2/s

float32 RLS_action #

## coordinate xyz  m(UTM)
float32[] x 
float32[] y 
float32[] z 
## direction on the x-y plane
float32[] theta
## curvature on the x-y planning
float32[] kappa
## accumulated distance from beginning of the path
float32[] s 
## derivative of kappa w.r.t s.
float32[] dkappa
## derivative of derivative of kappa w.r.t s.
float32[] ddkappa
## linear velocity
float32[] v    ## in [m/s]
## linear acceleration
float32[] a 
## relative time from beginning of the trajectory
float32[] relative_time 

