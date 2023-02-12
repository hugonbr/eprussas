const mysql = require('mysql');
const express = require('express');

const app = express();

// Crie uma conexão MySQL
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '1234',
    database: 'testeNodeTodo'
});

// Conecte ao banco de dados
db.connect();

// Crie a tabela de tarefas
db.query(`CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255) NOT NULL
)`);

// Rota para criar uma nova tarefa
app.post('/tasks', (req, res) => {
    const task = req.body.task;
    console.log(req.body);
    db.query(`INSERT INTO tasks (task) VALUES ('${task}')`, (error, result) => {
        if (error) throw error;
        res.send('Task created successfully');
    });
});

// Rota para ler todas as tarefas
app.get('/tasks', (req, res) => {
    db.query('SELECT * FROM tasks', (error, results) => {
        if (error) throw error;
        res.json(results);
    });
});

// Rota para ler uma tarefa específica
app.get('/tasks/:id', (req, res) => {
    const id = req.params.id;
    db.query(`SELECT * FROM tasks WHERE id = ${id}`, (error, result) => {
        if (error) throw error;
        res.json(result);
    });
});

// Rota para atualizar uma tarefa
app.put('/tasks/:id', (req, res) => {
    const id = req.params.id;
    const task = req.body.task;
    db.query(`UPDATE tasks SET task = '${task}' WHERE id = ${id}`, (error, result) => {
        if (error) throw error;
        res.send('Task updated successfully');
    });
});

// Rota para deletar uma tarefa
app.delete('/tasks/:id', (req, res) => {
    const id = req.params.id;
    db.query(`DELETE FROM tasks WHERE id = ${id}`, (error, result) => {
        if (error) throw error;
        res.send('Task deleted successfully');
    });
});

// Inicie o servidor
app.listen(3000, () => {
    console.log('Server started on port 3000');
});
