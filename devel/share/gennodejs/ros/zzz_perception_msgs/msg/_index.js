
"use strict";

let BoundingBox2D = require('./BoundingBox2D.js');
let BoundingBox = require('./BoundingBox.js');
let Dimension2DWithCovariance = require('./Dimension2DWithCovariance.js');
let DetectionBoxArray = require('./DetectionBoxArray.js');
let LaneDetectionArray = require('./LaneDetectionArray.js');
let Pose2DWithCovariance = require('./Pose2DWithCovariance.js');
let CooperativeMsg = require('./CooperativeMsg.js');
let DetectionBox = require('./DetectionBox.js');
let ObjectSignals = require('./ObjectSignals.js');
let LaneDetection = require('./LaneDetection.js');
let DetectionBox2D = require('./DetectionBox2D.js');
let ObjectClass = require('./ObjectClass.js');
let TrackingBox = require('./TrackingBox.js');
let DimensionWithCovariance = require('./DimensionWithCovariance.js');
let TrackingBoxArray = require('./TrackingBoxArray.js');
let DetectionBox2DArray = require('./DetectionBox2DArray.js');

module.exports = {
  BoundingBox2D: BoundingBox2D,
  BoundingBox: BoundingBox,
  Dimension2DWithCovariance: Dimension2DWithCovariance,
  DetectionBoxArray: DetectionBoxArray,
  LaneDetectionArray: LaneDetectionArray,
  Pose2DWithCovariance: Pose2DWithCovariance,
  CooperativeMsg: CooperativeMsg,
  DetectionBox: DetectionBox,
  ObjectSignals: ObjectSignals,
  LaneDetection: LaneDetection,
  DetectionBox2D: DetectionBox2D,
  ObjectClass: ObjectClass,
  TrackingBox: TrackingBox,
  DimensionWithCovariance: DimensionWithCovariance,
  TrackingBoxArray: TrackingBoxArray,
  DetectionBox2DArray: DetectionBox2DArray,
};
