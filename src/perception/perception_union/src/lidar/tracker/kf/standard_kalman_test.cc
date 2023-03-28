#include "lidar/tracker/kf/standard_kalman_config.h"
#include "lidar/tracker/kf/standard_kalman_filter.h"
#include "common/cxxopts.hpp"
#include "Eigen/Dense"
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <stdio.h>


class MeasurementPackage {
public:
  long long timestamp_;
  enum SensorType{
    LASER,
    RADAR
  } sensor_type_;
  Eigen::VectorXd raw_measurements_;
  Eigen::VectorXd raw_dims_;
  double          raw_yaw_;
};


void check_files(std::ifstream& in_file, std::string& in_name,
    std::ofstream& out_file, std::string& out_name) {
  if (!in_file.is_open()) {
    std::cerr << "Cannot open input file: " << in_name << std::endl;
    exit(EXIT_FAILURE);
  }

  if (!out_file.is_open()) {
    std::cerr << "Cannot open output file: " << out_name << std::endl;
    exit(EXIT_FAILURE);
  }
}

int main (int argc, char** argv) {
  if (argc < 6) {
    std::cout << "args are expected, please see `lidar_track_test --help`." 
        << std::endl;
    exit(EXIT_FAILURE);
  }
  cxxopts::Options options("ekf_test", "a test for lidar_track_test.");
  
  options.add_options()
    ("d,data", "lidar objects data file.", cxxopts::value<std::string>())
    ("c,config", "config file", cxxopts::value<std::string>())
    ("o,output", "output file", cxxopts::value<std::string>())
    ("h,help", "Print usage") ;

  auto result = options.parse(argc, argv);
  if (result.count("help")) {
    std::cout << options.help() << std::endl;
    exit(0);
  }

  std::string data_path, conf_path, output_path;
  if (result.count("data") && result.count("output") && result.count("config")) {
    data_path = result["data"].as<std::string>();
    output_path = result["output"].as<std::string>();
    conf_path = result["config"].as<std::string>();
  } else {
    std::cerr << "args error." << std::endl;
    exit(EXIT_FAILURE);
  }

  std::ifstream in_file_(data_path.c_str(), std::ifstream::in);
  std::ofstream out_file_(output_path.c_str(), std::ofstream::out);

  check_files(in_file_, data_path, out_file_, output_path);
  std::string line;
  std::vector<MeasurementPackage> measurement_pack_list;

  while (std::getline(in_file_, line)) {
    std::string sensor_type;
    MeasurementPackage meas_package;

    std::istringstream iss(line);
    long long timestamp;
    // LASER MEASUREMENT
    // read measurements at this timestamp
    meas_package.sensor_type_ = MeasurementPackage::LASER;
    meas_package.raw_measurements_ = Eigen::VectorXd(2);
    float x;
    float y;
    iss >> x;
    iss >> y;
    meas_package.raw_measurements_ << x, y;
    iss >> timestamp;
    meas_package.timestamp_ = timestamp;
    float W, H, L, yaw;
    iss >> L;
    iss >> W;
    iss >> H;
    iss >> yaw;
    meas_package.raw_dims_ = Eigen::VectorXd(3);
    meas_package.raw_dims_ << L, W, H;
    meas_package.raw_yaw_ = (double)yaw;
    measurement_pack_list.push_back(meas_package);
  }

  std::string path;
  std::shared_ptr<kalman::StandardKalmanConfig> conf;
  conf.reset(new kalman::StandardKalmanConfig());
  std::shared_ptr<kalman::StandardKalmanFilter> filter;
  filter.reset(new kalman::StandardKalmanFilter());
  conf->init(conf_path.c_str());

  // used to compute the RMSE later
  std::vector<Eigen::VectorXd> estimations;

  //Call the EKF-based fusion
  size_t N = measurement_pack_list.size();
  // std::cout << "measurement_pack_list: " << N << std::endl;
  // N = 10;
  bool initialized = false;
  double last_time;
  for (size_t k = 0; k < N; ++k) {
    // output the measurements
    // std::cout << "process: " << k << std::endl;
    if (measurement_pack_list[k].sensor_type_ == MeasurementPackage::LASER) {
      // start filtering from the second frame (the speed is unknown in the first
      // frame)
      double t = static_cast<double>(measurement_pack_list[k].timestamp_)/1000000;
      if (initialized) {
        double dt = t - last_time;
        filter->predict(dt);
        last_time = t;
        filter->update(dt, measurement_pack_list[k].raw_measurements_);       
      } else {
        filter->init(conf.get(), measurement_pack_list[k].raw_measurements_);
        last_time = t;
        initialized = true;
      }

      // output the estimation
      Eigen::VectorXd sta = filter->State();
      std::stringstream s_text;

      s_text << measurement_pack_list[k].timestamp_ << "\t"
          << sta[0] << "\t"
          << sta[1] << "\t"
          << sta[2] << "\t"
          << sta[3] << "\t"
          << 0.0 << "\t"
          << measurement_pack_list[k].raw_measurements_(0) << "\t"
          << measurement_pack_list[k].raw_measurements_(1) << "\t"
          << measurement_pack_list[k].raw_dims_(0) << "\t"
          << measurement_pack_list[k].raw_dims_(1) << "\t"
          << measurement_pack_list[k].raw_dims_(2) << "\t"
          << measurement_pack_list[k].raw_yaw_ << "\n";
      out_file_ << s_text.str();
      estimations.push_back(sta);
    } 
  }

  // close files
  if (out_file_.is_open()) {
    out_file_.close();
  }
  if (in_file_.is_open()) {
    in_file_.close();
  }
  return 0;
}

