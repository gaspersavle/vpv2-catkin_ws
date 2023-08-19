// Auto-generated. Do not edit!

// (in-package context_action_framework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Gap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.from_tf = null;
      this.to_tf = null;
      this.from_depth = null;
      this.to_depth = null;
      this.obb = null;
      this.obb_3d = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('from_tf')) {
        this.from_tf = initObj.from_tf
      }
      else {
        this.from_tf = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('to_tf')) {
        this.to_tf = initObj.to_tf
      }
      else {
        this.to_tf = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('from_depth')) {
        this.from_depth = initObj.from_depth
      }
      else {
        this.from_depth = 0.0;
      }
      if (initObj.hasOwnProperty('to_depth')) {
        this.to_depth = initObj.to_depth
      }
      else {
        this.to_depth = 0.0;
      }
      if (initObj.hasOwnProperty('obb')) {
        this.obb = initObj.obb
      }
      else {
        this.obb = [];
      }
      if (initObj.hasOwnProperty('obb_3d')) {
        this.obb_3d = initObj.obb_3d
      }
      else {
        this.obb_3d = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gap
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [from_tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.from_tf, buffer, bufferOffset);
    // Serialize message field [to_tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.to_tf, buffer, bufferOffset);
    // Serialize message field [from_depth]
    bufferOffset = _serializer.float32(obj.from_depth, buffer, bufferOffset);
    // Serialize message field [to_depth]
    bufferOffset = _serializer.float32(obj.to_depth, buffer, bufferOffset);
    // Serialize message field [obb]
    bufferOffset = _arraySerializer.float32(obj.obb, buffer, bufferOffset, null);
    // Serialize message field [obb_3d]
    bufferOffset = _arraySerializer.float32(obj.obb_3d, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gap
    let len;
    let data = new Gap(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [from_tf]
    data.from_tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [to_tf]
    data.to_tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [from_depth]
    data.from_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [to_depth]
    data.to_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obb]
    data.obb = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obb_3d]
    data.obb_3d = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.obb.length;
    length += 4 * object.obb_3d.length;
    return length + 129;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/Gap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04982284393a444a6964750bac3d43bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gap(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.from_tf !== undefined) {
      resolved.from_tf = geometry_msgs.msg.Transform.Resolve(msg.from_tf)
    }
    else {
      resolved.from_tf = new geometry_msgs.msg.Transform()
    }

    if (msg.to_tf !== undefined) {
      resolved.to_tf = geometry_msgs.msg.Transform.Resolve(msg.to_tf)
    }
    else {
      resolved.to_tf = new geometry_msgs.msg.Transform()
    }

    if (msg.from_depth !== undefined) {
      resolved.from_depth = msg.from_depth;
    }
    else {
      resolved.from_depth = 0.0
    }

    if (msg.to_depth !== undefined) {
      resolved.to_depth = msg.to_depth;
    }
    else {
      resolved.to_depth = 0.0
    }

    if (msg.obb !== undefined) {
      resolved.obb = msg.obb;
    }
    else {
      resolved.obb = []
    }

    if (msg.obb_3d !== undefined) {
      resolved.obb_3d = msg.obb_3d;
    }
    else {
      resolved.obb_3d = []
    }

    return resolved;
    }
};

module.exports = Gap;
