<?php
$con  = mysqli_connect('localhost:3306','root','1234','datatable_example');
if(mysqli_connect_errno())
{
    echo 'Database Connection Error';
}
