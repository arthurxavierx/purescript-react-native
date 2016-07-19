'use strict';

exports.unsafeCreateStylesheet = require('react-native').StyleSheet.create;

exports.unsafeReadProps = function(obj) {
  return function(key) {
    return obj[key];
  };
};
