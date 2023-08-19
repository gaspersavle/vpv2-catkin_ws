// Auto-generated. Do not edit!

// (in-package context_action_framework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Detection = require('./Detection.js');
let Gap = require('./Gap.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VisionDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.camera_acquisition_stamp = null;
      this.gap_detection = null;
      this.detections = null;
      this.gaps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('camera_acquisition_stamp')) {
        this.camera_acquisition_stamp = initObj.camera_acquisition_stamp
      }
      else {
        this.camera_acquisition_stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('gap_detection')) {
        this.gap_detection = initObj.gap_detection
      }
      else {
        this.gap_detection = false;
      }
      if (initObj.hasOwnProperty('detections')) {
        this.detections = initObj.detections
      }
      else {
        this.detections = [];
      }
      if (initObj.hasOwnProperty('gaps')) {
        this.gaps = initObj.gaps
      }
      else {
        this.gaps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionDetails
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [camera_acquisition_stamp]
    bufferOffset = _serializer.time(obj.camera_acquisition_stamp, buffer, bufferOffset);
    // Serialize message field [gap_detection]
    bufferOffset = _serializer.bool(obj.gap_detection, buffer, bufferOffset);
    // Serialize message field [detections]
    // Serialize the length for message field [detections]
    bufferOffset = _serializer.uint32(obj.detections.length, buffer, bufferOffset);
    obj.detections.forEach((val) => {
      bufferOffset = Detection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gaps]
    // Serialize the length for message field [gaps]
    bufferOffset = _serializer.uint32(obj.gaps.length, buffer, bufferOffset);
    obj.gaps.forEach((val) => {
      bufferOffset = Gap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionDetails
    let len;
    let data = new VisionDetails(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_acquisition_stamp]
    data.camera_acquisition_stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [gap_detection]
    data.gap_detection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [detections]
    // Deserialize array length for message field [detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detections[i] = Detection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gaps]
    // Deserialize array length for message field [gaps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gaps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gaps[i] = Gap.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detections.forEach((val) => {
      length += Detection.getMessageSize(val);
    });
    object.gaps.forEach((val) => {
      length += Gap.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/VisionDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3eb2653d2dafc55117673781a5c8184';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time camera_acquisition_stamp
    bool gap_detection
    context_action_framework/Detection[] detections
    context_action_framework/Gap[] gaps
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: context_action_framework/Detection
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
    
    ================================================================================
    MSG: context_action_framework/Gap
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionDetails(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.camera_acquisition_stamp !== undefined) {
      resolved.camera_acquisition_stamp = msg.camera_acquisition_stamp;
    }
    else {
      resolved.camera_acquisition_stamp = {secs: 0, nsecs: 0}
    }

    if (msg.gap_detection !== undefined) {
      resolved.gap_detection = msg.gap_detection;
    }
    else {
      resolved.gap_detection = false
    }

    if (msg.detections !== undefined) {
      resolved.detections = new Array(msg.detections.length);
      for (let i = 0; i < resolved.detections.length; ++i) {
        resolved.detections[i] = Detection.Resolve(msg.detections[i]);
      }
    }
    else {
      resolved.detections = []
    }

    if (msg.gaps !== undefined) {
      resolved.gaps = new Array(msg.gaps.length);
      for (let i = 0; i < resolved.gaps.length; ++i) {
        resolved.gaps[i] = Gap.Resolve(msg.gaps[i]);
      }
    }
    else {
      resolved.gaps = []
    }

    return resolved;
    }
};

module.exports = VisionDetails;
