#include "marker_publisher.h"
#include "tf/transform_datatypes.h"
#include <iterator>
#include <algorithm>
#include <cmath>

MarkerPublisher::MarkerPublisher()
{
    ros::NodeHandle nh("/viz");
}

void MarkerPublisher::draw_box(std::string topic_name, zzz_driver_msgs::RigidBodyStateStamped::ConstPtr &ego_pose)
{   
    visualization_msgs::MarkerArray published_MarkerArray;
    // viz msg
    visualization_msgs::Marker temp_marker;
    temp_marker.header.frame_id = "map";
    temp_marker.header.stamp = ros::Time::now();
    temp_marker.ns = "viz";
    temp_marker.id = 1 ;
    temp_marker.type = visualization_msgs::Marker::CUBE;
    temp_marker.action = visualization_msgs::Marker::ADD;
    temp_marker.pose = ego_pose->state.pose.pose;
    tf::Quaternion tf_q;
    tf::quaternionMsgToTF(ego_pose->state.pose.pose.orientation, tf_q);
    double roll, pitch, yaw;
    tf::Matrix3x3(tf_q).getRPY(roll, pitch, yaw);
    this->ego_heading = yaw;

    temp_marker.pose.position.x = temp_marker.pose.position.x 
                                        + 1.5 *  std::cos(yaw);
    temp_marker.pose.position.y = temp_marker.pose.position.y 
                                        + 1.5 *  std::sin(yaw);

    temp_marker.scale.x = 4.0;
    temp_marker.scale.y = 2.0;
    temp_marker.scale.z = 1.8;
    temp_marker.color.r = 1.0;
    temp_marker.color.g = 0.0;
    temp_marker.color.b = 0.0;
    temp_marker.color.a = 0.5;
    temp_marker.lifetime = ros::Duration(0.5);
    published_MarkerArray.markers.emplace_back(temp_marker);
    //refresh self position attribute
    this->ego_x = ego_pose->state.pose.pose.position.x;
    this->ego_y = ego_pose->state.pose.pose.position.y;

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_boxes(std::string topic_name, const std::vector<zzz_cognition_msgs::RoadObstacle> &obstacles)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    // viz msg
    for (auto& obs : obstacles){
        visualization_msgs::Marker temp_marker;
        temp_marker.header.frame_id = "map";
        temp_marker.header.stamp = ros::Time::now();
        temp_marker.ns = "viz";
        temp_marker.id = 1 ;
        temp_marker.type = visualization_msgs::Marker::CUBE;
        temp_marker.action = visualization_msgs::Marker::ADD;
        temp_marker.pose = obs.state.pose.pose;
        temp_marker.scale.x = 1;
        temp_marker.scale.y = 1;
        temp_marker.scale.z = 1;
        temp_marker.color.r = 1;
        temp_marker.color.g = 0.0;
        temp_marker.color.b = 1;
        temp_marker.color.a = 0.5;
        temp_marker.lifetime = ros::Duration(0.5);
        published_MarkerArray.markers.emplace_back(temp_marker);
    }
    
    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_boxes(std::string topic_name, std::vector<zzz_cognition_msgs::RoadObstacle::Ptr> &obstacles)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    int count = 1;
    for (auto& obs : obstacles){
        visualization_msgs::Marker temp_marker;
        temp_marker.header.frame_id = "map";
        temp_marker.header.stamp = ros::Time::now();
        temp_marker.ns = "viz";
        temp_marker.id = count ;
        temp_marker.type = visualization_msgs::Marker::CUBE;
        temp_marker.action = visualization_msgs::Marker::ADD;
        temp_marker.pose = obs->state.pose.pose;
        temp_marker.scale.x = obs->dimension.length_x;
        temp_marker.scale.y = obs->dimension.length_y;
        temp_marker.scale.z = obs->dimension.length_z;
        temp_marker.color.r = 1.0;
        temp_marker.color.g = 1.0;
        temp_marker.color.b = 0.0;
        temp_marker.color.a = 0.5;
        temp_marker.lifetime = ros::Duration(0.5);
        published_MarkerArray.markers.emplace_back(temp_marker);
        count++;
    }

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_arrows(std::string topic_name, std::vector<zzz_cognition_msgs::RoadObstacle::Ptr> &obstacles)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    int count = 1;
    for (auto& obs : obstacles){
        visualization_msgs::Marker temp_marker;
        temp_marker.header.frame_id = "map";
        temp_marker.header.stamp = ros::Time::now();
        temp_marker.ns = "viz";
        temp_marker.id = count;
        temp_marker.type = visualization_msgs::Marker::ARROW;
        temp_marker.action = visualization_msgs::Marker::ADD;
        temp_marker.scale.x = 0.4;
        temp_marker.scale.y = 0.7;
        temp_marker.scale.z = 0.75;
        temp_marker.color.r = 1.0;
        temp_marker.color.g = 1.0;
        temp_marker.color.b = 0.0;
        temp_marker.color.a = 0.5;
        temp_marker.lifetime = ros::Duration(0.5);
        geometry_msgs::Point start_point;
        start_point.x = obs->state.pose.pose.position.x;
        start_point.y = obs->state.pose.pose.position.y;
        start_point.z = obs->state.pose.pose.position.z;
        geometry_msgs::Point end_point;
        end_point.x = obs->state.pose.pose.position.x + obs->state.twist.twist.linear.x;
        end_point.y = obs->state.pose.pose.position.y + obs->state.twist.twist.linear.y;
        end_point.z = obs->state.pose.pose.position.z + obs->state.twist.twist.linear.z;
        temp_marker.points.emplace_back(start_point);
        temp_marker.points.emplace_back(end_point);
        published_MarkerArray.markers.emplace_back(temp_marker);
        count++;
    }

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_line(std::string topic_name, const std::vector<zzz_navigation_msgs::LanePoint> &line)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    visualization_msgs::Marker temp_marker;
    temp_marker.header.frame_id = "map";
    temp_marker.header.stamp = ros::Time::now();
    temp_marker.ns = "viz";
    temp_marker.id = 1;
    temp_marker.type = visualization_msgs::Marker::LINE_STRIP;
    temp_marker.action = visualization_msgs::Marker::ADD;
    temp_marker.scale.x = 0.3;
    temp_marker.color.r = 1;
    temp_marker.color.g = 0;
    temp_marker.color.b = 0;
    temp_marker.color.a = 0.3;
    temp_marker.lifetime = ros::Duration(0.5);
    for (auto& point: line){
        geometry_msgs::Point temp_point;
        temp_point.x = point.position.x;
        temp_point.y = point.position.y;
        temp_point.z = point.position.z;
        temp_marker.points.emplace_back(temp_point);
    }
    published_MarkerArray.markers.emplace_back(temp_marker);

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_line(std::string topic_name, const nav_msgs::Path &path)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    visualization_msgs::Marker temp_marker;
    temp_marker.header.frame_id = "map";
    temp_marker.header.stamp = ros::Time::now();
    temp_marker.ns = "viz";
    temp_marker.id = 1;
    temp_marker.type = visualization_msgs::Marker::LINE_STRIP;
    temp_marker.action = visualization_msgs::Marker::ADD;
    temp_marker.scale.x = 1;
    temp_marker.color.r = 0;
    temp_marker.color.g = 1;
    temp_marker.color.b = 0;
    temp_marker.color.a = 0.3;
    temp_marker.lifetime = ros::Duration(0.5);
    for (auto& point: path.poses){
        geometry_msgs::Point temp_point;
        temp_point.x = point.pose.position.x;
        temp_point.y = point.pose.position.y;
        temp_point.z = point.pose.position.z;
        temp_marker.points.emplace_back(temp_point);
    }
    published_MarkerArray.markers.emplace_back(temp_marker);

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_lines(std::string topic_name, const std::vector<zzz_navigation_msgs::Lane> &lanes)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    int count = 1;
    for (auto& lane : lanes){
        visualization_msgs::Marker temp_marker;
        temp_marker.header.frame_id = "map";
        temp_marker.header.stamp = ros::Time::now();
        temp_marker.ns = "viz";
        temp_marker.id = count;
        temp_marker.type = visualization_msgs::Marker::LINE_STRIP;
        temp_marker.action = visualization_msgs::Marker::ADD;
        temp_marker.scale.x = 0.12;
        temp_marker.color.r = 0.1;
        temp_marker.color.g = 0.8;
        temp_marker.color.b = 0.7;
        temp_marker.color.a = 0.5;
        temp_marker.lifetime = ros::Duration(0.5);
        for (auto& lanepoint : lane.central_path_points){
            geometry_msgs::Point temp_point;
            temp_point.x = lanepoint.position.x;
            temp_point.y = lanepoint.position.y;
            temp_point.z = lanepoint.position.z;
            temp_marker.points.emplace_back(temp_point);
        }
        published_MarkerArray.markers.emplace_back(temp_marker);
        count++;
    }

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        temp_ptr->publish(published_MarkerArray);
    }
}

