#ifndef PREKERNEL_H
#define PREKERNEL_H

#include <cuda_runtime.h>
#include <device_launch_parameters.h>

struct PointXYZI {
	float x;
	float y;
	float z;
	float res0;
	float i;
	float res1;
	float res2;
	float res3;
	PointXYZI(float xx, float yy, float zz, float rr)
			: x(xx), y(yy), z(zz), i(rr){}
};

__global__ void cuda_FLT2INT(float* in, int* out, int ch_size);
__global__ void mathmatical_cal(unsigned int ch_size, float* dev_direction_data, 
								float* dev_distance_data, float dev_range, 
								int dev_width, int dev_height);
__global__ void cloud_compute_average(float* dev_max_height_data_, float* dev_mean_height_data_,
		float* dev_count_data_, float* dev_mean_intensity_data_, 
		float* dev_nonempty_data_, unsigned int ch_size, float* dev_log_table_);

__global__ void scatter_point2grid(const PointXYZI* dev_pc, unsigned int pc_size, int* writing_location, int* point_id, float dev_range, int dev_width,
									int dev_height, float dev_max_h, float dev_min_h, float dev_inv_res_x, float dev_inv_res_y, int ch_size);
__global__ void find_maximum(const PointXYZI* dev_pc, int* writing_location, int* point_id, float* dev_max_height, float* dev_top_intensity, float min_height, int ch_size);
__global__ void cloud_accumulation(const PointXYZI* dev_pc, unsigned int pc_size, float* dev_mean_height_data_, 
								float* dev_mean_intensity_data_, float* dev_count_data_, float dev_range, int dev_width,
								int dev_height, float dev_max_h, float dev_min_h, float dev_inv_res_x,
								float dev_inv_res_y, int ch_size);
__device__ int dev_F2I(float val, float ori, float scale);




#endif