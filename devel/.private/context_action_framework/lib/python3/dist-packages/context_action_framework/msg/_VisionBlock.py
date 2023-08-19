# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from context_action_framework/VisionBlock.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class VisionBlock(genpy.Message):
  _md5sum = "0f331af18bd7868ca6460c04549f4c84"
  _type = "context_action_framework/VisionBlock"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Camera enum
int8 camera

# Module enum
int8 module

# camera transform
geometry_msgs/Transform tf

# request gap detection True/False
bool gap_detection
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
  __slots__ = ['camera','module','tf','gap_detection']
  _slot_types = ['int8','int8','geometry_msgs/Transform','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       camera,module,tf,gap_detection

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VisionBlock, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.camera is None:
        self.camera = 0
      if self.module is None:
        self.module = 0
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      if self.gap_detection is None:
        self.gap_detection = False
    else:
      self.camera = 0
      self.module = 0
      self.tf = geometry_msgs.msg.Transform()
      self.gap_detection = False

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
      buff.write(_get_struct_2b7dB().pack(_x.camera, _x.module, _x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w, _x.gap_detection))
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
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 59
      (_x.camera, _x.module, _x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w, _x.gap_detection,) = _get_struct_2b7dB().unpack(str[start:end])
      self.gap_detection = bool(self.gap_detection)
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
      buff.write(_get_struct_2b7dB().pack(_x.camera, _x.module, _x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w, _x.gap_detection))
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
      if self.tf is None:
        self.tf = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 59
      (_x.camera, _x.module, _x.tf.translation.x, _x.tf.translation.y, _x.tf.translation.z, _x.tf.rotation.x, _x.tf.rotation.y, _x.tf.rotation.z, _x.tf.rotation.w, _x.gap_detection,) = _get_struct_2b7dB().unpack(str[start:end])
      self.gap_detection = bool(self.gap_detection)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2b7dB = None
def _get_struct_2b7dB():
    global _struct_2b7dB
    if _struct_2b7dB is None:
        _struct_2b7dB = struct.Struct("<2b7dB")
    return _struct_2b7dB
