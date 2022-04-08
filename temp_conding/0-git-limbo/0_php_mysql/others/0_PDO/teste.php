<?php
$servername = "localhost";
$username = "root";
$password = "1234";
$db_name = "git01_userModel";

//Connect
try {
  $conn = new PDO("mysql:host=$servername;dbname=$db_name", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

//End Connection
$conn = null;
echo "<br><br>";
echo "End Connection";
?>