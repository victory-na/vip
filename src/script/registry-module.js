define(['sha1'], function() {
    return {
        init: function() {
            $('.username').on('blur', function() {
                if ($('.username').val() === "") {
                    $('.namep').html("用户名不能为空");
                    $('.namep').css({
                        color: "red"
                    })
                    $('.body>.login>.name>.icon2').css({
                        display: "block"
                    });
                    $('.username').css({
                        border: "1px solid red"
                    })
                } else {
                    $('.body>.login>.name>.icon2').hide();
                    $('.username').css({
                        border: "1px solid green"
                    })
                    $('.namep').html("");
                    $.ajax({
                        type: 'post',
                        url: 'http://192.168.13.36/vip/php/registry.php',
                        data: {
                            user: $('.username').val(),
                        }
                    }).done(function(result) {
                        if (result == 2) {
                            $('.namep').html("用户名可用");
                            $('.namep').css({
                                color: "green"
                            })
                        } else {
                            $('.namep').html("用户名已存在");
                            $('.namep').css({
                                color: "red"
                            })
                            $('.name .icon2').css({
                                display: "block"
                            });
                            $('.name input').css({
                                border: "1px solid red"
                            })
                        }
                    });

                }



            });

            $('.password').on('blur', function() {
                let $call = "密码";
                blur($('.password'), $('.pswp'), $('.body>.login>.psw>.icon2'), $call);

            });
            $('.repassword').on('blur', function() {
                let $call = "确认密码";
                blur($('.repassword'), $('.repswp'), $('.body>.login>.repsw>.icon2'), $call);

            });
            $('.username').on('focus', function() {
                let $content = "请输入注册的用户名";
                focus($('.username'), $('.namep'), $('.body>.login>.name>.icon2'), $content);

            });
            $('.password').on('focus', function() {
                let $call = "输入密码";
                focus($('.password'), $('.pswp'), $('.body>.login>.psw>.icon2'), $call);

            });
            $('.repassword').on('focus', function() {
                let $call = "输入相同的密码";
                focus($('.repassword'), $('.repswp'), $('.body>.login>.repsw>.icon2'), $call);

            });
            blur = function($input, $p, $icon, $name) {
                if ($input.val() === "") {
                    $p.html($name + "不能为空");
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
            focus = function($input, $p, $icon, $content) {
                $p.html($content);
                $p.css({
                    color: "#666"
                })
                $icon.css({
                    display: "none"
                });
                $input.css({
                    border: "1px solid green"
                })
            }
            $('.button input').on('click', function() {
                console.log(333);
                $.ajax({
                    type: 'post',
                    url: 'http://192.168.13.36/vip/php/zhuce.php',
                    data: {
                        user: $('.username').val(),
                        pass: $('.password').val()
                    }
                });

            })
        }
    }
})