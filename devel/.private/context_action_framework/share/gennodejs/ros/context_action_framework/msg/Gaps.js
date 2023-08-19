// Auto-generated. Do not edit!

// (in-package context_action_framework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Gap = require('./Gap.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Gaps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gaps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
    // Serializes a message object of type Gaps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gaps]
    // Serialize the length for message field [gaps]
    bufferOffset = _serializer.uint32(obj.gaps.length, buffer, bufferOffset);
    obj.gaps.forEach((val) => {
      bufferOffset = Gap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gaps
    let len;
    let data = new Gaps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    object.gaps.forEach((val) => {
      length += Gap.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/Gaps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ec64f888e2c36be2e073dca5408e8c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    const resolved = new Gaps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

module.exports = Gaps;
