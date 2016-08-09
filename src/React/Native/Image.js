// module React.Native.Image

exports.imageClass = require('react-native').Image;

exports.loadImage = function(img) {
  return require('image!' + img);
};

exports.loadImageUri = function(uri) {
  return { uri: uri };
};
