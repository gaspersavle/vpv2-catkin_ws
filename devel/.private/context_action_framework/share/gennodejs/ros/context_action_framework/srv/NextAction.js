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


//-----------------------------------------------------------

class NextActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success_prev = null;
      this.uuid_prev = null;
      this.action_type_prev = null;
      this.action_details = null;
    }
    else {
      if (initObj.hasOwnProperty('success_prev')) {
        this.success_prev = initObj.success_prev
      }
      else {
        this.success_prev = false;
      }
      if (initObj.hasOwnProperty('uuid_prev')) {
        this.uuid_prev = initObj.uuid_prev
      }
      else {
        this.uuid_prev = '';
      }
      if (initObj.hasOwnProperty('action_type_prev')) {
        this.action_type_prev = initObj.action_type_prev
      }
      else {
        this.action_type_prev = 0;
      }
      if (initObj.hasOwnProperty('action_details')) {
        this.action_details = initObj.action_details
      }
      else {
        this.action_details = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NextActionRequest
    // Serialize message field [success_prev]
    bufferOffset = _serializer.bool(obj.success_prev, buffer, bufferOffset);
    // Serialize message field [uuid_prev]
    bufferOffset = _serializer.string(obj.uuid_prev, buffer, bufferOffset);
    // Serialize message field [action_type_prev]
    bufferOffset = _serializer.int8(obj.action_type_prev, buffer, bufferOffset);
    // Serialize message field [action_details]
    bufferOffset = _serializer.string(obj.action_details, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NextActionRequest
    let len;
    let data = new NextActionRequest(null);
    // Deserialize message field [success_prev]
    data.success_prev = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [uuid_prev]
    data.uuid_prev = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_type_prev]
    data.action_type_prev = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [action_details]
    data.action_details = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid_prev);
    length += _getByteLength(object.action_details);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'context_action_framework/NextActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '027db128eacd14d57b50051b0b808d8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success_prev # did the previous action succeed?
    string uuid_prev # prev action UUID
    int8 action_type_prev # prev action_type
    
    # the previous action can return details
    string action_details # json as string
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NextActionRequest(null);
    if (msg.success_prev !== undefined) {
      resolved.success_prev = msg.success_prev;
    }
    else {
      resolved.success_prev = false
    }

    if (msg.uuid_prev !== undefined) {
      resolved.uuid_prev = msg.uuid_prev;
    }
    else {
      resolved.uuid_prev = ''
    }

    if (msg.action_type_prev !== undefined) {
      resolved.action_type_prev = msg.action_type_prev;
    }
    else {
      resolved.action_type_prev = 0
    }

    if (msg.action_details !== undefined) {
      resolved.action_details = msg.action_details;
    }
    else {
      resolved.action_details = ''
    }

    return resolved;
    }
};

class NextActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.uuid = null;
      this.action_type = null;
      this.action_block = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('action_type')) {
        this.action_type = initObj.action_type
      }
      else {
        this.action_type = 0;
      }
      if (initObj.hasOwnProperty('action_block')) {
        this.action_block = initObj.action_block
      }
      else {
        this.action_block = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NextActionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [action_type]
    bufferOffset = _serializer.int8(obj.action_type, buffer, bufferOffset);
    // Serialize message field [action_block]
    bufferOffset = _serializer.string(obj.action_block, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NextActionResponse
    let len;
    let data = new NextActionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_type]
    data.action_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [action_block]
    data.action_block = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.action_block);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'context_action_framework/NextActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4a831e270f9efe6df7081ae3c435bfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success # is able to provide next action
    string uuid
    int8 action_type
    string action_block # json as string
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NextActionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.action_type !== undefined) {
      resolved.action_type = msg.action_type;
    }
    else {
      resolved.action_type = 0
    }

    if (msg.action_block !== undefined) {
      resolved.action_block = msg.action_block;
    }
    else {
      resolved.action_block = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: NextActionRequest,
  Response: NextActionResponse,
  md5sum() { return '02efeedcf42ee81f7c89e3d3ea2145e9'; },
  datatype() { return 'context_action_framework/NextAction'; }
};
