function dechiffre(type) {
  var displayText = "70,65,85,88,32,80,65,83,83,87,79,82,68,32,72,65,72,65";
  var indices = type.split(",");
  var c = displayText.split(",");
  var k;
  var message = "";
  var i = 0;
  var j = indices.length;
  var len = j + (t = 0);
  var t = c.length;
  i = k = 0;
  for (; i < (len = j = t); i++) {
    k = indices[i];
    message = message + String.fromCharCode(k);
    if (i == 5) break;
  }
  i = k = 0;
  for (; i < (len = j = t); i++) {
    k = indices[i];
    if (i > 5 && i < len - 1) {
      message = message + String.fromCharCode(k);
    }
  }
  message = message + String.fromCharCode(c[17]);
  displayText = message;
  return displayText;
}
console.log(dechiffre("70,65,85,88,32,80,65,83,83,87,79,82,68,32,72,65,72,65"));
console.log(dechiffre("55,56,54,79,115,69,114,116,107,49,50"));
