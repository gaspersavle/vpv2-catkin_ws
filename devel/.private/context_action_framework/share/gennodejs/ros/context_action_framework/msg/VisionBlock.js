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

class VisionBlock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera = null;
      this.module = null;
      this.tf = null;
      this.gap_detection = null;
    }
    else {
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = 0;
      }
      if (initObj.hasOwnProperty('module')) {
        this.module = initObj.module
      }
      else {
        this.module = 0;
      }
      if (initObj.hasOwnProperty('tf')) {
        this.tf = initObj.tf
      }
      else {
        this.tf = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('gap_detection')) {
        this.gap_detection = initObj.gap_detection
      }
      else {
        this.gap_detection = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionBlock
    // Serialize message field [camera]
    bufferOffset = _serializer.int8(obj.camera, buffer, bufferOffset);
    // Serialize message field [module]
    bufferOffset = _serializer.int8(obj.module, buffer, bufferOffset);
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.tf, buffer, bufferOffset);
    // Serialize message field [gap_detection]
    bufferOffset = _serializer.bool(obj.gap_detection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionBlock
    let len;
    let data = new VisionBlock(null);
    // Deserialize message field [camera]
    data.camera = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [module]
    data.module = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [gap_detection]
    data.gap_detection = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/VisionBlock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f331af18bd7868ca6460c04549f4c84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Camera enum
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionBlock(null);
    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = 0
    }

    if (msg.module !== undefined) {
      resolved.module = msg.module;
    }
    else {
      resolved.module = 0
    }

    if (msg.tf !== undefined) {
      resolved.tf = geometry_msgs.msg.Transform.Resolve(msg.tf)
    }
    else {
      resolved.tf = new geometry_msgs.msg.Transform()
    }

    if (msg.gap_detection !== undefined) {
      resolved.gap_detection = msg.gap_detection;
    }
    else {
      resolved.gap_detection = false
    }

    return resolved;
    }
};

module.exports = VisionBlock;
