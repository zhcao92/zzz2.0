# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from zzz_cognition_msgs/RoadObstacle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import zzz_driver_msgs.msg
import zzz_perception_msgs.msg

class RoadObstacle(genpy.Message):
  _md5sum = "88c2dcf03d4744032d7b40f81015259b"
  _type = "zzz_cognition_msgs/RoadObstacle"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message contains all the information that planning needs for a road object


# Unique indentity of the obstacle
uint64 uid

# The confidence of existence, can be used to determine whether this object is valid, or invalid
# A possible way of get the confidence is by using tracking age
float32 confidence

# The best guess of obstacle type
zzz_perception_msgs/ObjectClass cls

# Estimated kinematic properties
zzz_driver_msgs/RigidBodyState state
# Kinematic properties in Frenet Frame
zzz_driver_msgs/FrenetSerretState2D ffstate

# Relationship to lane, for prediction or locating
float32 lane_index # in which lane
float32 lane_anglediff # angle difference
float32 lane_dist_left_t # distance to lane
float32 lane_dist_right_t
float32 lane_dist_s # s position in the road

# A flag to mark whether the object is static
bool is_static

# XXX: Do we need history trajectories?

# ----- Physical Boundary (Optional) -----
uint8 shape_type
uint8 SHAPE_UNDEFINED = 0
uint8 SHAPE_POLYGON = 1

# Representation of the object if it's represented by polygon
geometry_msgs/Polygon shape

# bbox, refer to BoundingBox in zzz_perception_msgs

zzz_perception_msgs/DimensionWithCovariance dimension
#uint8 dimension

# Null uncertainty of Inf uncertainty means that the shape is not actually generated
float32[] shape_uncertainty

# ----- High level behavior estimation -----

uint8 behavior
uint8 BEHAVIOR_UNKNOWN = 0
uint8 BEHAVIOR_STOPPING = 1 # vehicle is going to stop completely or stay stopped
uint8 BEHAVIOR_FOLLOW = 2 # follow lane or straight line
uint8 BEHAVIOR_MOVING_LEFT = 3 # changing to its left lane or branch left
uint8 BEHAVIOR_MOVING_RIGHT = 4 # changing to its right lane or branch right

# This field is preserved to adapt to yield situation.
# Yield situation includes left turn, right turn, sequencial stop sign, emergency vehicle, etc.
# Yield means if your path conflict with the object's, you should wait for the object
# to go through the conflict point.
uint8 priority
uint8 PRIORITY_UNKNOWN = 0
uint8 PRIORITY_NORMAL = 1
uint8 PRIORITY_CAUTIOUS = 2 # You can move when this obstacle is far away
uint8 PRIORITY_STOP = 3 # Should let this vehicle to go and then you can move

================================================================================
MSG: zzz_perception_msgs/ObjectClass
# The size of (in meters) the bounding box surrounding the object's center pose.

# The unique numeric classification ID of object detected
uint32 classid

# The probability or confidence value of the detected object. By convention, this value should lie in the range 0~1.
float32 score

# Other information about the class (e.g. class name). Only for debug
string comments

##############################################################
###   Here is a hierarchical table of all included types   ###
##############################################################
# Hierarchy is encoded in a 32-bit integer. Each 8 bit stand for a level, and leftmost 8 bit is the top level

uint32 UNKNOWN                          = 0     # 0x0000
uint32 UNKNOWN_DYNAMIC                  = 16    # 0x0010
uint32 UNKNOWN_STATIC                   = 32    # 0x0020

uint32 VEHICLE                          = 1     # 0x0001
uint32 VEHICLE_PASSENGER                = 17    # 0x0011, normal passenger_vehicles
uint32 VEHICEL_VAN                      = 33    # 0x0021
uint32 VEHICLE_TRUCK                    = 49    # 0x0031
uint32 VEHICLE_BUS                      = 65    # 0x0041
uint32 VEHICLE_SCHOOLBUS                = 321   # 0x0141
uint32 VEHICLE_SCHOOLBUS_STOP           = 4417  # 0x1141
uint32 VEHICLE_EMERGENCY                = 81    # 0x0051, emergency vehicles, including 
uint32 VEHICLE_EMERGENCY_POLICE         = 337   # 0x0151
uint32 VEHICLE_EMERGENCY_POLICE_FLASH   = 4433  # 0x1151
uint32 VEHICLE_EMERGENCY_FIRE           = 593   # 0x0251
uint32 VEHICLE_EMERGENCY_FIRE_FLASH     = 4689  # 0x1251
uint32 VEHICLE_EMERGENCY_CIVIL          = 849   # 0x0351, including utility vehicle and tow trucks
uint32 VEHICLE_EMERGENCY_CIVIL_FLASH    = 4945  # 0x1351

