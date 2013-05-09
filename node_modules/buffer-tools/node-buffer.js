// Create a new native buffer at a specified length.
exports.fromLength = function (length) {
  return new Buffer(length);
};

// Create a new native buffer from an array of bytes.
exports.fromArray = function (array) {
  return new Buffer(array);
};

// Create a new native buffer from a unicode string.
// It will be UTF8 encoded in the buffer
exports.fromString = function (string) {
  return new Buffer(string);
};

// Convert a native buffer to a string.
exports.toString = function (buffer) {
  return buffer.toString();
};

// Concatenate an array of native buffers with optional total length
exports.concat = function (buffers, length) {
  return Buffer.concat(buffers, length);
};
