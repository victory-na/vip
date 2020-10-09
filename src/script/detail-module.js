define(['jcookie'], function() {
    return {
        init: function() {

            let datasid = location.search.substring(1).split('=')[1];
            const spic = $('#spic');
            const bpic = $('#bpic');
            const sf = $('#sf');
            const bf = $('#bf');

            if (!datasid) { //如果sid不存在，设置1
                datasid = 1;
            }
            $.ajax({
                url: 'http://192.168.13.36/vip/php/getsid.php',
                data: {
                    sid: datasid
                },
                dataType: 'json'
            }).done((data) => {
                let objdata = data;
                $('#smallpic').attr('src', objdata.url); //图片地址
                $('.pinpai').html(objdata.brand); //品牌
                $('.loadtitle').html(objdata.title); //标题
                $('.loadpcp').html(objdata.newprice); //现在的价格
                $('.oldprice').html(objdata.oldprice); //原价
                $('.discount').html(objdata.discount); //折扣
                $('#bpic').attr('src', objdata.url);
                //渲染放大镜效果下面的小图
                let arr = objdata.lurl.split(','); //转数组
                let strhtml = '';
                $.each(arr, function(index, value) {
                    strhtml += `
                <li><img src="${value}"/></li>
            `;
                });

                $('#list ul').html(strhtml);

                hidearrow(); //是否显示右箭头
            });
            //4.放大镜效果
            //大图/小图 = 大放/小放
            spic.hover(function() { //显示小放和大放
                sf.css({
                    visibility: 'visible'
                });
                bf.css({
                    visibility: 'visible'
                });
                //计算放大镜的尺寸。
                sf.css({
                    width: spic.outerWidth() * bf.outerWidth() / bpic.outerWidth(),
                    height: spic.outerHeight() * bf.outerHeight() / bpic.outerHeight()
                });
                //计算比例
                let bili = bpic.outerWidth() / spic.outerWidth();
                //小图内容鼠标移动
                spic.on('mousemove', function(e) {
                    let left = e.pageX - $('.wrap').offset().left - sf.width() / 2;
                    let top = e.pageY - $('.wrap').offset().top - 185 - sf.height() / 2;
                    // console.log(top);
                    if (left <= 0) {
                        left = 0;
                    } else if (left >= spic.width() - sf.width()) {
                        left = spic.width() - sf.width();
                    }

                    if (top <= 0) {
                        top = 0;
                    } else if (top >= spic.height() - sf.height()) {
                        top = spic.height() - sf.height();
                    }

                    sf.css({
                        left: left,
                        top: top
                    });
                    bpic.css({
                        left: -bili * left,
                        top: -bili * top
                    });
                });
            }, function() {
                sf.css({
                    visibility: 'hidden'
                });
                bf.css({
                    visibility: 'hidden'
                });
            });

            // console.log($('#list ul li').size());//0
            // 采用事件委托，进行放大镜的图片切换
            // 通过当前的li找到li内部的图片的地址，赋值给小图和大图
            $('#list ul').on('click', 'li', function() {
                // console.log($(this).find('img').attr('src'));//图片的地址
                let picurl = $(this).find('img').attr('src');
                spic.find('img').attr('src', picurl);
                bpic.attr('src', picurl);
            });

            let piclen = 5; //显示图片的张图
            function hidearrow() { //当li的长度不够6个，隐藏左右箭头
                // console.log($('#list ul li').length);
                if ($('#list ul li').length <= piclen) {
                    $('#right').css({
                        color: '#fff',

                    })
                }
            }

            $('#right').on('click', function() {
                let liwidth = $('#list ul li').eq(0).outerWidth(true); //1个li的长度
                if ($('#list ul li').length > piclen) {
                    piclen += 5;
                    $('#left').css({
                        color: '#333'
                    });
                    console.log(piclen);
                    if (piclen >= $('#list ul li').length) { //无法点击右箭头，到底了
                        $('#right').css({
                            color: '#fff'
                        });
                    }
                    $('#list ul').animate({
                        left: -340
                    });
                }
            });

            //如果左箭头能够进行移动，piclen长度大于6.
            $('#left').on('click', function() {
                let liwidth = $('#list ul li').eq(0).outerWidth(true); //1个li的长度
                if (piclen > 5) {
                    piclen -= 5;
                    $('#right').css({ //左箭头触发一次，右箭头可以显示。
                        color: '#333'
                    });
                    if (piclen === 5) { //无法点击右箭头，到底了
                        $('#left').css({
                            color: '#fff'
                        });
                    }
                    $('#list ul').animate({
                        left: -(piclen - 5) * liwidth
                    });
                }
            });


            //购物车的注意事项
            //1.购物车的核心存储什么：
            //商品的编号：
            //商品的数量：
            let $num = $(".num-box input").val();
            console.log($num);

            $(".jian").on('click', function() {
                $num--;
                $(".num-box input").val($num);
                if ($num == 1) {
                    $(".jian").css({
                        color: '#eee'
                    })
                }



            });
            $(".jia").on('click', function() {
                $num++;
                $(".num-box input").val($num)
                $(".jian").css({
                    color: '#7d7c7c'
                })

            });
            //2.怎么存储--数组
            let arrsid = []; //存储商品的编号。
            let arrnum = []; //存储商品的数量。
            //3.点击加入购物车按钮(确定是第一次点击还是多次点击)
            //第一次点击：在购物车列表页面创建商品列表
            //多次点击：之前创建过商品列表，只需要数量增加。

            //取出cookie,才能判断是第一次还是多次点击
            function cookietoarray() {
                if ($.cookie('cookiesid') && $.cookie('cookienum')) {
                    arrsid = $.cookie('cookiesid').split(','); //获取cookie 同时转换成数组。[1,2,3,4]
                    arrnum = $.cookie('cookienum').split(','); //获取cookie 同时转换成数组。[12,13,14,15]
                } else {
                    arrsid = [];
                    arrnum = [];
                }
            }



            $('.joincart').on('click', function() {
                //获取当前商品对应的sid
                let $sid = location.search.substring(1).split('=')[1]; //获取sid
                // console.log(1111);
                // console.log($sid);
                cookietoarray();
                if ($.inArray($sid, arrsid) != -1) { //$sid存在，商品列表存在，数量累加
                    //先取出cookie中存在的数量+当前添加的数量，一起添加到cookie中。
                    let $snum = parseInt(arrnum[$.inArray($sid, arrsid)]) + parseInt($num); //取值
                    console.log($snum);
                    arrnum[$.inArray($sid, arrsid)] = $snum; //赋值
                    $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                } else {
                    console.log(22222);
                    //第一次点击加入购物车按钮,将商品的sid和商品的数量放到提前准备的数组里面，然后将数组传入cookie.
                    arrsid.push($sid); //将编号$sid push到arrsid数组中
                    $.cookie('cookiesid', arrsid, { expires: 10, path: '/' });
                    arrnum.push($num); //将数量push到arrnum数组中

                    $.cookie('cookienum', arrnum, { expires: 10, path: '/' });
                }
                alert('按钮触发了');
            });
        }
    }
})