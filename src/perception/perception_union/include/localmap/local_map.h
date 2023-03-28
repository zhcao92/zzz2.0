/**
 * @file local_map.h
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
 * <tr><td>2021-02-18 <td>1.0     <td>H.Y. Pei     <td>内容
 * </table>
 */
#pragma once 

#include <cmath>
#include <string>
#include <iostream>
#include <iomanip>
#include <string>
#include <map>
#include <vector>
#include <array>
#include <opencv2/opencv.hpp>


namespace map {

/**
 * @brief Pixel坐标
 */
struct Vector2i {
  /** x pose in bitmap image : pixel*/
  int x;
  /** y pose in bitmap image : pixel*/
  int y;
};
/**
 * @brief UTM坐标
 */
struct Vector2d {
  /** x pose in map : meter*/
  double x;
  /** y pose in map : meter*/
  double y;
};
/**
 * @brief 带姿态的UTM坐标
 */
struct MapPose : public Vector2d {
  /** angle : degree */
  double heading;
};

/**
 * @brief GPS坐标
 */
struct GPS_Coord {
  double lon;
  double lat;
  double height;
  double heading;
  GPS_Coord() {
    lon = 0.0;
    lat = 0.0;
    height = 0.0;
    heading = 0.0;
  }
  bool is_same_point(GPS_Coord& newPoint) {
    return (fabs(newPoint.lon - lon) <= 1e-7) 
        && (fabs(newPoint.lat - lat) <= 1e-7);
  }
};
/**
 * @brief Utm 类，用于UTM和GPS之间坐标转换
 */
class Utm {
public:
  /**
   * @brief Construct a new Utm object
   */
  Utm();
  /**
   * @brief This function convert Latitude and Longitude to UTM coordinate
   * @param  latitude         Latitude between 80 deletterg S and 84 deg N, e.g. (-80.0 to 84.0)
   * @param  longitude        Longitude between 180 deg W and 180 deg E, e.g. (-180.0 to 180.0).
   * @param  force_zone_numberMy Zone Number is represented with global map numbers of an UTM Zone
   *                             Numbers Map. You may force conversion including one UTM Zone Number.
   * @param  force_zone_letterMy Zone letter
   * @return Vector2d ootput position in UTM coordinate
   */
  Vector2d fromLatLon(double latitude, double longitude, 
      int force_zone_number, char force_zone_letter);

private:
  bool inBounds(double x, double lower, double upper); 
  double radians(double deg); 
  int zone_number_to_central_longitude(int zone_number);

private:
  double K0;
  double E ;
  double E2;
  double E3;
  double E_P2 ;

  double SQRT_E ;
  double _E ;
  double _E2;
  double _E3;
  double _E4;
  double _E5;

  double M1 ;
  double M2 ;
  double M3 ;
  double M4 ;

  double P2 ;
  double P3 ;
  double P4 ;
  double P5 ;

  double R ;
  std::string ZONE_LETTERS ;
};

/**
 * @brief PlaneCoordinate类，用于全局坐标和局部坐标之间转换
 */
class PlaneCoordinate {
public:
  /**
   * @brief Construct a new Plane Coordinate:: Plane Coordinate object
   *        输入参考点的GPS坐标，用于转换局部坐标系
   * @param  baseP            输入参考坐标
   */
  PlaneCoordinate(GPS_Coord baseP);
  /**
   * @brief 输出坐标差矢量
   * @param  gps              输入GPS坐标
   * @return Vector2d& 输出坐标差矢量的引用
   */
  Vector2d& toDist(GPS_Coord gps);
  double origin_x() {return ox;}
  double origin_y() {return oy;}
private:
  Utm utm_;
  GPS_Coord basePoint;
  double ox;
  double oy;
  Vector2d m;
};

#define MERGE_IMAGE_SIZE  9
/**
 * @brief LocalMap类，bitmap地图检索引擎
 */
class LocalMap {
public:
  /**
   * @brief Construct a new Local Map:: Local Map object
   */
  LocalMap();
  ~LocalMap();
  /**
   * @brief 初始化地图引擎
   * @param  path             输入配置文件路径
   * @return true 初始化成功
   * @return false 初始化失败
   */
  bool init(std::string& path);
  /**
   * @brief 用于请求地图图片
   * @param  image            输出拼接后的地图图片
   * @param  gps              输入GPS坐标
   * @return true 请求成功
   * @return false 请求失败
   */
  bool query(cv::Mat& image, GPS_Coord& gps);
  /**
   * @brief 用于请求地图图片
   * @param  image            输出拼接后的地图图片
   * @param  pose             输入UTM坐标
   * @return true 请求成功
   * @return false 请求失败
   */
  bool query(cv::Mat& image, MapPose& gps);
  double stride() { return stride_; }
  
private:
  /**
   * @brief 根据UTM坐标获取中心网格索引
   * @param  pose_in          输入UTM位置
   * @return int 
   */
  int getCenterIndex (GPS_Coord& gps);
  /**
   * @brief 根据GPS坐标获取中心网格索引
   * @param  gps          输入GPS位置
   * @return int 
   */
  int getCenterIndex (MapPose& gps);
  /**
   * @brief 拼接图片
   * @param  image            拼接后的图片
   * @return true 拼接成功
   * @return false 拼接失败
   */
  bool merge(cv::Mat& image);
  /**
   * @brief 根据网格索引获取拼接图片
   * @param  index            输入网格索引
   * @return cv::Mat 获得拼接后的图片
   */
  cv::Mat getMergeImage (int index);
  /**
   * @brief 网格索引边界检测
   * @param  index            输入网格索引
   * @return int 返回检测结果，失败返回-1
   */
  int checkIndex (int index);
  /**
   * @brief 根据索引读取地图图片
   * @param  index            网格索引
   * @return cv::Mat 返回图片
   */
  cv::Mat readImage(int index);
  /**
   * @brief UTM坐标转Pixel坐标
   * @param  dist             输入UTM坐标
   * @return true 
   * @return false 
   */
  bool toPixel(Vector2d& dist);

private:
  PlaneCoordinate* coor_;
  std::string map_path_;
  std::string map_type_;
  GPS_Coord origin_;
  double grid_width_;
  double stride_;
  double dist_x_;
  double dist_y_;
  double shift_x_;
  double shift_y_;
  int grid_pixel_; 
  int grid_x_;
  int grid_y_;  
  int pixel_x_;
  int pixel_y_;  
  int index_max_; 
  cv::Mat merged_image_;
  Vector2i pixel_location_;
  Vector2i grid_index_;
  int center_index_;
  std::map<int, cv::Mat> cache_;
  std::array<int, MERGE_IMAGE_SIZE> image_index_;
};

} // namespace map