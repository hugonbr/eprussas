<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>todolist</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style>
        * {
            border-style: solid;
        }
    </style>
</head>
<body>
    <!-- <p>teste</p> -->

    <div class="container my-4 text-center">

        <?php
        $servername = "localhost";
        $username = "root";
        $password = "1234";
        $dbname = "todolist";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "Conexão realizada com sucesso"; 
            }
        catch(PDOException $e)
            {
            echo "Falha na conexão: " . $e->getMessage();
            }

        $stmt = $conn->prepare("SELECT * FROM todo"); 
        $stmt->execute();

        // set the resulting array to associative
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
        $rows = $stmt->fetchAll();

        echo "<table class=\"table table-success table-striped mt-4\">";
        echo "<tr>";
        echo "<th>ID</th>";
        echo "<th>Tarefas</th>";
        echo "<th>Ações</th>";
        echo "</tr>";

        foreach ($rows as $row) {
                echo "<tr>";
                echo "<td>" . $row["id"] . "</td>";
                echo "<td>" . $row["desc_text"] . "</td>";
                echo "<td> <button type=\"button\" class=\"btn btn-primary btn-sm\">Marcar</button> <button type=\"button\" class=\"btn btn-warning btn-sm\">Editar</button> <button type=\"button\" class=\"btn btn-danger btn-sm\">Excluir</button> </td>";
                echo "</tr>";
        }
        echo "</table>";

        $conn = null;
        ?>

        <button type="button" class="btn btn-success btn-sm mt-2">NOVO + </button>

    </div>
</body>
</html>

