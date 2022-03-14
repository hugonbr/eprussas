<?php
    $pdo = new PDO ('mysql:host=localhost;port=3306;dbname=products_crud', 'root', '1234');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $statement = $pdo->prepare('SELECT * FROM products ORDER BY create_date DESC');
    $statement->execute();
    $products = $statement->fetchAll(PDO::FETCH_ASSOC);
    // echo '<pre>';
    // var_dump($products);
    // echo '</pre>';

    $keyword = $_GET['search'] ?? null;

    if ($keyword) {
        $statement = $pdo->prepare('SELECT * FROM products WHERE title like :keyword ORDER BY create_date DESC');
        $statement->bindValue(":keyword", "%$keyword%");
    } else {
        $statement = $pdo->prepare('SELECT * FROM products ORDER BY create_date DESC');
    }
    $statement->execute();
    $products = $statement->fetchAll(PDO::FETCH_ASSOC);

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
    <title>Products CRUD</title>
  </head>
  <body>
    <h1>Products CRUD</h1>

    <div class="container_btn">
      <div class="center_btn">
        <p>
          <a href="create.php" type="button" class="btn btn-sm btn-success">Create Product</a>
        </p>
      </div>
    </div>

    <form action="" method="get">
    <div class="input-group mb-3">
      <input type="text" name="search" class="form-control" placeholder="Search" value="<?php echo $keyword ?>">
      <div class="input-group-append">
        <button class="btn btn-success" type="submit">Search</button>
      </div>
    </div>
    </form>

    <table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Image</th>
        <th scope="col">Title</th>
        <th scope="col">Price</th>
        <th scope="col">Actions</th>
        <th id="c_date" scope="col">Create Date</th>
        
    </tr>
    </thead>
    <tbody>
    <!-- <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
    </tr> -->
    <?php foreach ($products as $i => $product) { ?>
        <tr>
            <th scope="row"><?php echo $i + 1 ?></th>
            <td>
            <img src="<?php echo $product['image'] ?>" alt="<?php echo $product['title'] ?>" class="product-img">

            </td>
            <td><?php echo $product['title'] ?></td>
            <td><?php echo $product['price'] ?></td>
            
            <td>
            <a href="update.php?id=<?php echo $product['id'] ?>" class="btn btn-sm btn-outline-primary">Edit</a>
                <form method="post" action="delete.php" style="display: inline-block">
                    <input  type="hidden" name="id" value="<?php echo $product['id'] ?>"/>
                    <button type="submit" class="btn btn-sm btn-outline-danger">Delete</button>
                </form>
            </td>
            <td id="c_date"><?php echo $product['create_date'] ?></td>
            
        </tr>
    <?php } ?>
    </tbody>
    </table>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>