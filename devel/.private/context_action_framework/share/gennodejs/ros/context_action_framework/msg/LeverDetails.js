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

class LeverDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.todo = null;
    }
    else {
      if (initObj.hasOwnProperty('todo')) {
        this.todo = initObj.todo
      }
      else {
        this.todo = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeverDetails
    // Serialize message field [todo]
    bufferOffset = _serializer.float32(obj.todo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeverDetails
    let len;
    let data = new LeverDetails(null);
    // Deserialize message field [todo]
    data.todo = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'context_action_framework/LeverDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7247be45b9ecdbee81d0c07f3e7f1ab8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 todo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeverDetails(null);
    if (msg.todo !== undefined) {
      resolved.todo = msg.todo;
    }
    else {
      resolved.todo = 0.0
    }

    return resolved;
    }
};

module.exports = LeverDetails;
