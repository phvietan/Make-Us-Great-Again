const express = require('express');
var bodyParser = require("body-parser");

const app = express();

app.use(express.static('public'));

//Here we are configuring express to use body-parser as middle-ware.
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.get('/a.google.com', function (req, res) {
  res.send('console.log("a");');
  console.log('injected successfully');
});

app.get('/test', function (req, res) {
  res.sendFile('/root/Documents/Make-Us-Great-Again/AnPham/Notes/Web/simple-web/test.html');
});

app.get('/*', function (req, res) {
    res.send('Hello World');
    console.log('Receive GET request at:', req.url);
    console.log('---------------');
});

app.post('/*', function (req, res) {
    res.send('Hello World');
    console.log('Receive POST request at:', req.url);
    console.log('Data received:');
    console.log(JSON.stringify(req.body));
    console.log('---------------');
});

const server = app.listen(80, function () {
   const host = server.address().address;
   const port = server.address().port;

   console.log("App listening at http://%s:%s", host, port);
})
