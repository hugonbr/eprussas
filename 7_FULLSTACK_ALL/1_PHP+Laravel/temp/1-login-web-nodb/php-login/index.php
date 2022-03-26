<?php session_start(); /* Starts the session */

if(!isset($_SESSION['UserData']['Username'])){
	header("location:login.php");
	exit;
}
?>

<p style="text-align: center; margin-top: 19rem;">Congratulation! You have logged into password protected page. <a href="logout.php">Click here</a> to Logout.</p>

