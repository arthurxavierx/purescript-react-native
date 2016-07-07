// module React.Native.Components

exports.viewClass = require('react-native').View;

function propsFromArray(props) {
  var result = {};
  for (var i = 0; i < props.length; i++) {
    var prop = props[i];
    for (var key in prop) {
      if (prop.hasOwnProperty(key)) {
        result[key] = prop[key];
      }
    }
  }
  return result;
}

exports.createElement = function(class_) {
  return function(props) {
    return function(children) {
      return require('react').createElement(class_, props.length > 0 ? propsFromArray(props) : null, children);
    };
  };
};
