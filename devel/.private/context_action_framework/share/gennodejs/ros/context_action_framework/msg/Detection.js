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

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.tracking_id = null;
      this.label = null;
      this.score = null;
      this.tf_px = null;
      this.box_px = null;
      this.obb_px = null;
      this.center_px = null;
      this.polygon_px = null;
      this.tf = null;
      this.box = null;
      this.obb = null;
      this.center = null;
      this.polygon = null;
      this.obb_3d = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('tracking_id')) {
        this.tracking_id = initObj.tracking_id
      }
      else {
        this.tracking_id = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('tf_px')) {
        this.tf_px = initObj.tf_px
      }
      else {
        this.tf_px = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('box_px')) {
        this.box_px = initObj.box_px
      }
      else {
        this.box_px = [];
      }
      if (initObj.hasOwnProperty('obb_px')) {
        this.obb_px = initObj.obb_px
      }
      else {
        this.obb_px = [];
      }
      if (initObj.hasOwnProperty('center_px')) {
        this.center_px = initObj.center_px
      }
      else {
        this.center_px = [];
      }
      if (initObj.hasOwnProperty('polygon_px')) {
        this.polygon_px = initObj.polygon_px
      }
      else {
        this.polygon_px = [];
      }
      if (initObj.hasOwnProperty('tf')) {
        this.tf = initObj.tf
      }
      else {
        this.tf = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = [];
      }
      if (initObj.hasOwnProperty('obb')) {
        this.obb = initObj.obb
      }
      else {
        this.obb = [];
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = [];
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
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
    // Serializes a message object of type Detection
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    // Serialize message field [tracking_id]
    bufferOffset = _serializer.int64(obj.tracking_id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.int8(obj.label, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [tf_px]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.tf_px, buffer, bufferOffset);
    // Serialize message field [box_px]
    bufferOffset = _arraySerializer.float32(obj.box_px, buffer, bufferOffset, null);
    // Serialize message field [obb_px]
    bufferOffset = _arraySerializer.float32(obj.obb_px, buffer, bufferOffset, null);
    // Serialize message field [center_px]
    bufferOffset = _arraySerializer.float32(obj.center_px, buffer, bufferOffset, null);
    // Serialize message field [polygon_px]
    bufferOffset = _arraySerializer.float32(obj.polygon_px, buffer, bufferOffset, null);
    // Serialize message field [tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.tf, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = _arraySerializer.float32(obj.box, buffer, bufferOffset, null);
    // Serialize message field [obb]
    bufferOffset = _arraySerializer.float32(obj.obb, buffer, bufferOffset, null);
    // Serialize message field [center]
    bufferOffset = _arraySerializer.float32(obj.center, buffer, bufferOffset, null);
    // Serialize message field [polygon]
    bufferOffset = _arraySerializer.float32(obj.polygon, buffer, bufferOffset, null);
    // Serialize message field [obb_3d]
    bufferOffset = _arraySerializer.float32(obj.obb_3d, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tracking_id]
    data.tracking_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tf_px]
    data.tf_px = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [box_px]
    data.box_px = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obb_px]
    data.obb_px = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [center_px]
    data.center_px = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [polygon_px]
    data.polygon_px = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tf]
    data.tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obb]
    data.obb = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [center]
    data.center = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [polygon]
    data.polygon = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obb_3d]
    data.obb_3d = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.box_px.length;
    length += 4 * object.obb_px.length;
    length += 4 * object.center_px.length;
    length += 4 * object.polygon_px.length;
    length += 4 * object.box.length;
    length += 4 * object.obb.length;
    length += 4 * object.center.length;
    length += 4 * object.polygon.length;
    length += 4 * object.obb_3d.length;
    return length + 169;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6460d311263f3f77c554ecaf759ce2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Detection(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.tracking_id !== undefined) {
      resolved.tracking_id = msg.tracking_id;
    }
    else {
      resolved.tracking_id = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.tf_px !== undefined) {
      resolved.tf_px = geometry_msgs.msg.Transform.Resolve(msg.tf_px)
    }
    else {
      resolved.tf_px = new geometry_msgs.msg.Transform()
    }

    if (msg.box_px !== undefined) {
      resolved.box_px = msg.box_px;
    }
    else {
      resolved.box_px = []
    }

    if (msg.obb_px !== undefined) {
      resolved.obb_px = msg.obb_px;
    }
    else {
      resolved.obb_px = []
    }

    if (msg.center_px !== undefined) {
      resolved.center_px = msg.center_px;
    }
    else {
      resolved.center_px = []
    }

    if (msg.polygon_px !== undefined) {
      resolved.polygon_px = msg.polygon_px;
    }
    else {
      resolved.polygon_px = []
    }

    if (msg.tf !== undefined) {
      resolved.tf = geometry_msgs.msg.Transform.Resolve(msg.tf)
    }
    else {
      resolved.tf = new geometry_msgs.msg.Transform()
    }

    if (msg.box !== undefined) {
      resolved.box = msg.box;
    }
    else {
      resolved.box = []
    }

    if (msg.obb !== undefined) {
      resolved.obb = msg.obb;
    }
    else {
      resolved.obb = []
    }

    if (msg.center !== undefined) {
      resolved.center = msg.center;
    }
    else {
      resolved.center = []
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = msg.polygon;
    }
    else {
      resolved.polygon = []
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

module.exports = Detection;
