// module React.Native.Navigator

exports.navigatorClass = require('react-native').Navigator;
exports.navigationBarClass = require('react-native').Navigator.NavigationBar;

exports.immediatelyResetRouteStack = function(navigator) {
  return function(routes) {
    return function() {
      navigator.immediatelyResetRouteStack(routes);
      return {};
    };
  };
};

exports.jumpTo = function(navigator) {
  return function(route) {
    return function() {
      navigator.jumpTo(route);
      return {};
    };
  };
};

exports.jumpForward = function(navigator) {
  return function() {
    navigator.jumpForward();
    return {};
  };
};

exports.jumpBack = function(navigator) {
  return function() {
    navigator.jumpBack();
    return {};
  };
};

exports.push = function(navigator) {
  return function(route) {
    return function() {
      navigator.push(route);
      return {};
    };
  };
};

exports.pop = function(navigator) {
  return function() {
    navigator.pop();
    return {};
  };
};

exports._replaceAtIndex = function(navigator) {
  return function(route) {
    return function(index) {
      return function(cb) {
        return function() {
          navigator.replaceAtIndex(route, index, cb);
          return {};
        };
      };
    };
  };
};
