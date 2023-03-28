var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "todolist"
});

con.connect((err) => {
  if (err) throw err;
});

con.query("SELECT * FROM todo", (err, result, fields) => {
  if (err) throw err;
  console.log(result);
});
con.query("SELECT id FROM todo", (err, result, fields) => {
  if (err) throw err;
  console.log(result);
});
con.query("SELECT desc_text FROM todo", (err, result, fields) => {
  if (err) throw err;
  console.log(result);
});

con.end((err) => {
  if (err) throw err;
  console.log('Closed MySQL connection');
});
