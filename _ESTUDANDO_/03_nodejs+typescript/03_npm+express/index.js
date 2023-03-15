const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const message = { server: 'Hello, World!' };
  res.json(message);
});

app.listen(3000, () => {
  console.log('Server is listening on port 3000');
});
