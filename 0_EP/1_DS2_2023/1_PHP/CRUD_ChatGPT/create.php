<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Include the database configuration file
        require_once 'db_config.php';
       
        // Insert new task into the database
        $task = $_POST['task'];
        $stmt = $pdo->prepare('INSERT INTO tasks (task) VALUES (?)');
        $stmt->execute([$task]);

        // Redirect back to the index.php
        header('Location: index.php');
        exit;
    }
?>