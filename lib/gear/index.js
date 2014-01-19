/*
 * camin.io
 *
 * @author quaqua <quaqua@tastenwerk.com>
 * @date 01/2014
 * @copyright TASTENWERK http://tastenwerk.com
 * @license MIT
 *
 */

 var join       = require('path').join
   , dirname    = require('path').dirname
   , basename   = require('path').basename;

var util        = require('../util')

/**
 * A gear is a plugin for camin.io
 *
 * It can
 * * add middleware and policies
 * * extend the apps directory
 * * extend the public directory
 */
module.exports = function Gear( options, cb ){

  options = options || {};
  
  // find out name of calling file
  var caller = util.getCaller();
  this.absolutePath = options.absolutePath || dirname( caller.filename );
  this.name = options.name || basename( this.absolutePath );

  this.api = options.api;
  
  this.paths = options.paths || {};
  this.paths.api = this.paths.api || join( this.absolutePath, 'api' );

}