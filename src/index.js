/* globals alert */
const wechat = {
  show() {
      alert("Module wechat is created sucessfully ")
  }
};


const meta = {
   wechat: [{
    lowerCamelCaseName: 'show',
    args: []
  }]
};

function init(weex) {
  weex.registerModule('wechat', wechat, meta);
}

export default {
  init:init
}