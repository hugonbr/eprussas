<?php

//PROTECTED PAGE
session_start();

//LOGOUT
if (isset($_POST['logout'])) {
    unset($_SESSION['user']);
}

//BACK TO LOGIN PAGE IF NOT SIGNED IN
if (!isset($_SESSION['user'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>WELCOME</h1>

    <!-- LOGOUT -->
    <form method="POST">
        <input type="hidden" name="logout" value="1">
        <input type="submit" value="logout">
    </form>
</body>

</html>