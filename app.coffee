var express = require('express');
var app     = express.createServer();
var port    = process.env.PORT || 3000;

app.get('/', function(request, response) {
  var proto = request.header('X-Forwarded-Proto');
  response.send('Hello Engine Yard Cloud!\r\n' + proto + '\r\n');
  console.log(request.header('X-Forwarded-Proto'));
});

app.listen(port);
