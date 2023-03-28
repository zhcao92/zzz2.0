#pragma once 

namespace perception {

struct BitmapBit8 {
    float stride;
    int height; 
    int width;
    unsigned char* data;
};    

}
