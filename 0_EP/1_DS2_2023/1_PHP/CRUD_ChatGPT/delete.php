<?php
    // Check if the task id is provided
    if (!isset($_GET['id']) || empty($_GET['id'])) {
        header('Location: index.php');
        exit;
    }

    // Database configuration
    $host = 'localhost';
    $db_name = 'todo_list';
    $username = 'root';
    $password = '1234';

    // Create a new PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$db_name", $username, $password);

    // Retrieve the task from the database
    $id = $_GET['id'];
    $stmt = $pdo->prepare('SELECT * FROM tasks WHERE id = ?');
    $stmt->execute([$id]);
    $task = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if the task exists
    if (!$task) {
        header('Location: index.php');
        exit;
    }

    // Delete task from the database
    $stmt = $pdo->prepare('DELETE FROM tasks WHERE id = ?');
    $stmt->execute([$id]);

    // Redirect back to the index.php
    header('Location: index.php');
    exit;
?>