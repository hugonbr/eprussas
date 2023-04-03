const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

//my mod
var mysql = require('mysql');
let todotable;
//

const app = express();

// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

//my mod
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "todolist"
});

con.connect((err) => {
  if (err) throw err;
});

// con.end((err) => {
//   if (err) throw err;
//   console.log('Closed MySQL connection');
// });

//

// Routes
app.get('/api', (req, res) => {
  con.query("SELECT * FROM todo", (err, result, fields) => {
    if (err) throw err;
    // console.log(result);
    todotable = result;
    // console.log(typeof(todotable));
    // console.log(JSON.stringify(todotable));
    // console.log(typeof(JSON.stringify(todotable)));
  });
  // res.json({ message: JSON.stringify(todotable).replace(/\[|\]/g, '')});
  //res.json({ message: JSON.stringify(todotable)});
  res.status(200).send({ message: todotable });
  //res.json({ message: todotable });
  //res.send({todotable});
});

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
