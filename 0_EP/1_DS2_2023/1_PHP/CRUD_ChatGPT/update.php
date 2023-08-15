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

    // Update task in the database
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $newTask = $_POST['task'];
        $stmt = $pdo->prepare('UPDATE tasks SET task = ? WHERE id = ?');
        $stmt->execute([$newTask, $id]);

        // Redirect back to the index.php
        header('Location: index.php');
        exit;
    }
?>
<!DOCTYPE html>
<html>

<head>
    <title>Todo List CRUD - Update Task</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
    .container {
        margin-top: 50px;
    }
    </style>
</head>

<body>
    <div class="container">
        <h2>Update Task</h2>
        <form method="POST" action="">
            <div class="form-group">
                <input type="text" name="task" value="<?php echo $task['task']; ?>" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Update Task</button>
        </form>
    </div>
</body>

</html>