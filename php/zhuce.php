<?php
include "conn.php";
//接收前端表单提交的数据
if (isset($_POST['user']) && isset($_POST['pass'])) {
    $username = $_POST['user'];
    $password = $_POST['pass'];
    $conn->query("insert userinfo values(null,'$username','$password')");
    header('location:http://192.168.13.36/vip/src/login.html');
}