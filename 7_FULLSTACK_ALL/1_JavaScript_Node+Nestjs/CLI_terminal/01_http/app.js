var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Oi Mundo!');
}).listen(8080);

// acesse:
// http://localhost:8080/
// E veja o 'Oi Mundo!'
// OBS: Olá não reconhecerá o acento
