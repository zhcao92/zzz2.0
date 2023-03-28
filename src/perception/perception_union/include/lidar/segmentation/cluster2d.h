/**
 * @file cluster2d.h
 * @brief 后处理聚类
 * @author H.Y. Pei (hongyan.pei@novauto.com.cn)
 * @version 1.0
 * @date 2021-02-19
 * 
 * @copyright Copyright (c) 2021
 * 
 * @par 修改日志:
 * <table>
 * <tr><th>Date       <th>Version <th>Author  <th>Description
 * <tr><td>2021-02-19 <td>1.0     <td>H.Y. Pei     <td>内容
 * </table>
 */
#ifndef CLUSTER2D_H
#define CLUSTER2D_H

#include "common/detected_object.h"
#include "lidar/segmentation/util.h"
#include "lidar/segmentation/disjoint_set.h"
#include <stdlib.h>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/point_cloud.h>
#include <pcl/PointIndices.h>
#include "opencv2/core/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"

/**
 * @brief Objects 类别定义
 */
enum ObjectType {
    UNKNOWN = 0,
    UNKNOWN_MOVABLE = 1,
    UNKNOWN_UNMOVABLE = 2,
    PEDESTRIAN = 3,
    BICYCLE = 4,
    VEHICLE = 5,
    MAX_OBJECT_TYPE = 6,
};

enum MetaType : int {
    META_UNKNOWN = 0,
    META_SMALLMOT,
    META_BIGMOT,
    META_NONMOT,
    META_PEDESTRIAN,
    MAX_META_TYPE
};

enum HeadingMap {
    HEADING_MAP_X,
    HEADING_MAP_Y,
    MAX_HEADING_MAP
};
/**
 * @brief 分类目标结构体
 */
struct Obstacle {
    std::vector<int> grids;
    pcl::PointCloud<pcl::PointXYZI>::Ptr cloud_ptr;
    float score;
    float height;
    float yaw;
    MetaType meta_type;
    std::vector<float> meta_type_probs;
    Obstacle() : 
            score(0.0), 
            height(-5.0), 
            yaw(0.0), 
            meta_type(META_UNKNOWN) {
        cloud_ptr.reset(new pcl::PointCloud<pcl::PointXYZI>);
        meta_type_probs.assign(MAX_META_TYPE, 0.0);
    }

    std::string GetTypeString() const {
        switch (meta_type) {
            case META_UNKNOWN:
                return "Unknown";
            case META_SMALLMOT:
                return "Car";
            case META_BIGMOT:
                return "Truck";
            case META_NONMOT:
                return "Cyclist";
            case META_PEDESTRIAN:
                return "Pedestrian";
            default:
                return "unknown";
        }
    }
};


/**
 * @brief 聚类class
 */
class Cluster2D {
public:
/**
 * @brief Construct a new Cluster 2 D object
 */
Cluster2D() = default;
/**
 * @brief Destroy the Cluster 2 D object
 */
~Cluster2D() = default;
/**
 * @brief 初始化
 * @param  rows             输入特征图行数
 * @param  cols             输入特征图列数
 * @param  range            变化范围
 * @return true 初始化成功
 * @return false 初始化失败
 */
bool init(int rows, int cols, float range);
/**
 * @brief 聚类过程
 * @param  category_pt_blob 输入特征图层
 * @param  instance_pt_blob 输入特征图层
 * @param  pc_ptr           输入点云
 * @param  valid_indices    输入点云索引
 * @param  objectness_thresh 输入聚类目标阈值
 * @param  use_all_grids_for_clustering 是否使用所有图层
 */
void cluster(const float* category_pt_blob,
            const float* instance_pt_blob,
            const pcl::PointCloud<pcl::PointXYZI>::Ptr & pc_ptr,
            const pcl::PointIndices & valid_indices,
            float objectness_thresh, 
            bool use_all_grids_for_clustering);
/**
 * @brief 高度过滤
 * @param  confidence_pt_blob 输入置信度图层
 * @param  height_pt_blob   输入高度图层
 */
void filter(const float* confidence_pt_blob,
            const float* height_pt_blob);
/**
 * @brief 分类
 * @param  classify_pt_blob 输入分类图层
 */
void classify(const float* classify_pt_blob);
/**
 * @brief 计算朝向
 * @param  heading_pt_blob  输入朝向图层
 */
void heading(const float* heading_pt_blob);
/**
 * @brief 获取感知目标
 * @param  confidence_thresh 输入置信度阈值
 * @param  height_thresh    输入高度阈值
 * @param  min_pts_num      输入最小点数阈值
 * @param  objects          输出目标
 * @param  in_header        输入时间戳
 */
void getObjects(const float confidence_thresh,
                const float height_thresh,
                const int min_pts_num,
                std::vector<perception::Object> & objects,
                const perception::Header & in_header);
/**
 * @brief 目标类型转换，转换为自定义目标类型
 * @param  in_obstacle      
 * @param  in_header        My Param doc
 * @return perception::Object 
 */
perception::Object obstacleToObject(const Obstacle & in_obstacle,
                                const perception::Header & in_header);

private:
    int rows_;
    int cols_;
    int grids_;
    float range_;
    float scale_;
    float inv_res_x_;
    float inv_res_y_;
    std::vector<int> point2grid_;
    std::vector<Obstacle> obstacles_;
    std::vector<int> id_img_;
    float object_dim_threshold_[5][3];
    pcl::PointCloud<pcl::PointXYZI>::Ptr pc_ptr_;
    const std::vector<int> *valid_indices_in_pc_ = nullptr;

    struct Node {
        Node *center_node;
        Node *parent;
        char node_rank;
        char traversed;
        bool is_center;
        bool is_object;
        int point_num;
        int obstacle_id;

        Node() {
            center_node = nullptr;
            parent = nullptr;
            node_rank = 0;
            traversed = 0;
            is_center = false;
            is_object = false;
            point_num = 0;
            obstacle_id = -1;
        }
    };

    inline bool IsValidRowCol(int row, int col) const {
    return IsValidRow(row) && IsValidCol(col);
    }

    inline bool IsValidRow(int row) const {
    return row >= 0 && row < rows_;
    }

    inline bool IsValidCol(int col) const {
    return col >= 0 && col < cols_;
    }

    inline int RowCol2Grid(int row, int col) const {
    return row * cols_ + col;
    }

    void traverse(Node *x);

    ObjectType getObjectType(const MetaType meta_type_id);
};

#endif //CLUSTER_2D_H
