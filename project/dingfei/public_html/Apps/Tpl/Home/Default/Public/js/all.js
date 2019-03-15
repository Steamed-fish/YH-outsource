$(function(){
    $('body').removeClass('no-animates');

    $(".nav-app").click(function() {/*移动端导航菜单显示*/
        var app = $(this).next();
        if(app.hasClass('mobile')) {
            app.fadeOut(function(){
                app.removeClass('mobile');
            });
        } else {
            app.addClass('mobile');
            app.fadeIn();
        }
    });

    $('#mobile-nav').click(function(e) {
        var _this = $(this);
        var target = $(e.target);
        if(_this.hasClass('mobile')){
            if(target.is('li>a')) {
                var ul = target.parent('li').css('height', 'auto').children('ul');
                if(!ul.length) {
                    return true;
                }
                if(ul.hasClass('active')){
                    ul.removeClass('active').slideUp();
                } else {
                    ul.addClass('active').slideDown();
                }
                return false;
            }
        }
    });

    $('.lang>span.icons,.sharebox>.share.icons').click(function() {
        $(this).parent().toggleClass('active');
    });
    
    $('#pc-nav>li').hover(function() {
        //if(!$('.nav-hide').hasClass('mobile')) {
            $(this).find('ul').slideDown();
        //}
    }, function() {
        //if(!$('.nav-hide').hasClass('mobile')){
            $('#pc-nav ul').stop(true,true);
            $(this).find('ul').slideUp();
        //}
    });
    $(window).on('scroll', function(e) {
        if($(window).scrollTop() > 2) {
            //console.log($(window).scrollTop());
            $('.logo').addClass('active');
        } else {
            $('.logo').removeClass('active');
        }
    });
})