// Create a new native buffer at a specified length.
exports.fromLength = function (length) {
  return new Uint8Array(length);
};

// Create a new native buffer from an array of bytes.
exports.fromArray = function (array) {
  return new Uint8Array(array);
};

// Create a new native buffer from a unicode string.
// It will be UTF8 encoded in the buffer
exports.fromString = function (string) {
  // UTF8 encode the string using a neat browser trick.
  // http://ecmanaut.blogspot.com/2006/07/encoding-decoding-utf8-in-javascript.html
  string = unescape(encodeURIComponent(string));
  var length = string.length;
  var buffer = new Uint8Array(length);
  for (var i = 0; i < length; i++) {
    buffer[i] = string.charCodeAt(i);
   }
  return buffer;
};

// Convert a native buffer to a string.
exports.toString = function (buffer) {
  var string = "";
  for (var i = 0, l = buffer.length; i < l; i++) {
    string += String.fromCharCode(buffer[i]);
  }
  return decodeURIComponent(escape(string));
};

// Concatenate an array of native buffers with optional total length
exports.concat = function (buffers, length) {
  if (length === undefined) {
    length = 0;
    for (var i = 0, l = buffers.length; i < l; i++) {
      length += buffers[i].length;
    }
  }
  var buffer = new Uint8Array(length);
  var offset = 0;
  for (i = 0, l = buffers.length; i < l; i++) {
    var part = buffers[i];
    for (var j = 0, l2 = part.length; j < l2; j++) {
      buffer[offset++] = part[j];
    }
  }
  return buffer;
};