uint32 HUMAN                            = 2     # 0x0002
uint32 HUMAN_PEDESTRIAN                 = 18    # 0x0012
uint32 HUMAN_ROADWORKER                 = 34    # 0x0022

uint32 CYCLIST                          = 3     # 0x0003
uint32 CYCLIST_BICYCLE                  = 19    # 0x0013
uint32 CYCLIST_MOTORCYCLE               = 35    # 0x0023
uint32 CYCLIST_TRICYCLE                 = 51    # 0x0033

uint32 ANIMAL                           = 4     # 0x0004
uint32 ANIMAL_DOGLIKE                   = 20    # 0x0014, includes dog, cat, wolf, etc.
uint32 ANIMAL_DEERLIKE                  = 36    # 0x0024, includes deer, etc.
uint32 ANIMAL_COWLIKE                   = 52    # 0x0034, includes cow, horse, pig, etc.

uint32 ROAD_OBJECT                      = 5     # 0x0005, objects in road area
uint32 ROAD_TRAFFIC_CONE                = 21    # 0x0015, traffic cone
uint32 ROAD_TRAFFIC_BLOCKER             = 37    # 0x0025, traffic blocker, e.g. "Road Closed" sign

uint32 ROADSIDE_OBJECT                  = 6     # 0x0006, objects in road side
uint32 ROADSIDE_TRAFFIC_LIGHT           = 22    # 0x0016
uint32 ROADSIDE_TRAFFIC_SIGN            = 38    # 0x0026
uint32 ROADSIDE_TREE                    = 54    # 0x0036, including all roadside vegetation

uint32 LEVEL_MASK_0                     = 15    # 0x000f
uint32 LEVEL_MASK_1                     = 255   # 0x00ff
uint32 LEVEL_MASK_2                     = 4095  # 0x0fff
uint32 LEVEL_MASK_3                     = 65535 # 0xffff

================================================================================
MSG: zzz_driver_msgs/RigidBodyState
# This message contains commonly used state variables of rigid body

# ID of frame fixed to the rigid body
string child_frame_id

# Location and orientatation of the object
geometry_msgs/PoseWithCovariance  pose

# Linear and angular velocity of the object
geometry_msgs/TwistWithCovariance twist

# Linear and angular acceleration of the object
geometry_msgs/AccelWithCovariance accel

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: zzz_driver_msgs/FrenetSerretState2D
# This message describes a state in 2d Frenet-Serret Frame
# By 2d Frenet-Serret Frame we ignore the movement in z (in Cartesian) / b (in Frenet) direction
# For more information, refer to https://en.wikipedia.org/wiki/Frenet-Serret_formulas

# 2D states
float32 s # Offset in tanget direction
float32 d # Offset in normal direction
          # we omit the offset in binormal direction
float32 psi # Heading angle in s-d plane
float32[9] pose_covariance

# First order derivatives
float32 vs
float32 vd
float32 omega
float32[9] twist_covariance

# Second order derivatives
float32 sa # prevent keyword conflict
float32 ad
float32 epsilon
float32[9] accel_covariance

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: zzz_perception_msgs/DimensionWithCovariance
# Describing the size object in 3D space (in meters) with uncertainty

