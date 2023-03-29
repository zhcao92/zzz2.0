#pragma once


/// define struct to store lader data information
struct BoundingBox{
  int class_idx;
  float x;
  float y;
  float z;
  float h;
  float w;
  float l;
  float angle;
  float class_prob;
};

struct RawData {
    float x;
    float y;
    float z;
    float h;
    float w;
    float l;
    float yaw;
};

class ClassedBox{
public: 
    ClassedBox() {}
    // ClassedBox(float* raw, float* points) : invalid_(false)  {
    ClassedBox(float* raw) : invalid_(false)  {
        memcpy((void *)(&(this->raw_)), (void *)(raw), sizeof(RawData));
        // memcpy((void *)(&(this->corner_)), (void *)(points), 32);
        confidence_ = raw[7];
    }
    ~ClassedBox() {}
    ClassedBox& operator= (const ClassedBox& from) {
        memcpy((void *)(&(this->raw_)), (void *)(&(from.raw_)), sizeof(RawData));
        this->confidence_ = from.confidence_;
        this->invalid_ = from.invalid_;
        return *this;
    }
    bool operator< (const ClassedBox& from) {
        return (this->confidence_ < from.confidence_);
    }
    bool operator> (const ClassedBox& from) {
        return (this->confidence_ > from.confidence_);
    }
    bool operator== (const ClassedBox& from) {
        return (this->confidence_ == from.confidence_);
    }
public:
    RawData raw_;
    float confidence_;
    bool invalid_;
};
