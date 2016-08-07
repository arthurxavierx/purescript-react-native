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

exports.replaceAtIndexWithCallback = function(navigator) {
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

exports.replace = function(navigator) {
  return function(route) {
    return function() {
      navigator.replace(route);
      return {};
    };
  };
};

exports.replacePrevious = function(navigator) {
  return function(route) {
    return function() {
      navigator.replacePrevious(route);
      return {};
    };
  };
};

exports.popToTop = function(navigator) {
  return function() {
    navigator.popToTop();
    return {};
  };
};

exports.popToRoute = function(navigator) {
  return function(route) {
    return function() {
      navigator.popToRoute(route);
      return {};
    };
  };
};

exports.replacePreviousAndPop = function(navigator) {
  return function(route) {
    return function() {
      navigator.replacePreviousAndPop(route);
      return {};
    };
  };
};

exports.resetTo = function(navigator) {
  return function(route) {
    return function() {
      navigator.resetTo(route);
      return {};
    };
  };
};

exports.getCurrentRoutes = function(navigator) {
  return function() {
    return navigator.getCurrentRoutes();
  };
};
