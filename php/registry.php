<?php
include "conn.php";
//检测用户名是否重名
if (isset($_POST['user'])) {
    $user = $_POST['user'];
    $result = $conn->query("select * from userinfo where username='$user'");
    if ($result->fetch_assoc()) { //存在
        echo 1; //1
    } else {
        echo 2; //空
    }
}

