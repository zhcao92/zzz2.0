# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from zzz_perception_msgs/BoundingBox2D.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import zzz_perception_msgs.msg

class BoundingBox2D(genpy.Message):
  _md5sum = "ee985124803fe8633995d77cdc7fb361"
  _type = "zzz_perception_msgs/BoundingBox2D"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# A 2D bounding box that can be rotated about its center. All dimensions are in pixels, but represented using floating-point

# The position and orientation of the rigid body center
Pose2DWithCovariance pose

# The size (in meters) of the bounding box surrounding the object relative to the pose of its center.
Dimension2DWithCovariance dimension

================================================================================
MSG: zzz_perception_msgs/Pose2DWithCovariance

float64 x # or u in u-v plane
float64 y # or v in u-v plane
float64 theta

# Row-major representation of the 3x3 covariance matrix
# In order, the parameters are: (x, y, theta)
float64[9] covariance

================================================================================
MSG: zzz_perception_msgs/Dimension2DWithCovariance
# Describing the size object in 2D space (in pixels) with uncertainty

float64 length_x # width
float64 length_y # length

# Row-major representation of the 2x2 covariance matrix
# In order, the parameters are: (length_x, length_y)
float64[4] covariance
"""
  __slots__ = ['pose','dimension']
  _slot_types = ['zzz_perception_msgs/Pose2DWithCovariance','zzz_perception_msgs/Dimension2DWithCovariance']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose,dimension

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BoundingBox2D, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pose is None:
        self.pose = zzz_perception_msgs.msg.Pose2DWithCovariance()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.Dimension2DWithCovariance()
    else:
      self.pose = zzz_perception_msgs.msg.Pose2DWithCovariance()
      self.dimension = zzz_perception_msgs.msg.Dimension2DWithCovariance()

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
      buff.write(_get_struct_3d().pack(_x.pose.x, _x.pose.y, _x.pose.theta))
      buff.write(_get_struct_9d().pack(*self.pose.covariance))
      _x = self
      buff.write(_get_struct_2d().pack(_x.dimension.length_x, _x.dimension.length_y))
      buff.write(_get_struct_4d().pack(*self.dimension.covariance))
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
      if self.pose is None:
        self.pose = zzz_perception_msgs.msg.Pose2DWithCovariance()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.Dimension2DWithCovariance()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.pose.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 16
      (_x.dimension.length_x, _x.dimension.length_y,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 32
      self.dimension.covariance = _get_struct_4d().unpack(str[start:end])
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
      buff.write(_get_struct_3d().pack(_x.pose.x, _x.pose.y, _x.pose.theta))
      buff.write(self.pose.covariance.tostring())
      _x = self
      buff.write(_get_struct_2d().pack(_x.dimension.length_x, _x.dimension.length_y))
      buff.write(self.dimension.covariance.tostring())
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
      if self.pose is None:
        self.pose = zzz_perception_msgs.msg.Pose2DWithCovariance()
      if self.dimension is None:
        self.dimension = zzz_perception_msgs.msg.Dimension2DWithCovariance()
      end = 0
      _x = self
      start = end
      end += 24
      (_x.pose.x, _x.pose.y, _x.pose.theta,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.pose.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 16
      (_x.dimension.length_x, _x.dimension.length_y,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 32
      self.dimension.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
