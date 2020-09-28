define([], function() {
    return {
        init: function() {
            // const $woman_content = $(".woman .woman_content ul");
            //数据库渲染图片数据
            ;
            ! function() { // console.log($woman_content);
                // $woman_content.html("111");
                $.ajax({ //数据渲染
                    url: 'http://localhost/vip/php/index_pinpai.php',
                    dataType: 'json'
                }).done(function(data) {
                    // let $data = data;
                    // console.log(data);
                    let $strhtml = '';
                    $.each(data, function(index, value) {
                        $strhtml += `
                <li>
                        <img src="${value.url}" alt="">
                        <h3>${value.title}</h3>
                        <p><span>${value.zhekou}</span>折封顶</p>
                </li>`;
                    });
                    // console.log($strhtml);
                    $(" .woman_content ul").html($strhtml);

                });
                $.ajax({
                    url: 'http://localhost/vip/php/index_top.php',
                    dataType: 'json'
                }).done(function(data) {
                    // let $data = data;
                    // console.log(data);
                    let $strhtml = '';
                    $.each(data, function(index, value) {
                        $strhtml += `
                        <li>
                        <div>
                            <img src="${value.curl}" alt="">

                            <article>
                                <img src="${value.turl}" alt="">
                            </article>
                        </div>
                        <aside><span>特卖价</span>￥${value.price}</aside>
                    </li>
                        `;
                    });
                    // console.log($strhtml);
                    $(" .low_price ul").html($strhtml);
                })
            }();

            //导航栏以及导航栏上的二级三级菜单
            ! function() {
                const $ul = $(".hover_left ul");
                $.ajax({
                    url: 'http://localhost/vip/php/twolist.php',
                    dataType: 'json'
                }).done((data) => {
                    let $data = data;
                    console.log($data);
                    // console.log(111);
                    let $strhtml = '';
                    $.each($data, function(index, value) {
                        let arr = value.stitle.split(','); //转数组
                        // console.log(arr);
                        if (index % 2 == 0) {
                            $strhtml += `
                            <li>${value.btitle}<span class="iconfont icon-up"></span>
                            <p>`;
                            $.each(arr, function(index, value) {
                                $strhtml += `
                                <span>${value}</span>
                                `;
                            });
                            $strhtml += `</p></li>`;
                        }
                    });
                    // console.log($strhtml);
                    $ul.html($strhtml);
                })
                const $li = $('.navigation .sp_ul_li');
                const $hover = $('.navigation .sp_li_hover');
                // console.log($li);
                //二级菜单添加事件。
                $li.on('mouseover', function() {
                    $(this).addClass('style').siblings($li).removeClass('active');
                    $hover.eq($(this).index()).show().siblings('.sp_li_hover').hide();
                });
                $li.on('mouseout', function() {
                    $(this).removeClass('active');
                    $hover.hide();
                });
                //导航栏的点击事件
                $('.navigation .sp').on('mouseover', function() {
                    $(".navigation .sp_ul").stop(true, false).show();
                });
                $('.navigation .sp').on('mouseout', function() {
                    $(".navigation .sp_ul").stop(true, false).hide();
                });
            }();

            // const $nav = $('.navigation2');
            //触发滚轮事件,导航栏固定布局
            ! function() {
                $(window).on('scroll', function() {
                    let $top = $(window).scrollTop();
                    // console.log($top); 
                    if ($top >= 200) {
                        // console.log($('.navigation2'));
                        $('.nav').css({
                            "top": "0px"
                        });
                        $('.navigation2 .sp').on('mouseover', function() {
                            $(".navigation2 .sp_ul").stop(true, false).show();
                        });
                        $('.navigation2 .sp').on('mouseout', function() {
                            $(".navigation2 .sp_ul").stop(true, false).hide();


                        });

                        const $li2 = $('.navigation2 .sp_ul_li');
                        const $hover2 = $('.navigation2 .sp_li_hover');

                        //二级菜单添加事件。
                        $li2.on('mouseover', function() {
                            $(this).addClass('active').siblings($li2).removeClass('active');
                            $hover2.eq($(this).index()).show().siblings($hover2).hide();
                        });
                        $li2.on('mouseout', function() {
                            $(this).removeClass('active');
                            $hover2.hide();
                        });
                        // console.log(1);
                    } else {
                        $('.nav').css({
                            "top": "-45px"
                        });
                        $(".navigation2 .sp_ul").stop(true, false).hide();
                        // console.log(2);
                    }
                });

            }();

            //轮播图效果
            ! function() {
                // console.log(222);
                const $img = $('.banner_ul>li');
                const $title = $(".banner_title>ul>li");
                const $right = $(".banner .right");
                const $left = $(".banner .left");
                const $banner = $(".banner_ul")
                let num = 0;
                let timer = '';
                $title.eq(0).addClass("style").siblings().removeClass("style");
                start();
                $title.on('mouseover', function() {
                    // console.log($('.banner_ul>li').eq($(this).index()));
                    num = $(this).index();
                    console.log(num);
                    animate();
                });
                $banner.on('mouseover', () => {
                    clearTimeout(timer);
                    $right.show();
                    $left.show();
                });
                $banner.on("mouseout", () => {
                    start()
                    $right.hide();
                    $left.hide();
                })
                $right.on('click', function() {
                    num++;
                    if (num == 2) {
                        num = 0
                    }
                    animate();
                });
                $left.on('click', function() {
                    num--;
                    if (num == -1) {
                        num = 1
                    }
                    animate();
                });

                function start() {
                    timer = setInterval(function() {
                        num++;
                        if (num == 2) {
                            num = 0
                        }
                        animate();

                    }, 3000);
                }

                function animate() {
                    $img.eq(num).fadeIn("slow").siblings().stop(true, true).fadeOut("slow");
                    $title.eq(num).addClass("style").siblings().removeClass("style");
                }
            }();

            //楼梯
            ! function() {
                const $loutinav = $(".louti");
                const $louti = $(".louti li");
                const $content = $(".main-content>div");
                $(window).on('scroll', function() {
                    let $top = $(window).scrollTop();
                    console.log($top);
                    $top >= 1500 ? $loutinav.show() : $loutinav.hide();
                    $content.each(function(index, element) {
                        let $loutitop = $(element).offset().top + $(element).height() - 70;
                        // console.log($loutitop);
                        if ($loutitop > $top) {
                            $louti.removeClass('active');
                            $louti.eq(index).addClass('active');
                            return false;
                        }
                    });
                    // document.title = $top;
                });


                $louti.not('.last').on('click', function() {
                    $(this).stop(true).addClass('active').siblings().removeClass('active');
                    let $loutitop = $content.eq($(this).index()).offset().top - 50;
                    // console.log($loutitop);
                    $('html,body').scrollTop($loutitop)
                });

            }();

        }
    }
});