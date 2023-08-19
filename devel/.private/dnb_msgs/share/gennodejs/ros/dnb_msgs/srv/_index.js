
"use strict";

let GetProgramsList = require('./GetProgramsList.js')
let ConfigureDatastoreExternalSource = require('./ConfigureDatastoreExternalSource.js')
let RunProgramWithArguments = require('./RunProgramWithArguments.js')
let SetInt32 = require('./SetInt32.js')
let SetString = require('./SetString.js')

module.exports = {
  GetProgramsList: GetProgramsList,
  ConfigureDatastoreExternalSource: ConfigureDatastoreExternalSource,
  RunProgramWithArguments: RunProgramWithArguments,
  SetInt32: SetInt32,
  SetString: SetString,
};
