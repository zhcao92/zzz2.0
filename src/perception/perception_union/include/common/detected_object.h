#pragma once 

#include <vector>
#include <stdlib.h>
#include <Eigen/Dense>

namespace perception {
    
struct Header {
	size_t      seq;
	timespec    timestamp;
};

struct Vector3d {
double x;
double y;
double z;
};
struct Vector4d {
double w;
double x;
double y;
double z;
};
struct Vector2f {
float x;
float y;
};
struct Vector3f {
float x;
float y;
float z;
};
struct Vector4f {
float w;
float x;
float y;
float z;
};


struct Object {
	enum ObjectType : int {
		UNKNOWN = 0,
		UNKNOWN_MOVABLE = 1,
		UNKNOWN_UNMOVABLE = 2,
		PEDESTRIAN = 3,
		BICYCLE = 4,
		VEHICLE = 5,
		MAX_OBJECT_TYPE = 6,
	};
	// enum MetaType : int {
	// 	META_UNKNOWN = 0,
	// 	META_SMALLMOT,
	// 	META_BIGMOT,
	// 	META_NONMOT,
	// 	META_PEDESTRIAN,
	// 	MAX_META_TYPE
	// };
	Header      header;
	float       score;
	float       yaw;
	size_t      id;
	int         label;
	perception::Vector3d pose;
	perception::Vector4d orie;
	perception::Vector3d dims;
	perception::Vector3d velo;
	perception::Vector3d acce;
	bool            valid;
	bool            pose_reliable;
	bool            velocity_reliable;
	int		    			point_num;
	perception::Vector3f		direction;
	perception::Vector3f		barycenter;
	perception::Vector3f		center;
	perception::Vector3f		barycenter_velocity;
	perception::Vector3f		center_velocity;
	perception::Vector2f		corners[4];
}; // struct Object 

typedef std::vector<Object> ObjectArray;

} // namespace perception


