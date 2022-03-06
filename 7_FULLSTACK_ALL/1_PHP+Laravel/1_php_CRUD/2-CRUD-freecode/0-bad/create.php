<?php
    $pdo = new PDO ('mysql:host=localhost;port=3306;dbname=products_crud', 'root', '1234');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // image=&title=&description=+&price=
    // echo '<pre>';
    // var_dump($_POST);
    // echo '</pre>';

    $title = $_POST['title'];
    $description = $_POST['description'];
    $price = $_POST['price'];
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="app.css">
    <title>Create new Product</title>
  </head>
  <body>
    <h1>Create new Product</h1>

    <div class="container_btn">
      <div class="center_btn">
        <p>
          <a href="index.php" type="button" class="btn btn-sm btn-info">Back to /</a>
        </p>
      </div>
    </div>

    <form action="" method="POST">
        <div class="mb-3">
            <label class="form-label">Product image</label>
            <br>
            <input type="file" name="image">
        </div>
        <div class="mb-3">
            <label class="form-label">Product title</label>
            <input type="text" name="title" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Product description</label>
            <textarea name="description" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Product price</label>
            <input type="number" step=".01" name="price" class="form-control">
        </div>
        <div class="container_btn">
            <div class="center_btn">
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
        </div>  
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>