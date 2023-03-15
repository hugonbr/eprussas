var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "todolist"
});

con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM todo", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});

