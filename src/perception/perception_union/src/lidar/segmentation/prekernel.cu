#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#include "lidar/segmentation/prekernel.h"

constexpr double EPS = 1e-6;
constexpr double K_CV_PI = 3.1415926535897932384626433832795;

__device__ int dev_F2I(float val, float ori, float scale){
  return __float2int_rd((ori - val) * scale);
}

__device__ float dev_Pixel2Pc(int in_pixel, float in_size, float out_range)
{
	float res = 2.0f * out_range / in_size ;
	return out_range - (static_cast<float>(in_pixel) + 0.5f) * res;
}

__global__ void mathmatical_cal(unsigned int ch_size, float* dev_direction_data, 
								float* dev_distance_data, float dev_range, 
								int dev_width, int dev_height)
{
	for(unsigned int i = blockIdx.x * blockDim.x + threadIdx.x; 
		i < (ch_size); i+= blockDim.x * gridDim.x){
			int row = blockIdx.x;
			int col = threadIdx.x;
			float center_x = dev_Pixel2Pc(row, dev_height, dev_range);
			float center_y = dev_Pixel2Pc(col, dev_width, dev_range);
			dev_direction_data[i] = static_cast<float>(atan2(center_y, center_x) / (2.0 * K_CV_PI));
			dev_distance_data[i] = static_cast<float>(hypot(center_x, center_y) / dev_range - 0.5);

	}
}

__global__ void cuda_FLT2INT(float* in, int* out, int ch_size)
{
	for(unsigned int index = blockIdx.x * blockDim.x + threadIdx.x; 
		index < (ch_size); index += blockDim.x * gridDim.x) {
			out[index] = static_cast<int>((in[index]));
		}
}

__global__ void cloud_compute_average(float* dev_max_height_data_, float* dev_mean_height_data_,
		float* dev_count_data_, float* dev_mean_intensity_data_,
		float* dev_nonempty_data_, unsigned int ch_size, float* dev_log_table_ ) {       
	for(unsigned int index = blockIdx.x * blockDim.x + threadIdx.x; 
			index < (ch_size); index += blockDim.x * gridDim.x) {
		float count_data_ = dev_count_data_[index];
		float mean_height_data_ = dev_mean_height_data_[index];
		float mean_intensity_data_ = dev_mean_intensity_data_[index];
		///> The ESP value can be changed 
		if (count_data_ < EPS) {  
			dev_max_height_data_[index] = 0.0f;
		} else {
			mean_height_data_ /= count_data_;
			mean_intensity_data_ /= count_data_;
			dev_nonempty_data_[index] = 1.0f;
		}
		int count = (int)(count_data_);
		count_data_ = dev_log_table_[count];
		dev_count_data_[index] = count_data_;
		dev_mean_intensity_data_[index] = mean_intensity_data_;
		dev_mean_height_data_[index] = mean_height_data_;
	}
}



__global__ void scatter_point2grid(const PointXYZI* dev_pc, unsigned int pc_size, int* writing_location, int* point_id, float dev_range, int dev_width,
									int dev_height, float dev_max_h, float dev_min_h, float dev_inv_res_x, float dev_inv_res_y, int ch_size){
	for(unsigned int i = blockIdx.x * blockDim.x + threadIdx.x; 
		i < (pc_size); i+= blockDim.x * gridDim.x){
			PointXYZI ptc = dev_pc[i];
			int dev_px = dev_F2I(ptc.y, dev_range, dev_inv_res_x);  // col
			int dev_py = dev_F2I(ptc.x, dev_range, dev_inv_res_y);  // row

			if (ptc.z <= dev_min_h || ptc.z >= dev_max_h || dev_px >= dev_width 
				|| dev_px < 0 || dev_py >= dev_height || dev_py < 0) {
					continue;
			}


			int idx = dev_py * dev_width + dev_px;

			int loc =  atomicAdd(&writing_location[idx], 1);
	
			point_id[loc] = i;
		}
	}

__global__ void find_maximum(const PointXYZI* dev_pc, int* writing_location, int* point_id, float* dev_max_height, float* dev_top_intensity,
							float min_height, int ch_size)
{
	for(unsigned int i = blockIdx.x * blockDim.x + threadIdx.x; 
		i < (ch_size); i += blockDim.x * gridDim.x){
			float max_height = min_height;
			float top_intensity = 0.0f;
			
		for(int j = writing_location[i]; j < writing_location[i + 1]; j++){
			PointXYZI ptc = dev_pc[point_id[j]];
			float itensity = ptc.i / 255.0f;
			float height = ptc.z;
			if(max_height < height){
				max_height = height;
				top_intensity = itensity;
			}
		
		}

		dev_max_height[i] = max_height;
		dev_top_intensity[i] = top_intensity;
		

	}
}

__global__ void cloud_accumulation(const PointXYZI* dev_pc, unsigned int pc_size, float* dev_mean_height_data_, 
								float* dev_mean_intensity_data_, float* dev_count_data_, float dev_range, int dev_width,
								int dev_height, float dev_max_h, float dev_min_h, float dev_inv_res_x,
								float dev_inv_res_y, int ch_size){
	for(unsigned int i = blockIdx.x * blockDim.x + threadIdx.x; 
			i < (pc_size); i+= blockDim.x * gridDim.x){
		PointXYZI ptc = dev_pc[i];
		int dev_px = dev_F2I(ptc.y, dev_range, dev_inv_res_x);  // col
		int dev_py = dev_F2I(ptc.x, dev_range, dev_inv_res_y);  // row
		if (ptc.z <= dev_min_h || ptc.z >= dev_max_h || dev_px >= dev_width 
				|| dev_px < 0 || dev_py >= dev_height || dev_py < 0) {
			continue;
		}
		int idx = dev_py * dev_width + dev_px;
		float pz = ptc.z;
		float pi = ptc.i / 255.0f;
		atomicAdd(&dev_mean_height_data_[idx], pz);
		atomicAdd(&dev_mean_intensity_data_[idx], pi);
		atomicAdd(&dev_count_data_[idx], 1.0f);
	}
}
