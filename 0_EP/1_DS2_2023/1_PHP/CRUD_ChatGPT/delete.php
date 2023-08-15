<?php
    // Check if the task id is provided
    if (!isset($_GET['id']) || empty($_GET['id'])) {
        header('Location: index.php');
        exit;
    }

    // Include the database configuration file
    require_once 'db_config.php';
    
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