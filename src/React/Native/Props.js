// module React.Native.Props

exports.unsafeMkProps = function(name) {
  return function(props) {
    var result = {};
    result[name] = props;
    return result;
  };
};

exports.unsafeFromPropsArray = function(props) {
  var result = {};

  for (var i = 0, len = props.length; i < len; i++) {
    var prop = props[i];

    for (var key in prop) {
      if (prop.hasOwnProperty(key)) {
        result[key] = prop[key];
      }
    }
  }

  return result;
};
