<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php DB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "1234";
    $dbname = "ESTUDANDO_TODOLIST";

    // Cria a conexão
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Verifica se a conexão foi bem-sucedida
    if (!$conn) {
        die("Falha na conexão: " . mysqli_connect_error());
    }
    echo "Conexão realizada com sucesso <br><br>";

    // new code
    $sql = "SELECT * FROM todo";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        // Output data of each row
        // while($row = mysqli_fetch_assoc($result)) {
        //     echo "id: " . $row["id"]. " - task: " . $row["task"]. "<br>";
        // }
    ?>        
            <table class="table table-success table-striped">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                </tr>
                <?php
                while($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>" . $row["id"] . "</td>";
                    echo "<td>" . $row["task"] . "</td>";
                    echo "</tr>";
                }
                ?>
            </table>
    <?php
    } else {
        echo "0 results";
    }
    // new code

    // Fecha a conexão
    mysqli_close($conn);
    ?>

</body>
</html>