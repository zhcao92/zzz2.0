/**
 * @file local_map.cc
 * @brief Bitmap搜索引擎，用于根据当前位置构造bitmap
 * @author H.Y. Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-02-18
 * 
 * @copyright Copyright (c) 2021
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-02-18 <td>1.0     <td>H.Y. Pei     <td>完善注释
 * </table>
 */
#include "localmap/local_map.h"
#include <string>
#include <map>
#include <vector>
#include <array>
#include <iostream>  
#include <fstream>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc.hpp>
#include <yaml-cpp/yaml.h>

#define STDCOUT(express)  

namespace map {
/**
 * @brief Construct a new Utm:: Utm object
 */
Utm::Utm() {
  K0 = 0.9996;
  E = 0.00669438;
  E2 = E * E;
  E3 = E2 * E;
  E_P2 = E / (1.0 - E);

  SQRT_E = sqrt(1 - E);
  _E = (1 - SQRT_E) / (1 + SQRT_E);
  _E2 = _E * _E;
  _E3 = _E2 * _E;
  _E4 = _E3 * _E;
  _E5 = _E4 * _E;

  M1 = (1 - E / 4 - 3 * E2 / 64 - 5 * E3 / 256);
  M2 = (3 * E / 8 + 3 * E2 / 32 + 45 * E3 / 1024);
  M3 = (15 * E2 / 256 + 45 * E3 / 1024);
  M4 = (35 * E3 / 3072);

  P2 = (3. / 2 * _E - 27. / 32 * _E3 + 269. / 512 * _E5);
  P3 = (21. / 16 * _E2 - 55. / 32 * _E4);
  P4 = (151. / 96 * _E3 - 417. / 128 * _E5);
  P5 = (1097. / 512 * _E4);

  R = 6378137;
  ZONE_LETTERS = "CDEFGHJKLMNPQRSTUVWXX";
}

/**
 * @brief This function convert Latitude and Longitude to UTM coordinate
 * @param  latitude         Latitude between 80 deletterg S and 84 deg N, e.g. (-80.0 to 84.0)
 * @param  longitude        Longitude between 180 deg W and 180 deg E, e.g. (-180.0 to 180.0).
 * @param  force_zone_numberMy Zone Number is represented with global map numbers of an UTM Zone
 *                             Numbers Map. You may force conversion including one UTM Zone Number.
 * @param  force_zone_letterMy Zone letter
 * @return Vector2d ootput position in UTM coordinate
 */
Vector2d Utm::fromLatLon(double latitude, double longitude, 
    int force_zone_number=50, char force_zone_letter='S') {
  if (!inBounds(latitude, -80.0, 84.0)) {
    std::cout << "latitude out of range (must be between 80 deg S and 84 deg N)" << std::endl;
  }
  if (!inBounds(longitude, -180.0, 180.0)) {
    std::cout << "longitude out of range (must be between 180 deg W and 180 deg E)" << std::endl;
  }

  double lat_rad = radians(latitude);
  double lat_sin = sin(lat_rad);
  double lat_cos = cos(lat_rad);

  double lat_tan = lat_sin / lat_cos;
  double lat_tan2 = lat_tan * lat_tan;
  double lat_tan4 = lat_tan2 * lat_tan2;

  int zone_number = force_zone_number;
  int zone_letter = force_zone_letter;

  double lon_rad = radians(longitude);
  double central_lon = zone_number_to_central_longitude(zone_number);
  double central_lon_rad = radians(central_lon);

  double n = R / sqrt(1 - E * lat_sin * lat_sin);
  double c = E_P2 * lat_cos * lat_cos;

  double a = lat_cos * (lon_rad - central_lon_rad);
  double a2 = a * a;
  double a3 = a2 * a;
  double a4 = a3 * a;
  double a5 = a4 * a;
  double a6 = a5 * a;

  double m = R * (M1 * lat_rad -
            M2 * sin(2 * lat_rad) +
            M3 * sin(4 * lat_rad) -
            M4 * sin(6 * lat_rad));
  Vector2d out;
  out.x = K0 * n * (a + a3 / 6 * (1 - lat_tan2 + c) +
      a5 / 120 * (5 - 18 * lat_tan2 + lat_tan4 + 72 * c - 58 * E_P2)) + 500000;
  out.y = K0 * (m + n * lat_tan * (a2 / 2 + a4 / 24 * (5 - lat_tan2 + 9 * c + 4 * c * c) +
      a6 / 720 * (61 - 58 * lat_tan2 + lat_tan4 + 600 * c - 330 * E_P2)));
  return out;
}
bool Utm::inBounds(double x, double lower, double upper) {
  return (lower < x) && (x < upper);
}
double Utm::radians(double deg) {
  return (deg / 180.0 * M_PI);
}
int Utm::zone_number_to_central_longitude(int zone_number) {
  return ((zone_number - 1) * 6 - 180 + 3); 
}

/**
 * @brief Construct a new Plane Coordinate:: Plane Coordinate object
 *        输入参考点的GPS坐标，用于转换局部坐标系
 * @param  baseP            输入参考坐标
 */
PlaneCoordinate::PlaneCoordinate(GPS_Coord baseP) {
  basePoint = baseP;
  Vector2d re = utm_.fromLatLon(basePoint.lat, basePoint.lon);
  ox = re.x;
  oy = re.y;
  STDCOUT("origin : " << std::setprecision(13) << basePoint.lon << " " << basePoint.lat );
  STDCOUT("origin loc : " << std::setprecision(13) << re.x << " " << re.y );
}
/**
 * @brief 输出坐标差矢量
 * @param  gps              输入GPS坐标
 * @return Vector2d& 输出坐标差矢量的引用
 */
Vector2d& PlaneCoordinate::toDist(GPS_Coord gps) {
  Vector2d re = utm_.fromLatLon(gps.lat, gps.lon);
  m.x = re.x - ox;
  m.y = re.y - oy;
  STDCOUT("gps : " << std::setprecision(13) << gps.lon << " " << gps.lat );
  STDCOUT("gps loc : " << std::setprecision(13) << re.x << " " << re.y );
  return m;
}

/**
 * @brief Construct a new Local Map:: Local Map object
 */
LocalMap::LocalMap() {}
LocalMap::~LocalMap() {
  delete coor_;
}
/**
 * @brief 初始化地图引擎
 * @param  path             输入配置文件路径
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool LocalMap::init(std::string& path) {
  std::string config = path + "/config/localmap.yaml";
  YAML::Node node = YAML::LoadFile(config.c_str());
  map_path_ = node["bitmap_path"].as<std::string>();
  #ifdef _USE_MIIVII_
    map_path_ = path + "/roi_map/png";
  #else // _USE_MIIVII_
    map_path_ = path + map_path_;  
  #endif // _USE_MIIVII_ 
  map_type_ = node["bitmap_type"].as<std::string>();
  grid_width_ = node["grid_width"].as<double>();
  grid_pixel_ = node["grid_pixel"].as<int>();
  grid_x_ = node["grid_x"].as<int>();
  grid_y_ = node["grid_y"].as<int>();
  origin_.lon = node["origin_lon"].as<double>() ;
  origin_.lat = node["origin_lat"].as<double>() ;
  coor_ = new PlaneCoordinate(origin_);
  stride_ = grid_width_ / (double)grid_pixel_;
  if (node["map_origin_x"].IsDefined() ) {
    shift_x_ = node["map_origin_x"].as<double>() - coor_->origin_x();
    shift_y_ = node["map_origin_y"].as<double>() - coor_->origin_y();
  } else {
    shift_x_ = 0.0;
    shift_y_ = 0.0;
  }

  dist_x_ = (double)grid_x_ * grid_width_;
  dist_y_ = (double)grid_y_ * grid_width_;
  pixel_x_ = grid_x_ * grid_pixel_;
  pixel_y_ = grid_y_ * grid_pixel_;
  center_index_ = -1;
  index_max_ = grid_x_ * grid_y_;
  STDCOUT("origin_ " << std::to_string(origin_.lon) 
      << " " << std::to_string(origin_.lat));
  return true;
}
/**
 * @brief 用于请求地图图片
 * @param  image            输出拼接后的地图图片
 * @param  gps              输入GPS坐标
 * @return true 请求成功
 * @return false 请求失败
 */
bool LocalMap::query(cv::Mat& image, GPS_Coord& gps) {
  int center_index = getCenterIndex(gps);
  if (-1 == center_index) {
    STDCOUT("wrong gps location !!!");
    return false;
  }
  cv::Mat image_merged;
  image_merged = getMergeImage(center_index);
  // rostation
  double angle = -gps.heading;
  cv::Point2f center(image_merged.cols / 2, image_merged.rows / 2);
  cv::Mat rot = cv::getRotationMatrix2D(center, angle, 1);
  cv::warpAffine(image_merged, image, rot, image_merged.size());
  return true;
}
/**
 * @brief 用于请求地图图片
 * @param  image            输出拼接后的地图图片
 * @param  pose             输入UTM坐标
 * @return true 请求成功
 * @return false 请求失败
 */
bool LocalMap::query(cv::Mat& image, MapPose& pose) {
  int center_index = getCenterIndex(pose);
  if (-1 == center_index) {
    STDCOUT("wrong gps location !!!");
    return false;
  }
  image = getMergeImage(center_index);
  return true;
}
/**
 * @brief 根据UTM坐标获取中心网格索引
 * @param  pose_in          输入UTM位置
 * @return int 
 */
int LocalMap::getCenterIndex (MapPose& pose_in) {
  Vector2d pose;
  pose.x = pose_in.x + shift_x_;
  pose.y = pose_in.y + shift_y_;
  if (toPixel(pose)) {
    STDCOUT("pixel in global image (col row) " << pixel_location_.x << " " << pixel_location_.y);
    grid_index_.x = pixel_location_.x / grid_pixel_;
    grid_index_.y = pixel_location_.y / grid_pixel_;
    int index = grid_index_.x + grid_index_.y * grid_x_;
    return index;
  }
  return -1;
}
/**
 * @brief 根据GPS坐标获取中心网格索引
 * @param  gps          输入GPS位置
 * @return int 
 */
int LocalMap::getCenterIndex (GPS_Coord& gps) {
  STDCOUT("gps angle (lon lat) " << std::to_string(gps.lon) << " " << std::to_string(gps.lat));
  Vector2d& pose = coor_->toDist(gps);
  STDCOUT("pose from origin (x, y) " << pose.x << " " << pose.y);
  if (toPixel(pose)) {
    STDCOUT("pixel in global image (col row) " << pixel_location_.x << " " << pixel_location_.y);
    grid_index_.x = pixel_location_.x / grid_pixel_;
    grid_index_.y = pixel_location_.y / grid_pixel_;
    int index = grid_index_.x + grid_index_.y * grid_x_;
    return index;
  }
  return -1;
}
/**
 * @brief 拼接图片
 * @param  image            拼接后的图片
 * @return true 拼接成功
 * @return false 拼接失败
 */
bool LocalMap::merge(cv::Mat& image) {
  Vector2i lc;// local_center;
  lc.x = pixel_location_.x % grid_pixel_;
  lc.y = pixel_location_.y % grid_pixel_;
  cv::Mat up_mat;  
  cv::Mat middle_mat;  
  cv::Mat down_mat;            
  if (lc.x == 0) {
    cv::hconcat(cache_[image_index_[0]], 
        cache_[image_index_[1]], 
        up_mat);
    cv::hconcat(cache_[image_index_[3]], 
        cache_[image_index_[4]], 
        middle_mat);
    if (lc.y != 0) {
      cv::hconcat(cache_[image_index_[6]], 
          cache_[image_index_[7]], 
          down_mat);
    }
  } else {
    cv::hconcat(cache_[image_index_[0]](cv::Rect(lc.x, lc.y, 
            grid_pixel_-lc.x, grid_pixel_-lc.y)), 
        cache_[image_index_[1]](cv::Rect(0, lc.y, 
            grid_pixel_, grid_pixel_-lc.y)), 
        up_mat);
    cv::hconcat(up_mat, cache_[image_index_[2]](cv::Rect(0, lc.y, 
            lc.x, grid_pixel_-lc.y)), 
        up_mat);
    // STDCOUT("middle ");
    cv::hconcat(cache_[image_index_[3]](cv::Rect(lc.x, 0, 
            grid_pixel_-lc.x, grid_pixel_)), 
        cache_[image_index_[4]], 
        middle_mat);
    cv::hconcat(middle_mat, cache_[image_index_[5]](cv::Rect(0, 0, 
            lc.x, grid_pixel_)),
        middle_mat);
    // STDCOUT("down ");
    if (lc.y != 0) {
      cv::hconcat(cache_[image_index_[6]](cv::Rect(lc.x, 0, 
              grid_pixel_-lc.x, lc.y)), 
          cache_[image_index_[7]](cv::Rect(0, 0, 
              grid_pixel_, lc.y)), 
          down_mat);
      cv::hconcat(down_mat, cache_[image_index_[8]](cv::Rect(0, 0, 
              lc.x, lc.y)), 
          down_mat);
    }
    // STDCOUT("hconcat over ");
  }
  // merge three
  cv::Mat merged_image;
  cv::vconcat(up_mat, middle_mat, merged_image);
  if (lc.y != 0) {
    cv::vconcat(merged_image, down_mat, merged_image);
  }
  image = merged_image;
  return true;
}
/**
 * @brief 根据网格索引获取拼接图片
 * @param  index            输入网格索引
 * @return cv::Mat 获得拼接后的图片
 */
cv::Mat LocalMap::getMergeImage (int index) {
  if (index != center_index_) {
    int grid_index_y = index / grid_x_;
    int grid_index_x = index % grid_x_;
    int count = 0;
    for (int r=-1; r<2; r++) {
      int y = grid_index_y + r;      
      for (int c=-1; c<2; c++) {
        int x = grid_index_x + c;
        if (x>=grid_x_ || x<0 || y>=grid_y_ || y<0) {
          image_index_[count++] = -1;
        } else {
          image_index_[count++] = y*grid_x_ + x;
          image_index_[count] = checkIndex(image_index_[count]);
        }
      }
    }
    // add new cache 
    for (int ind : image_index_) {
      std::map<int, cv::Mat>::iterator iter;
      iter = cache_.find(ind);  
      if(iter == cache_.end()) {
        cv::Mat img = readImage(ind);
        cache_.insert(std::pair<int, cv::Mat> (ind, img));             
      }
    }
  }
  STDCOUT("before merge");
  cv::Mat merged_image;
  merge(merged_image);
  return merged_image;
}
/**
 * @brief 网格索引边界检测
 * @param  index            输入网格索引
 * @return int 返回检测结果，失败返回-1
 */
int LocalMap::checkIndex (int index) {
  int i = index < 0 ? -1 : index;
  return ((i < index_max_) ? i : -1);
}
/**
 * @brief 根据索引读取地图图片
 * @param  index            网格索引
 * @return cv::Mat 返回图片
 */
cv::Mat LocalMap::readImage(int index) {
  if (index < 0) {
    return cv::Mat::zeros(cv::Size(grid_pixel_, grid_pixel_), CV_8UC1);
  }
  std::stringstream ss;
  ss << std::setw(6) << std::setfill('0') << index;
  std::string tmppath = map_path_ + "/" +ss.str() + "." + map_type_;
  STDCOUT("open " << tmppath.c_str());
  std::fstream check_file;
  check_file.open(tmppath, std::ios::in);
  if(check_file) {
    return cv::imread(tmppath, 0);      
  } else {
    return cv::Mat::zeros(cv::Size(grid_pixel_, grid_pixel_), CV_8UC1);
  }
}
/**
 * @brief UTM坐标转Pixel坐标
 * @param  dist             输入UTM坐标
 * @return true 
 * @return false 
 */
bool LocalMap::toPixel(Vector2d& dist) {
  pixel_location_.x = (int)((dist.x) / stride_);
  pixel_location_.y = (int)((dist_y_ - dist.y) / stride_);          
  if ( (pixel_location_.x < 0 || pixel_location_.x > (pixel_x_-1) 
      || pixel_location_.y < 0 || pixel_location_.y > (pixel_y_-1)) )
    return false; 
  return true;
}

}