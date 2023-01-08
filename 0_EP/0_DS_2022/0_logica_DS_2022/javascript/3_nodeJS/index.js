const http = require("http");

http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({
        app: "olamundo",
        message: 'Hello World!'
    }));
}).listen(4001, () => console.log("Server running on port: 4001"));

