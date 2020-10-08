<?php
include "conn.php";
//接收前端表单提交的数据
if (isset($_POST['user']) && isset($_POST['pass'])) {
    $username = $_POST['user'];
    $password = sha1($_POST['pass']);
    $conn->query("insert userinfo values(default,'$username','$password'");
    echo 1;
    // header('location:http://192.168.13.36/vip/src/login.html');
}