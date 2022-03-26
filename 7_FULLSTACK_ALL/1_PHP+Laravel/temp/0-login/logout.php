<?php
session_start();
 
unset($_SESSION['usuario']);
unset($_SESSION['senha']);
unset($_SESSION['loggedin']);

$_SESSION = array();

session_destroy();
 
header("location: login.php");
exit;
?>