<?php

$username = $_POST['username'];
$password = $_POST['pwd'];

if (isset($_POST['submit'])) {

    if (!empty($username) && !empty($password)) {

        if ($username=='admin' && $password=='123') {

            echo "Welcome";
        }
        else {
            echo "Please enter correct username or password";
        }
    }
    else {
        echo "Please fill all fields";
    }
}

?>