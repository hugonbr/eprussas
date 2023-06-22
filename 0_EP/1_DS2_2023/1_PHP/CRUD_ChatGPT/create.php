<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Database configuration
        $host = 'localhost';
        $db_name = 'todo_list';
        $username = 'root';
        $password = '1234';

        // Create a new PDO instance
        $pdo = new PDO("mysql:host=$host;dbname=$db_name", $username, $password);

        // Insert new task into the database
        $task = $_POST['task'];
        $stmt = $pdo->prepare('INSERT INTO tasks (task) VALUES (?)');
        $stmt->execute([$task]);

        // Redirect back to the index.php
        header('Location: index.php');
        exit;
    }
?>