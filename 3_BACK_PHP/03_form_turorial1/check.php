<?php

//LIST USERS AND PASSWORDS
$users = [
    "admin" => "123",
    "joe" => "1234"
];

//START SESSION
session_start();

//VERIFY LOGIN
if (isset($POST['user']) && !isset($_SESSION['user'])){
    //CHECK PASSWORD
    if ($users[$POST['user']] == $POST['password']) {
        //RESGISTER THE USER ON THE SESSION
        $_SESSION['user'] = $_POST['user'];
    }

    //FAILED...
    if (!isset($_SESSION['user'])) {
        $failed = true;
    }
}

//VALID LOGIN
if (isset($_SESSION['user'])) {
    header("Location: index.php");
    exit();
}

?>