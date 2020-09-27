define([], function() {
    return {
        init: function() {
            // const $woman_content = $(".woman .woman_content ul");

            // console.log($woman_content);
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

                </li>
            `;

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


            const $ul = $(".hover_left ul");
            $.ajax({
                url: 'http://localhost/vip/php/twolist.php',
                dataType: 'json'
            }).done((data) => {
                let $data = data;
                // console.log($data);
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

            });

            const $li = $('.navigation .sp_ul_li');
            const $hover = $('.navigation .sp_li_hover');
            // console.log($li);


            //二级菜单添加事件。
            $li.on('mouseover', function() {
                $(this).addClass('active').siblings($li).removeClass('active');
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
            const $nav = $('.navigation2');
            //触发滚轮事件
            $(window).on('scroll', function() {
                let $top = $(window).scrollTop();
                // console.log($top); 
                if ($top >= 200) {
                    // console.log($('.navigation2'));
                    $('.navigation2').css({
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
                    $('.navigation2').css({
                        "top": "-45px"
                    });
                    $(".navigation2 .sp_ul").stop(true, false).hide();
                    // console.log(2);
                }
            });

        }
    }
});