void MarkerPublisher::draw_text(std::string topic_name, std::string text)
{
    visualization_msgs::MarkerArray published_MarkerArray;
    // viz msg
    visualization_msgs::Marker temp_marker;
    temp_marker.header.frame_id = "map";
    temp_marker.header.stamp = ros::Time::now();
    temp_marker.ns = "viz";
    temp_marker.id = 1 ;
    temp_marker.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
    temp_marker.action = visualization_msgs::Marker::ADD;
    temp_marker.scale.z = 1;
    temp_marker.color.r = 0.0;
    temp_marker.color.g = 1.0;
    temp_marker.color.b = 0.5;
    temp_marker.color.a = 1;
    temp_marker.lifetime = ros::Duration(0.5);
    temp_marker.pose.position.x = this->ego_x + 2;
    temp_marker.pose.position.y = this->ego_y + std::distance(text_box.begin(), std::find(text_box.begin(), text_box.end(), topic_name));
    temp_marker.pose.position.z = 4;
    temp_marker.text = text;
    published_MarkerArray.markers.emplace_back(temp_marker);

    auto iter = publisher_group.find(topic_name);
    if (iter != publisher_group.end()){
        iter->second->publish(published_MarkerArray);
    }
    else{
        std::shared_ptr<ros::Publisher> temp_ptr(new ros::Publisher(nh.advertise<visualization_msgs::MarkerArray>(topic_name, 1)));
        publisher_group.emplace(topic_name, temp_ptr);
        this->text_box.emplace_back(topic_name);
        temp_ptr->publish(published_MarkerArray);
    }
}