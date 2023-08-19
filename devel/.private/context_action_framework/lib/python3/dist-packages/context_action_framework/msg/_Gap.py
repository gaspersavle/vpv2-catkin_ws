# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from context_action_framework/Gap.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Gap(genpy.Message):
  _md5sum = "04982284393a444a6964750bac3d43bb"
  _type = "context_action_framework/Gap"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 id

# transform start of levering
geometry_msgs/Transform from_tf

# transform end of levering
geometry_msgs/Transform to_tf

# depth in meters
float32 from_depth
float32 to_depth

# on which detection does the levering start
# context_action_framework/Detection from_det

# on/in which detection does the levering end
# context_action_framework/Detection to_det

# oriented bounding box of gap (meters)
float32[] obb

# 3d oriented bounding box of gap (meters)
float32[] obb_3d
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['id','from_tf','to_tf','from_depth','to_depth','obb','obb_3d']
  _slot_types = ['int8','geometry_msgs/Transform','geometry_msgs/Transform','float32','float32','float32[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,from_tf,to_tf,from_depth,to_depth,obb,obb_3d

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Gap, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.from_tf is None:
        self.from_tf = geometry_msgs.msg.Transform()
      if self.to_tf is None:
        self.to_tf = geometry_msgs.msg.Transform()
      if self.from_depth is None:
        self.from_depth = 0.
      if self.to_depth is None:
        self.to_depth = 0.
      if self.obb is None:
        self.obb = []
      if self.obb_3d is None:
        self.obb_3d = []
    else:
      self.id = 0
      self.from_tf = geometry_msgs.msg.Transform()
      self.to_tf = geometry_msgs.msg.Transform()
      self.from_depth = 0.
      self.to_depth = 0.
      self.obb = []
      self.obb_3d = []

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
      buff.write(_get_struct_b14d2f().pack(_x.id, _x.from_tf.translation.x, _x.from_tf.translation.y, _x.from_tf.translation.z, _x.from_tf.rotation.x, _x.from_tf.rotation.y, _x.from_tf.rotation.z, _x.from_tf.rotation.w, _x.to_tf.translation.x, _x.to_tf.translation.y, _x.to_tf.translation.z, _x.to_tf.rotation.x, _x.to_tf.rotation.y, _x.to_tf.rotation.z, _x.to_tf.rotation.w, _x.from_depth, _x.to_depth))
      length = len(self.obb)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.obb))
      length = len(self.obb_3d)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.obb_3d))
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
      if self.from_tf is None:
        self.from_tf = geometry_msgs.msg.Transform()
      if self.to_tf is None:
        self.to_tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 121
      (_x.id, _x.from_tf.translation.x, _x.from_tf.translation.y, _x.from_tf.translation.z, _x.from_tf.rotation.x, _x.from_tf.rotation.y, _x.from_tf.rotation.z, _x.from_tf.rotation.w, _x.to_tf.translation.x, _x.to_tf.translation.y, _x.to_tf.translation.z, _x.to_tf.rotation.x, _x.to_tf.rotation.y, _x.to_tf.rotation.z, _x.to_tf.rotation.w, _x.from_depth, _x.to_depth,) = _get_struct_b14d2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb_3d = s.unpack(str[start:end])
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
      buff.write(_get_struct_b14d2f().pack(_x.id, _x.from_tf.translation.x, _x.from_tf.translation.y, _x.from_tf.translation.z, _x.from_tf.rotation.x, _x.from_tf.rotation.y, _x.from_tf.rotation.z, _x.from_tf.rotation.w, _x.to_tf.translation.x, _x.to_tf.translation.y, _x.to_tf.translation.z, _x.to_tf.rotation.x, _x.to_tf.rotation.y, _x.to_tf.rotation.z, _x.to_tf.rotation.w, _x.from_depth, _x.to_depth))
      length = len(self.obb)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.obb.tostring())
      length = len(self.obb_3d)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.obb_3d.tostring())
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
      if self.from_tf is None:
        self.from_tf = geometry_msgs.msg.Transform()
      if self.to_tf is None:
        self.to_tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 121
      (_x.id, _x.from_tf.translation.x, _x.from_tf.translation.y, _x.from_tf.translation.z, _x.from_tf.rotation.x, _x.from_tf.rotation.y, _x.from_tf.rotation.z, _x.from_tf.rotation.w, _x.to_tf.translation.x, _x.to_tf.translation.y, _x.to_tf.translation.z, _x.to_tf.rotation.x, _x.to_tf.rotation.y, _x.to_tf.rotation.z, _x.to_tf.rotation.w, _x.from_depth, _x.to_depth,) = _get_struct_b14d2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb_3d = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b14d2f = None
def _get_struct_b14d2f():
    global _struct_b14d2f
    if _struct_b14d2f is None:
        _struct_b14d2f = struct.Struct("<b14d2f")
    return _struct_b14d2f
