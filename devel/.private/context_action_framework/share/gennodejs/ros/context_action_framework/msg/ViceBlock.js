// Auto-generated. Do not edit!

// (in-package context_action_framework.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ViceBlock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module = null;
      this.clamp = null;
      this.turn_over = null;
    }
    else {
      if (initObj.hasOwnProperty('module')) {
        this.module = initObj.module
      }
      else {
        this.module = 0;
      }
      if (initObj.hasOwnProperty('clamp')) {
        this.clamp = initObj.clamp
      }
      else {
        this.clamp = false;
      }
      if (initObj.hasOwnProperty('turn_over')) {
        this.turn_over = initObj.turn_over
      }
      else {
        this.turn_over = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ViceBlock
    // Serialize message field [module]
    bufferOffset = _serializer.int8(obj.module, buffer, bufferOffset);
    // Serialize message field [clamp]
    bufferOffset = _serializer.bool(obj.clamp, buffer, bufferOffset);
    // Serialize message field [turn_over]
    bufferOffset = _serializer.bool(obj.turn_over, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ViceBlock
    let len;
    let data = new ViceBlock(null);
    // Deserialize message field [module]
    data.module = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [clamp]
    data.clamp = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_over]
    data.turn_over = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/ViceBlock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bc5ee0d433fee744520e4f066921b9b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Module enum
    int8 module
    
    bool clamp
    
    bool turn_over
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ViceBlock(null);
    if (msg.module !== undefined) {
      resolved.module = msg.module;
    }
    else {
      resolved.module = 0
    }

    if (msg.clamp !== undefined) {
      resolved.clamp = msg.clamp;
    }
    else {
      resolved.clamp = false
    }

    if (msg.turn_over !== undefined) {
      resolved.turn_over = msg.turn_over;
    }
    else {
      resolved.turn_over = false
    }

    return resolved;
    }
};

module.exports = ViceBlock;
