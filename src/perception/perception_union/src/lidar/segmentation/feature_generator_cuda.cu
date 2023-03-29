/*
 * Copyright 2020-2022 Novauto. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


#include "lidar/segmentation/feature_generator_cuda.h"
#include "lidar/segmentation/prekernel.h"

#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <memory.h>
#include <cmath>
#include <thrust/scan.h>
#include <thrust/device_ptr.h>
// #include <pcl/point_types.h>
// #include <pcl/point_cloud.h>
#include <stdio.h>
#include <assert.h>
 
int BLOCK_X = 1024;

int Get_Block(int N)
{
  return (N + BLOCK_X - 1) / BLOCK_X;
} 
 // Convenience function for checking CUDA runtime API results
 // can be wrapped around any runtime API call. No-op in release builds.
 inline cudaError_t checkCuda(cudaError_t result) {
 #if defined(DEBUG) || defined(_DEBUG)
   if (result != cudaSuccess) {
     fprintf(stderr, "CUDA Runtime Error: %s\n",
       cudaGetErrorString(result));
     assert(result == cudaSuccess);
   }
 #endif
   return result;
 }

 void ExclusiveScan(int *input, int ele_num)
{
  thrust::device_ptr<int> dev_ptr(input);

  thrust::exclusive_scan(dev_ptr, dev_ptr + ele_num, dev_ptr);
  checkCuda(cudaDeviceSynchronize());

}

FeatureGenerator::~FeatureGenerator(){
    cudaFree(dev_log_table_);
    cudaFree(writing_location_);
    cudaFree(starting_points_id_);
}

void FeatureGenerator::free_out_feature_blocb()
{
 cudaFree(dev_out_blob_);
}
 

bool FeatureGenerator::init(void* out_blob, 
    int height = 640, int width = 640, float range = 60.0f, 
    float min_height = -5.0f, float max_height = 5.0f, 
    bool intensity_normalized = false, int batchsize = 1, 
    int channel = 8) {

  dev_out_blob_ = (float*)out_blob;
  width_   = width;
  height_  = height;
  channel_ = channel;  
  batch_   = batchsize;
  range_   = range;
  min_height_   = min_height;
  max_height_   = max_height;
  intensity_normalized_ = intensity_normalized; 
  channel_size_         = height_ * width_;
  channel_bytes_size_   = channel_size_ * sizeof(float);

  max_height_data_ = (float*)malloc(channel_bytes_size_);
  top_intensity_data_ = (float*)malloc(channel_bytes_size_);

  size_t log_table_bytes    = LOG_TABLE_SIZE * sizeof(float);
  checkCuda(cudaMalloc((void **)&dev_log_table_, log_table_bytes));
  checkCuda(cudaMalloc((void **)&writing_location_, sizeof(int) * (channel_size_ + 1)));
  checkCuda(cudaMalloc((void **)&starting_points_id_, sizeof(int) * (channel_size_ + 1)));

  int channel_index = 0;

  dev_max_height_data_     = dev_out_blob_ + channel_size_ * channel_index++;
  dev_mean_height_data_    = dev_out_blob_ + channel_size_ * channel_index++;
  dev_count_data_          = dev_out_blob_ + channel_size_ * channel_index++;
  dev_direction_data_      = dev_out_blob_ + channel_size_ * channel_index++;
  dev_top_intensity_data_  = dev_out_blob_ + channel_size_ * channel_index++;
  dev_mean_intensity_data_ = dev_out_blob_ + channel_size_ * channel_index++;
  dev_distance_data_       = dev_out_blob_ + channel_size_ * channel_index++;
  dev_nonempty_data_       = dev_out_blob_ + channel_size_ * channel_index++;

  float* log_table_;
  
  checkCuda( cudaMallocHost((void**)&log_table_, log_table_bytes) );

  for (int i = 0; i < LOG_TABLE_SIZE; ++i) {
    log_table_[i] = std::log1p((float)i);
  }



  checkCuda( cudaMemcpy(dev_log_table_, log_table_, 
      log_table_bytes, cudaMemcpyHostToDevice) );

  cudaFreeHost(log_table_);      

  return true;
}


void FeatureGenerator::generate(const void* pointcloud_ptr, int num) {
    
     PointXYZI* dev_pc;
     unsigned int pc_size = num;
     size_t point_bytes_size = num * sizeof(PointXYZI);
     PointXYZI* pc_ptr = (PointXYZI*)pointcloud_ptr;
     
     float inv_res_x = 0.5f * static_cast<float>(width_) / (range_);
     float inv_res_y = 0.5f * static_cast<float>(height_) / (range_);

     checkCuda( cudaMalloc((void**)&dev_pc, point_bytes_size) );
     checkCuda(cudaMalloc((void**)&point_id_, sizeof(int) * pc_size));

     checkCuda( cudaMemsetAsync((void*)dev_mean_height_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_count_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_top_intensity_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_mean_intensity_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_nonempty_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_direction_data_, 0, channel_bytes_size_) ); 
     checkCuda( cudaMemsetAsync((void*)dev_distance_data_, 0, channel_bytes_size_) ); 

     checkCuda( cudaMemsetAsync((void**)writing_location_, 0, sizeof(int) * (channel_size_ + 1)));
     checkCuda( cudaMemsetAsync((void**)starting_points_id_, 0, sizeof(int) * (channel_size_ + 1)));
 


     cudaStream_t stream1, stream2;

     cudaStreamCreate(&stream1);
     cudaStreamCreate(&stream2);

     mathmatical_cal<<<height_, width_, 0, stream1>>>(channel_size_, dev_direction_data_,dev_distance_data_,
                                                            range_, width_, height_);
 
     checkCuda( cudaMemcpyAsync((void*)dev_pc, (void*)pc_ptr, point_bytes_size, cudaMemcpyHostToDevice, stream2));
 
     cloud_accumulation<<<Get_Block(pc_size), BLOCK_X, 0, stream2>>>(dev_pc, pc_size, dev_mean_height_data_,
                                                      dev_mean_intensity_data_, dev_count_data_, range_, 
                                                      width_, height_, max_height_, min_height_, inv_res_x, inv_res_y, channel_size_);

     cuda_FLT2INT<<<Get_Block(channel_size_), BLOCK_X, 0, stream2>>>(dev_count_data_, writing_location_, channel_size_);

     checkCuda(cudaStreamSynchronize(stream2));
 
     ExclusiveScan(writing_location_, channel_size_ + 1);

     checkCuda(cudaMemcpy(starting_points_id_, writing_location_, sizeof(int) * (channel_size_ + 1), cudaMemcpyDeviceToDevice));

     scatter_point2grid<<<Get_Block(pc_size), BLOCK_X>>>(dev_pc, pc_size, writing_location_, point_id_, range_, width_, height_, 
                                                          max_height_, min_height_, inv_res_x, inv_res_y, channel_size_);
                                                
     find_maximum<<<Get_Block(channel_size_), BLOCK_X>>>(dev_pc, starting_points_id_, point_id_, dev_max_height_data_, 
                                                        dev_top_intensity_data_, min_height_, channel_size_);

     cloud_compute_average<<<Get_Block(channel_size_), BLOCK_X>>>(dev_max_height_data_, dev_mean_height_data_, dev_count_data_,
                          dev_mean_intensity_data_, dev_nonempty_data_, channel_size_, dev_log_table_);

     checkCuda(cudaStreamSynchronize(stream2));
     checkCuda(cudaStreamSynchronize(stream1));

     cudaFree(dev_pc);
     cudaFree(point_id_);

     cudaStreamDestroy(stream1);
     cudaStreamDestroy(stream2);
    
   
}
 