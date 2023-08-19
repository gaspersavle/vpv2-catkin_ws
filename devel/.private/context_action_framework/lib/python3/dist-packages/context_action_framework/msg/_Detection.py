# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from context_action_framework/Detection.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Detection(genpy.Message):
  _md5sum = "c6460d311263f3f77c554ecaf759ce2c"
  _type = "context_action_framework/Detection"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 id
int64 tracking_id

int8 label    # Label intEnum
float32 score # segmentation score

# in pixel coords
geometry_msgs/Transform tf_px   # transform of object center
float32[] box_px                # non-oriented bounding box
float32[] obb_px                # oriented bounding box
float32[] center_px
float32[] polygon_px

# in world coords (meters)
geometry_msgs/Transform tf
float32[] box
float32[] obb
float32[] center
float32[] polygon

# in world coords the cuboid containing the object
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
  __slots__ = ['id','tracking_id','label','score','tf_px','box_px','obb_px','center_px','polygon_px','tf','box','obb','center','polygon','obb_3d']
  _slot_types = ['int64','int64','int8','float32','geometry_msgs/Transform','float32[]','float32[]','float32[]','float32[]','geometry_msgs/Transform','float32[]','float32[]','float32[]','float32[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,tracking_id,label,score,tf_px,box_px,obb_px,center_px,polygon_px,tf,box,obb,center,polygon,obb_3d

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Detection, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.tracking_id is None:
        self.tracking_id = 0
      if self.label is None:
        self.label = 0
      if self.score is None:
        self.score = 0.
      if self.tf_px is None:
        self.tf_px = geometry_msgs.msg.Transform()
      if self.box_px is None:
        self.box_px = []
      if self.obb_px is None:
        self.obb_px = []
      if self.center_px is None:
        self.center_px = []
      if self.polygon_px is None:
        self.polygon_px = []
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      if self.box is None:
        self.box = []
      if self.obb is None:
        self.obb = []
      if self.center is None:
        self.center = []
      if self.polygon is None:
        self.polygon = []
      if self.obb_3d is None:
        self.obb_3d = []
    else:
      self.id = 0
      self.tracking_id = 0
      self.label = 0
      self.score = 0.
      self.tf_px = geometry_msgs.msg.Transform()
      self.box_px = []
      self.obb_px = []
      self.center_px = []
      self.polygon_px = []
      self.tf = geometry_msgs.msg.Transform()
      self.box = []
      self.obb = []
      self.center = []
      self.polygon = []
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
      buff.write(_get_struct_2qbf7d().pack(_x.id, _x.tracking_id, _x.label, _x.score, _x.tf_px.translation.x, _x.tf_px.translation.y, _x.tf_px.translation.z, _x.tf_px.rotation.x, _x.tf_px.rotation.y, _x.tf_px.rotation.z, _x.tf_px.rotation.w))
      length = len(self.box_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.box_px))
      length = len(self.obb_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.obb_px))
      length = len(self.center_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.center_px))
      length = len(self.polygon_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.polygon_px))
      _x = self
      buff.write(_get_struct_7d().pack(_x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w))
      length = len(self.box)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.box))
      length = len(self.obb)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.obb))
      length = len(self.center)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.center))
      length = len(self.polygon)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.polygon))
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
      if self.tf_px is None:
        self.tf_px = geometry_msgs.msg.Transform()
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 77
      (_x.id, _x.tracking_id, _x.label, _x.score, _x.tf_px.translation.x, _x.tf_px.translation.y, _x.tf_px.translation.z, _x.tf_px.rotation.x, _x.tf_px.rotation.y, _x.tf_px.rotation.z, _x.tf_px.rotation.w,) = _get_struct_2qbf7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.box_px = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb_px = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.center_px = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.polygon_px = s.unpack(str[start:end])
      _x = self
      start = end
      end += 56
      (_x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.box = s.unpack(str[start:end])
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
      self.center = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.polygon = s.unpack(str[start:end])
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
      buff.write(_get_struct_2qbf7d().pack(_x.id, _x.tracking_id, _x.label, _x.score, _x.tf_px.translation.x, _x.tf_px.translation.y, _x.tf_px.translation.z, _x.tf_px.rotation.x, _x.tf_px.rotation.y, _x.tf_px.rotation.z, _x.tf_px.rotation.w))
      length = len(self.box_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.box_px.tostring())
      length = len(self.obb_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.obb_px.tostring())
      length = len(self.center_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.center_px.tostring())
      length = len(self.polygon_px)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.polygon_px.tostring())
      _x = self
      buff.write(_get_struct_7d().pack(_x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w))
      length = len(self.box)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.box.tostring())
      length = len(self.obb)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.obb.tostring())
      length = len(self.center)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.center.tostring())
      length = len(self.polygon)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.polygon.tostring())
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
      if self.tf_px is None:
        self.tf_px = geometry_msgs.msg.Transform()
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 77
      (_x.id, _x.tracking_id, _x.label, _x.score, _x.tf_px.translation.x, _x.tf_px.translation.y, _x.tf_px.translation.z, _x.tf_px.rotation.x, _x.tf_px.rotation.y, _x.tf_px.rotation.z, _x.tf_px.rotation.w,) = _get_struct_2qbf7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.box_px = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.obb_px = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.center_px = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.polygon_px = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 56
      (_x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.box = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
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
      self.center = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.polygon = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
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
_struct_2qbf7d = None
def _get_struct_2qbf7d():
    global _struct_2qbf7d
    if _struct_2qbf7d is None:
        _struct_2qbf7d = struct.Struct("<2qbf7d")
    return _struct_2qbf7d
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d