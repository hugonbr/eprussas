const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.send('<h4 style="text-align:center">Hello, World!</h4><br><div style="text-align:center"><a href="http://localhost:3000/about">About</a></div>');
})

router.get('/about', (req, res) => {
    res.send('<h4 style="text-align:center">About this system...</h4><br><div style="text-align:center"><a href="http://localhost:3000/">Home</a></div>');
})

module.exports = router;

