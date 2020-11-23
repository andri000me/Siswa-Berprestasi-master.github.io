<?php
session_start();

$db = mysqli_connect('localhost','root','','db_saw');
if (!$db)
{
    die("Database Connection: ".mysqli_connect_error());
}
?>