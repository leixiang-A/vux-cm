'use strict';

/** @type Egg.EggPlugin */
module.exports = {
  // had enabled by egg
  // static: {
  //   enable: true,
  // }
  mysql:{
	  enable:true,
	  package:"egg-mysql"
  },
  //跨域处理
    cors:{
        enable: true,
        package: 'egg-cors',
      }
};
