// Auto-generated. Do not edit!

// (in-package c_srv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ProcessDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.readings = null;
    }
    else {
      if (initObj.hasOwnProperty('readings')) {
        this.readings = initObj.readings
      }
      else {
        this.readings = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessDataRequest
    // Serialize message field [readings]
    bufferOffset = _arraySerializer.float32(obj.readings, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessDataRequest
    let len;
    let data = new ProcessDataRequest(null);
    // Deserialize message field [readings]
    data.readings = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.readings.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'c_srv/ProcessDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '790f38aeabddcc73abb1ebbc6fb37849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] readings
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessDataRequest(null);
    if (msg.readings !== undefined) {
      resolved.readings = msg.readings;
    }
    else {
      resolved.readings = []
    }

    return resolved;
    }
};

class ProcessDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.avr = null;
      this.max = null;
      this.min = null;
    }
    else {
      if (initObj.hasOwnProperty('avr')) {
        this.avr = initObj.avr
      }
      else {
        this.avr = 0.0;
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0.0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessDataResponse
    // Serialize message field [avr]
    bufferOffset = _serializer.float32(obj.avr, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = _serializer.float32(obj.max, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.float32(obj.min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessDataResponse
    let len;
    let data = new ProcessDataResponse(null);
    // Deserialize message field [avr]
    data.avr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'c_srv/ProcessDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea69c49f8d343f438519186d8161a15e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 avr
    float32 max
    float32 min
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessDataResponse(null);
    if (msg.avr !== undefined) {
      resolved.avr = msg.avr;
    }
    else {
      resolved.avr = 0.0
    }

    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0.0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: ProcessDataRequest,
  Response: ProcessDataResponse,
  md5sum() { return '16f2efda5f60ebda61797ff9a741ba29'; },
  datatype() { return 'c_srv/ProcessData'; }
};
