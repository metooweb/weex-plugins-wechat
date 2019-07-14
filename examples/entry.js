import Vue from 'vue';

import weex from 'weex-vue-render';

import Wechat from '../src/index';

weex.init(Vue);

weex.install(Wechat)

const App = require('./index.vue');
App.el = '#root';
new Vue(App);
