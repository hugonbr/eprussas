var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Oi Mundo!');
}).listen(5000);

// acesse:
// http://localhost:5000/
// E veja o 'Oi Mundo!'
// OBS: Olá não reconhecerá o acento
