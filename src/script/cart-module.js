define(['jcookie'], function() {
    return {
        init: function() { 
            let  arrsid  =   [];            
            let  arrnum  =   [];            
            const  $cartcontent  =  $('.cart-content');            
            if  ($.cookie('cookiesid')  &&  $.cookie('cookienum'))  {                
                arrsid  =  $.cookie('cookiesid').split(',');                
                arrnum  =  $.cookie('cookienum').split(',');   
                let str = '';            
                $.each(arrsid,  function (index,  value)  {   
                    $.ajax({        
                        url:   'http://192.168.13.36/vip/php/getsid.php',
                        data:  {   
                            sid:  value 
                        },
                        dataType:   'json'   
                    }) .done(function (data)  {   
                        // console.log(data); 
                        str  +=  `
                        <li class="cartli" datasid='${data.sid}'>
                            <img class="img" src="${data.url}" alt="">
                            <a class="title">${data.title}</a>
                            <strong class="danjia">${data.newprice}</strong>
                            <span class="num">
                                <dd class="ui-quantity num-box">
                                <a href="javascript:;" role="button" class="jian">-</a>
                                <input class="num" value="${arrnum[index]}" />
                                <a href="javascript:;" role="button" class="jia">+</a>
                                </dd>
                            </span>
                            <span class="delete">删除</span>
                        </li> `        
                            // console.log(str);                                                                                         
                        $cartcontent.html(str);
                    });

                })
            }

            function  getcookie()  {
                if  ($.cookie('cookiesid')  &&  $.cookie('cookienum'))  {
                    arrsid  =  $.cookie('cookiesid').split(',');                                    
                    arrnum  =  $.cookie('cookienum').split(',');
                }
            } 
            //计算总价
                                        
            const  $priceall  =  $('.cart-content');  //渲染的价格   
            console.log($priceall);                        
            let  $allprice  =  0;                         
            $.each($priceall, function (index,  value)  {
                $allprice  +=  +$(this).html();
                $('.price').html('￥'  +  parseFloat($allprice).toFixed(2)); //总价的元素
            });                                              //价格变化                         
            $(".num").change(function ()  { //数量
                $(this).parents('.jisuan').find('.price').html($(this).parents('.cartli').find('.danjia').html()  *  $(this).val()); //总价填充数量和价格的乘积
                let  $allprice  =  0;
                $.each($priceall,  function (index,  value)  {
                    $allprice  +=  +$(this).html();
                    $('.price').html('￥'  +  parseFloat($allprice).toFixed(2));
                }) ;
                getcookie();
                let  what  =  $.inArray($(this).parents('.cartli').attr('datasid'),  arrsid);
                let  number  =  $(this).val();                                
                arrnum[what]  =  number;
                $(".jian").html(cookiesid.size())
                $.cookie('cookienum',  arrnum,   {  expires:  7  });
            });

        }
    }
});