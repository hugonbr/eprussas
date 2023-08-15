<!DOCTYPE html>
<html>

<head>
    <title>Todo List CRUD</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
    body {
        margin: 3rem;
    }

    .container {
        /* margin: 2rem; */
        margin-top: 50px;
    }
    </style>
    <script>
    function confirmDelete() {
        return confirm("Você tem ceteza que deseja APAGAR a tarefa?\n(Essa operação não pode ser desfeita)");
    }
    </script>
</head>

<body>
    <div class="container">
        <h2>Todo List</h2>
        <form method="POST" action="create.php" class="form-inline">
            <div class="form-group">
                <input type="text" name="task" placeholder="Task" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Add Task</button>
        </form>
        <br>
        <?php
        // Include the database configuration file
        require_once 'db_config.php';

        // Retrieve tasks from the database
        $stmt = $pdo->query('SELECT * FROM tasks');
        $tasks = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if ($tasks) {
            foreach ($tasks as $task) {
                echo '<div class="alert alert-info">';
                echo '<span>' . $task['task'] . '</span>';
                echo '<a href="update.php?id=' . $task['id'] . '" class="btn btn-warning btn-xs pull-right">Edit</a>';
                echo '<a href="delete.php?id=' . $task['id'] . '" class="btn btn-danger btn-xs pull-right" onclick="return confirmDelete()">Delete</a>';
                echo '</div>';
            }
        } else {
            echo '<div class="alert alert-info">No tasks found.</div>';
        }
        ?>
    </div>
</body>

</html>