var http = require('http');
var dt = require('./modules/data');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("The date and time are currently: " + dt.data_hora());
  res.end();
}).listen(8080);