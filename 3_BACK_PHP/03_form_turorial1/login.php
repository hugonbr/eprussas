<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php
    // Login PHP
    require "check.php";
    if (isset($failed)) {
        echo "<div>INVALID USER/PASSWORD</div>";
    }
    ?>    

    <!-- HTML LOGIN FORM -->
    <form method="POST">
        <input type="text" name="user" required>
        <input type="password" name="password" required>
        <input type="submit" value="Login">
    </form>
</body>
</html>