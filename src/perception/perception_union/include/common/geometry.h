#pragma once 

namespace perception {

struct Odometry {
  double timestamp;
  double ow;
  double ox;
  double oy;
  double oz;
  double px;
  double py;
  double pz;
  double vx;
  double vy;
  double vz;
  double ax;
  double ay;
  double az;
};

}
