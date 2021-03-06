// Generated by CoffeeScript 1.6.2
var dg, tn, toWords, tw;

toWords = function(s) {
  var i, n, sk, str, x, y;

  s = s.toString();
  s = s.replace(/[\, ]/g, "");
  if (s !== parseFloat(s)) {
    return "not a number";
  }
  x = s.indexOf(".");
  if (x === -1) {
    x = s.length;
  }
  if (x > 15) {
    return "too big";
  }
  n = s.split("");
  str = "";
  sk = 0;
  i = 0;
  while (i < x) {
    if ((x - i) % 3 === 2) {
      if (n[i] === "1") {
        str += tn[Number(n[i + 1])] + " ";
        i++;
        sk = 1;
      } else if (n[i] !== 0) {
        str += tw[n[i] - 2] + " ";
        sk = 1;
      }
    } else if (n[i] !== 0) {
      str += dg[n[i]] + " ";
      if ((x - i) % 3 === 0) {
        str += "hundred ";
      }
      sk = 1;
    }
    if ((x - i) % 3 === 1) {
      if (sk) {
        str += th[(x - i - 1) / 3] + " ";
      }
      sk = 0;
    }
    i++;
  }
  if (x !== s.length) {
    y = s.length;
    str += "point ";
    i = x + 1;
    while (i < y) {
      str += dg[n[i]] + " ";
      i++;
    }
  }
  return str.replace(/\s+/g, " ");
};

dg = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];

tn = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];

tw = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"];
