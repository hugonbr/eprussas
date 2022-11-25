const express = require('express');

const app = express();

// Métodos HTTP
/*
GET, POST, PUT, DELETE
*/

app.get('/', (req, res) => {

    res.send('hello, welcome to my simple server with \'express\' :)')
})

app.get('/primeira-rota', (req, res) => {

    return res.json({
        message: "Acessou a primeira rota :)",
    })
})

app.listen(4002, () => console.log('Servidor rodando na porta 4002'));













