const express = require('express');
const { randomUUID } = require('crypto');

const app = express();

app.use(express.json());

const products = [];

// Métodos HTTP
/*
POST => Inserir um dado
GET => Buscar um/mais dados
PUT => Alterar um dado
DELETE => Remover um dado
*/

/*
Body => Sempre que eu quiser enviar dados para o meu app
Params => /products/565135135
Query => /products/?id=9231561545615231651&value=651321
*/

app.post('/products', (req, res) => {
    /*
    Produto possui: Nome e Preço
    */
    const { name, price } = req.body;

    const product = {
        name,
        price,
        id: randomUUID()
    }

    products.push(product);

    console.log(product);

    return res.json(product);
})

app.get("/products", (req, res) => {
    return res.json(products);
});

app.get("/products/:id", (req, res) => {
    const { id } = req.params;
    const product = products.find(product => product.id === id);
    return res.json(product);
});

app.put("/products/:id", (req, res) => {
    const { id } = req.params;
    const { name, price } = req.body;

    const productIndex = products.findIndex(product => product.id === id);

    products[productIndex] = {
        ...products[productIndex],
        name,
        price
    }

    return res.json({
        message: "Produto alterado com sucesso"
    });
})

app.delete("/products/:id", (req, res) => {
    const { id } = req.params;
    
    const productIndex = products.findIndex(product => product.id === id);

    products.splice(productIndex, 1);

    return res.json({
        message: "Produto removido com sucesso"
    });
})

app.listen(4002, () => console.log('Servidor rodando na porta 4002'));












