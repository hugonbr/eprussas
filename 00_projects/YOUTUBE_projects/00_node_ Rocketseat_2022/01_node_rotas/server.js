const http = require("http");

http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });

    if (req.url === '' || req.url === '/') {
        res.end(JSON.stringify({
            message: "Rota /",
        }));
    }

    else if (req.url === '/produto') {
        res.end(JSON.stringify({
            message: "Rota de produto",
        }));
    }

    else if (req.url === '/usuario') {
        res.end(JSON.stringify({
            message: "Rota de usuario",
        }));
    }

    else {
        // this res generate a error: 
        res.end(JSON.stringify({
            message: "Rota 404",
        }));
    }

}).listen(4001, () => console.log("Server running on port: 4001"));

