<?php
// (A) START SESSION
session_start();
 
// (B) LOGOUT REQUEST
if (isset($_POST["logout"])) { unset($_SESSION["user"]); }
 
// (C) REDIRECT TO LOGIN PAGE IF NOT LOGGED IN
if (!isset($_SESSION["user"])) {
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
    <style>
        * {
            text-align: center;
        }
    </style>
    <title>Document</title>
</head>

<body>
    <br><br><br><br><br><br>
    <h1>WELCOME</h1>

    <!-- LOGOUT -->
    <form method="POST">
        <input type="hidden" name="logout" value="1">
        <input type="submit" value="logout">
    </form>
</body>

</html>