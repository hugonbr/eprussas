<?php
    $pdo = new PDO ('mysql:host=localhost;port=3306;dbname=products_crud', 'root', '1234');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // echo '<pre>';
    // var_dump($_FILES);
    // echo '</pre>';
    //exit;

    $errors = [];

    $title = '';
    $price = '';
    $description = '';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

      // image=&title=&description=+&price=
      // echo '<pre>';
      // // var_dump($_SERVER);
      // var_dump($_SERVER['REQUEST_METHOD']);
      // var_dump($_POST);
      // echo '</pre>';
      // exit;

      $title = $_POST['title'];
      $description = $_POST['description'];
      $price = $_POST['price'];

      $date = date('Y-m-d H:i:s');

      if (!$title) {
        $errors[] = 'Product title is required';
      }
      if (!$price) {
        $errors[] = 'Price is required';
      }

      if (!is_dir('images')) {
        mkdir('images');
      }

      if (empty($errors)) {

        $image = $_FILES['image'] ?? null;
        $imagePath = '';

        if ($image && $image['tmp_name']) {

          $imagePath = 'images/'.randomString(8).'/'.$image['name'];
          mkdir(dirname($imagePath));

          // echo '<pre>';
          // var_dump($imagePath);
          // echo '</pre>';
          // exit;

          move_uploaded_file($image['tmp_name'], $imagePath);
        }
        

        $statement = $pdo->prepare("INSERT INTO products(title, image, description, price, create_date)
                      VALUES (:title, :image, :description, :price, :date);
                      ");

        $statement->bindValue(':title', $title);
        $statement->bindValue(':image', $imagePath);
        $statement->bindValue(':description', $description);
        $statement->bindValue(':price', $price);
        $statement->bindValue(':date', $date);

        $statement->execute();

        header('Location: index.php');
      }
    }

function randomString($n) {
  $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  $str = '';
  for ($i = 0; $i < $n; $i++) {
      $index = rand(0, strlen($characters) - 1);
      $str .= $characters[$index];
  }

  return $str;
}

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

    <?php
      if (!empty($errors)) {
    ?>
      <div class="alert alert-danger">
        <?php foreach ($errors as $error) { ?>
          
          <div> <?php echo $error ?> </div>

        <?php } ?>
      </div>
    <?php } ?>

    <div class="container_btn">
      <div class="center_btn">
        <p>
          <a href="index.php" type="button" class="btn btn-sm btn-info">Back to Products</a>
        </p>
      </div>
    </div>

    <form action="" method="POST" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label">Product image</label>
            <br>
            <input type="file" name="image">
        </div>
        <div class="mb-3">
            <label class="form-label">Product title</label>
            <input type="text" name="title" class="form-control" value="<?php echo $title ?>">
        </div>
        <div class="mb-3">
            <label class="form-label">Product description</label>
            <textarea name="description" class="form-control" value="<?php echo $description ?>"></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Product price</label>
            <input type="number" step=".01" name="price" class="form-control" value="<?php echo $price ?>">
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