float64 length_x # length(longitudinal direction)
float64 length_y # width(lateral direction)
float64 length_z # height

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (length_x, length_y, length_z)
float64[9] covariance
"""
  # Pseudo-constants
  SHAPE_UNDEFINED = 0
  SHAPE_POLYGON = 1
  BEHAVIOR_UNKNOWN = 0
  BEHAVIOR_STOPPING = 1
  BEHAVIOR_FOLLOW = 2
  BEHAVIOR_MOVING_LEFT = 3
  BEHAVIOR_MOVING_RIGHT = 4
  PRIORITY_UNKNOWN = 0
  PRIORITY_NORMAL = 1
  PRIORITY_CAUTIOUS = 2
  PRIORITY_STOP = 3

  __slots__ = ['uid','confidence','cls','state','ffstate','lane_index','lane_anglediff','lane_dist_left_t','lane_dist_right_t','lane_dist_s','is_static','shape_type','shape','dimension','shape_uncertainty','behavior','priority']
  _slot_types = ['uint64','float32','zzz_perception_msgs/ObjectClass','zzz_driver_msgs/RigidBodyState','zzz_driver_msgs/FrenetSerretState2D','float32','float32','float32','float32','float32','bool','uint8','geometry_msgs/Polygon','zzz_perception_msgs/DimensionWithCovariance','float32[]','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       uid,confidence,cls,state,ffstate,lane_index,lane_anglediff,lane_dist_left_t,lane_dist_right_t,lane_dist_s,is_static,shape_type,shape,dimension,shape_uncertainty,behavior,priority

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RoadObstacle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.uid is None:
        self.uid = 0
      if self.confidence is None:
        self.confidence = 0.
      if self.cls is None:
        self.cls = zzz_perception_msgs.msg.ObjectClass()
      if self.state is None:
        self.state = zzz_driver_msgs.msg.RigidBodyState()
      if self.ffstate is None:
        self.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D()
      if self.lane_index is None:
        self.lane_index = 0.
      if self.lane_anglediff is None:
        self.lane_anglediff = 0.
      if self.lane_dist_left_t is None:
        self.lane_dist_left_t = 0.
      if self.lane_dist_right_t is None:
        self.lane_dist_right_t = 0.
      if self.lane_dist_s is None:
        self.lane_dist_s = 0.
      if self.is_static is None:
        self.is_static = False
      if self.shape_type is None:
        self.shape_type = 0
      if self.shape is None:
        self.shape = geometry_msgs.msg.Polygon()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.DimensionWithCovariance()
      if self.shape_uncertainty is None:
        self.shape_uncertainty = []
      if self.behavior is None:
        self.behavior = 0
      if self.priority is None:
        self.priority = 0
    else:
      self.uid = 0
      self.confidence = 0.
      self.cls = zzz_perception_msgs.msg.ObjectClass()
      self.state = zzz_driver_msgs.msg.RigidBodyState()
      self.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D()
      self.lane_index = 0.
      self.lane_anglediff = 0.
      self.lane_dist_left_t = 0.
      self.lane_dist_right_t = 0.
      self.lane_dist_s = 0.
      self.is_static = False
      self.shape_type = 0
      self.shape = geometry_msgs.msg.Polygon()
      self.dimension = zzz_perception_msgs.msg.DimensionWithCovariance()
      self.shape_uncertainty = []
      self.behavior = 0
      self.priority = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_QfIf().pack(_x.uid, _x.confidence, _x.cls.classid, _x.cls.score))
      _x = self.cls.comments
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.state.pose.pose.position.x, _x.state.pose.pose.position.y, _x.state.pose.pose.position.z, _x.state.pose.pose.orientation.x, _x.state.pose.pose.orientation.y, _x.state.pose.pose.orientation.z, _x.state.pose.pose.orientation.w))
      buff.write(_get_struct_36d().pack(*self.state.pose.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.state.twist.twist.linear.x, _x.state.twist.twist.linear.y, _x.state.twist.twist.linear.z, _x.state.twist.twist.angular.x, _x.state.twist.twist.angular.y, _x.state.twist.twist.angular.z))
      buff.write(_get_struct_36d().pack(*self.state.twist.covariance))
      _x = self
      buff.write(_get_struct_6d().pack(_x.state.accel.accel.linear.x, _x.state.accel.accel.linear.y, _x.state.accel.accel.linear.z, _x.state.accel.accel.angular.x, _x.state.accel.accel.angular.y, _x.state.accel.accel.angular.z))
      buff.write(_get_struct_36d().pack(*self.state.accel.covariance))
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.s, _x.ffstate.d, _x.ffstate.psi))
      buff.write(_get_struct_9f().pack(*self.ffstate.pose_covariance))
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.vs, _x.ffstate.vd, _x.ffstate.omega))
      buff.write(_get_struct_9f().pack(*self.ffstate.twist_covariance))
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.sa, _x.ffstate.ad, _x.ffstate.epsilon))
      buff.write(_get_struct_9f().pack(*self.ffstate.accel_covariance))
      _x = self
      buff.write(_get_struct_5f2B().pack(_x.lane_index, _x.lane_anglediff, _x.lane_dist_left_t, _x.lane_dist_right_t, _x.lane_dist_s, _x.is_static, _x.shape_type))
      length = len(self.shape.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.shape.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3d().pack(_x.dimension.length_x, _x.dimension.length_y, _x.dimension.length_z))
      buff.write(_get_struct_9d().pack(*self.dimension.covariance))
      length = len(self.shape_uncertainty)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.shape_uncertainty))
      _x = self
      buff.write(_get_struct_2B().pack(_x.behavior, _x.priority))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cls is None:
        self.cls = zzz_perception_msgs.msg.ObjectClass()
      if self.state is None:
        self.state = zzz_driver_msgs.msg.RigidBodyState()
      if self.ffstate is None:
        self.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D()
      if self.shape is None:
        self.shape = geometry_msgs.msg.Polygon()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.DimensionWithCovariance()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.uid, _x.confidence, _x.cls.classid, _x.cls.score,) = _get_struct_QfIf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cls.comments = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cls.comments = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.state.pose.pose.position.x, _x.state.pose.pose.position.y, _x.state.pose.pose.position.z, _x.state.pose.pose.orientation.x, _x.state.pose.pose.orientation.y, _x.state.pose.pose.orientation.z, _x.state.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.state.pose.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.state.twist.twist.linear.x, _x.state.twist.twist.linear.y, _x.state.twist.twist.linear.z, _x.state.twist.twist.angular.x, _x.state.twist.twist.angular.y, _x.state.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.state.twist.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 48
      (_x.state.accel.accel.linear.x, _x.state.accel.accel.linear.y, _x.state.accel.accel.linear.z, _x.state.accel.accel.angular.x, _x.state.accel.accel.angular.y, _x.state.accel.accel.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.state.accel.covariance = _get_struct_36d().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.ffstate.s, _x.ffstate.d, _x.ffstate.psi,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.pose_covariance = _get_struct_9f().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.ffstate.vs, _x.ffstate.vd, _x.ffstate.omega,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.twist_covariance = _get_struct_9f().unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.ffstate.sa, _x.ffstate.ad, _x.ffstate.epsilon,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.accel_covariance = _get_struct_9f().unpack(str[start:end])
      _x = self
      start = end
      end += 22
      (_x.lane_index, _x.lane_anglediff, _x.lane_dist_left_t, _x.lane_dist_right_t, _x.lane_dist_s, _x.is_static, _x.shape_type,) = _get_struct_5f2B().unpack(str[start:end])
      self.is_static = bool(self.is_static)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shape.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.shape.points.append(val1)
      _x = self
      start = end
      end += 24
      (_x.dimension.length_x, _x.dimension.length_y, _x.dimension.length_z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.dimension.covariance = _get_struct_9d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.shape_uncertainty = s.unpack(str[start:end])
      _x = self
      start = end
      end += 2
      (_x.behavior, _x.priority,) = _get_struct_2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_QfIf().pack(_x.uid, _x.confidence, _x.cls.classid, _x.cls.score))
      _x = self.cls.comments
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.state.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.state.pose.pose.position.x, _x.state.pose.pose.position.y, _x.state.pose.pose.position.z, _x.state.pose.pose.orientation.x, _x.state.pose.pose.orientation.y, _x.state.pose.pose.orientation.z, _x.state.pose.pose.orientation.w))
      buff.write(self.state.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.state.twist.twist.linear.x, _x.state.twist.twist.linear.y, _x.state.twist.twist.linear.z, _x.state.twist.twist.angular.x, _x.state.twist.twist.angular.y, _x.state.twist.twist.angular.z))
      buff.write(self.state.twist.covariance.tostring())
      _x = self
      buff.write(_get_struct_6d().pack(_x.state.accel.accel.linear.x, _x.state.accel.accel.linear.y, _x.state.accel.accel.linear.z, _x.state.accel.accel.angular.x, _x.state.accel.accel.angular.y, _x.state.accel.accel.angular.z))
      buff.write(self.state.accel.covariance.tostring())
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.s, _x.ffstate.d, _x.ffstate.psi))
      buff.write(self.ffstate.pose_covariance.tostring())
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.vs, _x.ffstate.vd, _x.ffstate.omega))
      buff.write(self.ffstate.twist_covariance.tostring())
      _x = self
      buff.write(_get_struct_3f().pack(_x.ffstate.sa, _x.ffstate.ad, _x.ffstate.epsilon))
      buff.write(self.ffstate.accel_covariance.tostring())
      _x = self
      buff.write(_get_struct_5f2B().pack(_x.lane_index, _x.lane_anglediff, _x.lane_dist_left_t, _x.lane_dist_right_t, _x.lane_dist_s, _x.is_static, _x.shape_type))
      length = len(self.shape.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.shape.points:
        _x = val1
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_3d().pack(_x.dimension.length_x, _x.dimension.length_y, _x.dimension.length_z))
      buff.write(self.dimension.covariance.tostring())
      length = len(self.shape_uncertainty)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.shape_uncertainty.tostring())
      _x = self
      buff.write(_get_struct_2B().pack(_x.behavior, _x.priority))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cls is None:
        self.cls = zzz_perception_msgs.msg.ObjectClass()
      if self.state is None:
        self.state = zzz_driver_msgs.msg.RigidBodyState()
      if self.ffstate is None:
        self.ffstate = zzz_driver_msgs.msg.FrenetSerretState2D()
      if self.shape is None:
        self.shape = geometry_msgs.msg.Polygon()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.DimensionWithCovariance()
      end = 0
      _x = self
      start = end
      end += 20
      (_x.uid, _x.confidence, _x.cls.classid, _x.cls.score,) = _get_struct_QfIf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cls.comments = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cls.comments = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state.child_frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.state.pose.pose.position.x, _x.state.pose.pose.position.y, _x.state.pose.pose.position.z, _x.state.pose.pose.orientation.x, _x.state.pose.pose.orientation.y, _x.state.pose.pose.orientation.z, _x.state.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 288
      self.state.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.state.twist.twist.linear.x, _x.state.twist.twist.linear.y, _x.state.twist.twist.linear.z, _x.state.twist.twist.angular.x, _x.state.twist.twist.angular.y, _x.state.twist.twist.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.state.twist.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 48
      (_x.state.accel.accel.linear.x, _x.state.accel.accel.linear.y, _x.state.accel.accel.linear.z, _x.state.accel.accel.angular.x, _x.state.accel.accel.angular.y, _x.state.accel.accel.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 288
      self.state.accel.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      _x = self
      start = end
      end += 12
      (_x.ffstate.s, _x.ffstate.d, _x.ffstate.psi,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.pose_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=9)
      _x = self
      start = end
      end += 12
      (_x.ffstate.vs, _x.ffstate.vd, _x.ffstate.omega,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.twist_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=9)
      _x = self
      start = end
      end += 12
      (_x.ffstate.sa, _x.ffstate.ad, _x.ffstate.epsilon,) = _get_struct_3f().unpack(str[start:end])
      start = end
      end += 36
      self.ffstate.accel_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=9)
      _x = self
      start = end
      end += 22
      (_x.lane_index, _x.lane_anglediff, _x.lane_dist_left_t, _x.lane_dist_right_t, _x.lane_dist_s, _x.is_static, _x.shape_type,) = _get_struct_5f2B().unpack(str[start:end])
      self.is_static = bool(self.is_static)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shape.points = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point32()
        _x = val1
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        self.shape.points.append(val1)
      _x = self
      start = end
      end += 24
      (_x.dimension.length_x, _x.dimension.length_y, _x.dimension.length_z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.dimension.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.shape_uncertainty = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 2
      (_x.behavior, _x.priority,) = _get_struct_2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_36d = None
def _get_struct_36d():
    global _struct_36d
    if _struct_36d is None:
        _struct_36d = struct.Struct("<36d")
    return _struct_36d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_5f2B = None
def _get_struct_5f2B():
    global _struct_5f2B
    if _struct_5f2B is None:
        _struct_5f2B = struct.Struct("<5f2B")
    return _struct_5f2B
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_9f = None
def _get_struct_9f():
    global _struct_9f
    if _struct_9f is None:
        _struct_9f = struct.Struct("<9f")
    return _struct_9f
_struct_QfIf = None
def _get_struct_QfIf():
    global _struct_QfIf
    if _struct_QfIf is None:
        _struct_QfIf = struct.Struct("<QfIf")
    return _struct_QfIf
