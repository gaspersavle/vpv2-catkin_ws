// Auto-generated. Do not edit!

// (in-package context_action_framework.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let VisionDetails = require('../msg/VisionDetails.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class VisionDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera = null;
      this.gap_detection = null;
    }
    else {
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = 0;
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
    // Serializes a message object of type VisionDetectionRequest
    // Serialize message field [camera]
    bufferOffset = _serializer.int8(obj.camera, buffer, bufferOffset);
    // Serialize message field [gap_detection]
    bufferOffset = _serializer.bool(obj.gap_detection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionDetectionRequest
    let len;
    let data = new VisionDetectionRequest(null);
    // Deserialize message field [camera]
    data.camera = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gap_detection]
    data.gap_detection = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'context_action_framework/VisionDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca10e402e67ec0f49583e8c0876e8f61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 camera # from types Camera
    bool gap_detection
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionDetectionRequest(null);
    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = 0
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

class VisionDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.vision_details = null;
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('vision_details')) {
        this.vision_details = initObj.vision_details
      }
      else {
        this.vision_details = new VisionDetails();
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionDetectionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [vision_details]
    bufferOffset = VisionDetails.serialize(obj.vision_details, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionDetectionResponse
    let len;
    let data = new VisionDetectionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vision_details]
    data.vision_details = VisionDetails.deserialize(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += VisionDetails.getMessageSize(object.vision_details);
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'context_action_framework/VisionDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50e0aca8c3242d4d762f814436daab91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    context_action_framework/VisionDetails vision_details
    sensor_msgs/Image image
    
    ================================================================================
    MSG: context_action_framework/VisionDetails
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
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionDetectionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.vision_details !== undefined) {
      resolved.vision_details = VisionDetails.Resolve(msg.vision_details)
    }
    else {
      resolved.vision_details = new VisionDetails()
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = {
  Request: VisionDetectionRequest,
  Response: VisionDetectionResponse,
  md5sum() { return '11960e268b9d7417534a4507aec91a66'; },
  datatype() { return 'context_action_framework/VisionDetection'; }
};
