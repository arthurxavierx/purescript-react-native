// module React.Native

exports.platformName = require('react-native').Platform.OS;

exports.registerComponent = function(name) {
  return function(component) {
    return function() {
      require('react-native').AppRegistry.registerComponent(name, function() {
        return component;
      });
    };
  };
};
