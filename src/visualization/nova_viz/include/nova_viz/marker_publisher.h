#ifndef NVIZ
#define NVIZ

#include "ros/ros.h"
#include <memory>
#include "geometry_msgs/Point.h"
#include "nav_msgs/Path.h"
#include "visualization_msgs/MarkerArray.h"
#include "zzz_driver_msgs/RigidBodyStateStamped.h"
#include "zzz_cognition_msgs/RoadObstacle.h"
#include "zzz_navigation_msgs/Map.h"

class MarkerPublisher
{
    public:
        MarkerPublisher();
        void draw_box(std::string topic_name, zzz_driver_msgs::RigidBodyStateStamped::ConstPtr &ego_pose);
        void draw_boxes(std::string topic_name, const std::vector<zzz_cognition_msgs::RoadObstacle> &obstacles);
        void draw_boxes(std::string topic_name, std::vector<zzz_cognition_msgs::RoadObstacle::Ptr> &obstacles);
        void draw_arrows(std::string topic_name, std::vector<zzz_cognition_msgs::RoadObstacle::Ptr> &obstacles);
        void draw_line(std::string topic_name, const std::vector<zzz_navigation_msgs::LanePoint> &line);
        void draw_line(std::string topic_name, const nav_msgs::Path &path);
        void draw_lines(std::string topic_name, const std::vector<zzz_navigation_msgs::Lane> &lanes);
        void draw_text(std::string topic_name, std::string text);
    private:
        float ego_x = 0;
        float ego_y = 0;
        float ego_heading = 0;
        std::vector<std::string> text_box;
        ros::NodeHandle nh;
        std::map<std::string, std::shared_ptr<ros::Publisher>> publisher_group;
};

#endif