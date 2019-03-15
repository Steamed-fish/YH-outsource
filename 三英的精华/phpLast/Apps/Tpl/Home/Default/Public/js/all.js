$(function(){
    $(".nav-app").click(function(){/*移动端导航菜单显示*/
        var app = $(this).next();
        if(app.css("display")=="none"){
            app.fadeIn();
        }else{
            app.fadeOut();
        }
    });
})