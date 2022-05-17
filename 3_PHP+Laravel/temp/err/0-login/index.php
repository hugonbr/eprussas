<?php
session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    
</head>
<body>

    <?php
    $usuario = $senha = "";
    
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $usuario = test_input($_POST["usuario"]);
        $senha = test_input($_POST["senha"]);
    }

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    ?>

    <div class="main">
        <p>Olá Mundo</p>
        <p>Bem-vindo! <?php echo $usuario; ?> </p>
        <p>Você entrou com a senha <?php echo $_POST["senha"]; ?> </p>

        <a href="logout.php">SAIR</a>
    </div>
</body>
</html>