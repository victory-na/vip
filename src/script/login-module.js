define(['sha1'], function() {
    return {
        init: function() {
            $('.username').on('blur', function() {
                blur($('.username'), $('.namep'), $('.body>.login>.name>.icon2'));

            });
            $('.password').on('blur', function() {
                blur($('.password'), $('.pswp'), $('.body>.login>.psw>.icon2'));

            });
            blur = function($input, $p, $icon) {
                if ($input.val() === "") {
                    $p.html("用户名不能为空");
                    $p.css({
                        color: "red"
                    })
                    $icon.css({
                        display: "block"
                    });
                    $input.css({
                        border: "1px solid red"
                    })
                } else {
                    $icon.hide();
                    $input.css({
                        border: "1px solid green"
                    })
                    $p.html("");

                }
            }
            $('.button').on('click', function() {
                console.log(11);
                $.ajax({
                    type: 'post',
                    url: 'http://192.168.13.36/vip/php/login.php',
                    data: {
                        user: $('.username').val(),
                        pass: hex_sha1($('.password').val())
                    }
                }).done(function(data) {
                    if (data) {
                        location.href = "index.html";
                        localStorage.setItem('username', $('.username').val());
                    } else {
                        $('.password').val('');
                        alert('用户名或者密码错误');
                    }
                });
                console.log($('.username').val());
            });
        }
    }
})