<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php DB</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container m-5 text-center">
        <form action="welcome.php" method="post">
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" placeholder="Nome:" name="name"><br>
                <label for="name">Nome</label>
            </div>
            <div class="form-floating mb-3 mt-3">
                <input type="text" class="form-control" placeholder="Email:" name="email"><br>
                <label for="email">Email</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            
        </form>
    </div>
    
</body>
</html>

