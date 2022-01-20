<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            text-align: center;
            font-size: xx-large;
            margin-top: 4rem;
        }
    </style>
</head>

<body>

    <p>Welcome <?php echo $_GET["login"]; ?><br></p>
    <p>Your password is: <?php echo $_GET["senha"]; ?></p>

</body>

</html>