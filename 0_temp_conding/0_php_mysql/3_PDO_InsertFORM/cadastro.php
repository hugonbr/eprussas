<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>php-mysql</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "1234";
            $dbname = "git01_userModel";

            //form
            // define variables and set to empty values
            //$usuario = $senha = $nome_completo = $cpf = $email = "";
            $usuario = $_POST['usuario'];
            $senha = $_POST['senha'];
            $nome_completo = $_POST['nome_completo'];
            $cpf = $_POST['cpf'];
            $email = $_POST['email'];

        ?>

        <?php
            try {
                $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO usuario(login, senha, NomeCompleto, cpf, email) VALUES ('$usuario','$senha','$nome_completo','$cpf','$email')";
                // use exec() because no results are returned
                $conn->exec($sql);
                echo "New record created successfully";
            } catch(PDOException $e) {
                echo $sql . "<br>" . $e->getMessage();
            }

            $conn = null;
        ?>
        <br>
        <br>
        <a href="viewdata.php">VIEW DATA</a>

        </div>
    </body>
</html>