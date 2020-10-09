<?php
include "conn.php";

if (isset($_POST['user']) && isset($_POST['pass'])) {
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $result = $conn->query("select * from userinfo where username='$user' and password='$pass'");
    if ($result->fetch_assoc()) { //匹配成功
        echo 1;
    } else { //匹配不成功
        echo 2;
    }
}
