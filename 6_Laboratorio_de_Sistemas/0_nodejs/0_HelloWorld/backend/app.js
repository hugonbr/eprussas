const express = require('express');
const app = express();
const port = 3000;

const r = require('./routers/routers.js');
app.use('/', r);

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
})

