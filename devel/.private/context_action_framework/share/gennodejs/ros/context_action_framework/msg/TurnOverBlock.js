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

class TurnOverBlock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module = null;
      this.tf = null;
      this.obb_3d = null;
      this.robot = null;
      this.end_effector = null;
    }
    else {
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
      if (initObj.hasOwnProperty('obb_3d')) {
        this.obb_3d = initObj.obb_3d
      }
      else {
        this.obb_3d = [];
      }
      if (initObj.hasOwnProperty('robot')) {
        this.robot = initObj.robot
      }
      else {
        this.robot = 0;
      }
      if (initObj.hasOwnProperty('end_effector')) {
        this.end_effector = initObj.end_effector
      }
      else {
        this.end_effector = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnOverBlock
    // Serialize message field [module]
    bufferOffset = _serializer.int8(obj.module, buffer, bufferOffset);
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.tf, buffer, bufferOffset);
    // Serialize message field [obb_3d]
    bufferOffset = _arraySerializer.float32(obj.obb_3d, buffer, bufferOffset, null);
    // Serialize message field [robot]
    bufferOffset = _serializer.int8(obj.robot, buffer, bufferOffset);
    // Serialize message field [end_effector]
    bufferOffset = _serializer.int8(obj.end_effector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnOverBlock
    let len;
    let data = new TurnOverBlock(null);
    // Deserialize message field [module]
    data.module = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [obb_3d]
    data.obb_3d = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [robot]
    data.robot = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [end_effector]
    data.end_effector = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.obb_3d.length;
    return length + 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/TurnOverBlock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bd3d6287c976434df33935bcd8b11ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Module enum
    int8 module
    
    # transform of object (center)
    geometry_msgs/Transform tf
    
    float32[] obb_3d
    
    # Robot enum
    int8 robot
    
    # EndEffector enum
    int8 end_effector
    
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
    const resolved = new TurnOverBlock(null);
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

    if (msg.obb_3d !== undefined) {
      resolved.obb_3d = msg.obb_3d;
    }
    else {
      resolved.obb_3d = []
    }

    if (msg.robot !== undefined) {
      resolved.robot = msg.robot;
    }
    else {
      resolved.robot = 0
    }

    if (msg.end_effector !== undefined) {
      resolved.end_effector = msg.end_effector;
    }
    else {
      resolved.end_effector = 0
    }

    return resolved;
    }
};

module.exports = TurnOverBlock;
