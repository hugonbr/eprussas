import app from "./app";
import database from "./database";

// Sincroniza o código JS com o '{force: true}' Banco de dados e força sua criação.
database.sync();
console.log("Database running at 3306");

app.listen(3001);
console.log("Server running at 3001");
