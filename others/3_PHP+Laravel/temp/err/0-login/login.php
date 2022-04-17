<?php
session_start();

if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: index.php");
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
    <div class="main">
        <p>SISTEMA WEB</p>
        <form action="index.php" method="POST">
            <input type="text" name="usuario" placeholder="usuário"><br><br>
            <input type="password" name="senha" placeholder="senha"><br><br>
            <?php
                $_SESSION["loggedin"] = true;
            ?>            
            <button type="submit">ENTRAR</button>
        </form>
    </div>
</body>
</html>