<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head lang="en">
	    <meta name="description" content="<?php echo ($seo_description); ?>">
    <meta name="keywords" content="<?php echo ($seo_keywords); ?>">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit"><!--360 极速模式-->
    <link rel="shortcut icon" href="/Apps/Tpl/Home/Default/Public/images/favicon.ico" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=no"/>
    <title><?php echo ($seo_title); ?></title>
    <link href="../Public/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Public/css/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="../Public/css/all.css" rel="stylesheet" type="text/css" />
    <link href="../Public/css/app.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="../Public/js/html5.js"></script>
    <script src="../Public/js/respond.min.js"></script>
    <![endif]-->
    <!--[if IE 8]>
    <link href="../Public/css/ie.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <script type="text/javascript" src="../Public/js/jquery-min.js"></script>
</head>
<body class="<?php echo ($l); ?> no-animates">
<div>
	
		<div class="langbox">
		<div class="container">
			<div class="row">
				<span><?php echo ($welcome); ?></span>
			</div>
		</div>
	</div>
	<div class="header">
		<div class="pan-header">
			<div class="clearfix pan-search">
				<div class="container">
					
					<div class='search-lang'>
						
						<div class="lang relative">
							Language
							<ul>
								<?php if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><li>
									<a <?php if($r['id'] == $langid ) : ?> class="active" <?php endif;?>href="<?php echo str_replace('//', '/', '/'.HOMEURL($r[mark]));?>" style="background:none">
										<?php echo ($r["name"]); ?>
									</a>
								</li><?php endforeach; endif; else: echo "" ;endif; ?>
							</ul>
						</div>
	
						<div class="sharebox relative">
							<span class="icons share">分享</span>
							<ul class="jiathis_style">
								<li><a class="jiathis_button_fb"></a></li>
								<li><a class="jiathis_button_twitter"></a></li>
								<li><a class="jiathis_button_linkedin"></a></li>
								<li><a class="jiathis_button_weixin"></a></li>
								<li><a class="jiathis_button_tsina"></a></li>
								<li><a class="jiathis_button_cqq"></a></li>
							</ul>
							
						</div>
						<div class='search-box relative'>
							<form name="myform" action="/" method="GET">
								<input type="hidden" name="module" value="Product"/>
								<input type="hidden" name="m" value="Search"/>
								<?php if(APP_LANG) : ?><input type="hidden" name="l" value="<?php echo ($l); ?>" /><?php endif;?>
								<input value='<?php echo ($keyword); ?>' class="search-input" type="text" name="keyword" id="keyword" />
								<span class="pan-xian"></span>
								<button type="submit"></button>
								
							</form>
						</div>
					</div>
				</div>
			</div>
		
		<div class="relative pan-nav"> 
			<div class="container">
			
				<div class="logo">
					<a href="<?php echo str_replace('//', '/', '/'.HOMEURL($l));?>"><img src='<?php echo ($logo); ?>' /></a>
				</div>
				<div class="header-u">
					<div class="ol-nav">
						<div class="nav-app">
							<span></span>
							<span></span>
							<span></span>
						</div>
						<ul id="mobile-nav" class="nav-hide no-animates">
							<li>
								<a class="top" href="<?php echo str_replace('//', '/', '/'.HOMEURL($l));?>"
								<?php if($_SERVER['REQUEST_URI'] == str_replace('//', '/', '/'.HOMEURL($l)) ) : ?>
								id="nav-li"
								<?php endif;?>
								><?php echo L('网站首页');?></a>
							</li>
							
							<?php $k=0;foreach($Categorys as $key=>$r):if(1=="" && $r['isfootermenu']==0){ continue; }if( $r['ismenu']==1 && intval(0)==$r["parentid"] ) :++$k;?><li>
								<a class="top <?php echo ($r["cssclass"]); ?>" href="<?php echo ($r["url"]); ?>"
								<?php if($r[id]==$catid) : ?>id="nav-li"<?php endif;?>
								<?php if($r[id]==$Categorys[$catid]['parentid']) : ?>id="nav-li"<?php endif;?>
								><?php echo ($r["catname"]); ?></a>
								<?php if($r['arrchildid'] != $r['id'] ) : ?>
								<ul class='no-animates'>
									<?php $n=0;foreach($Categorys as $key=>$r2):if(1=="" && $r2['isfootermenu']==0){ continue; }if( $r2['ismenu']==1 && intval($r['id'])==$r2["parentid"] ) :++$n;?><li>
										<a href="<?php echo ($r2["url"]); ?>"><?php echo ($r2["catname"]); ?></a>
										</li><?php endif; endforeach;?>
								</ul>
								<?php endif;?>
								</li><?php endif; endforeach;?>
							
						</ul>
						<ul id="pc-nav" class="nav-hide">
							<li>
								<a class="top" href="<?php echo str_replace('//', '/', '/'.HOMEURL($l));?>"
								<?php if($_SERVER['REQUEST_URI'] == str_replace('//', '/', '/'.HOMEURL($l)) ) : ?>
								id="nav-li"
								<?php endif;?>
								><?php echo L('网站首页');?></a>
							</li>
							
							<?php $k=0;foreach($Categorys as $key=>$r):if(1=="" && $r['isfootermenu']==0){ continue; }if( $r['ismenu']==1 && intval(0)==$r["parentid"] ) :++$k;?><li>
								<a class="top <?php echo ($r["cssclass"]); ?>" href="<?php echo ($r["url"]); ?>"
								<?php if($r[id]==$catid) : ?>id="nav-li"<?php endif;?>
								<?php if($r[id]==$Categorys[$catid]['parentid']) : ?>id="nav-li"<?php endif;?>
								><?php echo ($r["catname"]); ?></a>
								<?php if($r['arrchildid'] != $r['id'] ) : ?>
								<ul class='no-animates'>
									<?php $n=0;foreach($Categorys as $key=>$r2):if(1=="" && $r2['isfootermenu']==0){ continue; }if( $r2['ismenu']==1 && intval($r['id'])==$r2["parentid"] ) :++$n;?><li>
										<a href="<?php echo ($r2["url"]); ?>"><?php echo ($r2["catname"]); ?></a>
										</li><?php endif; endforeach;?>
								</ul>
								<?php endif;?>
								</li><?php endif; endforeach;?>
							
						</ul>
					</div>
					
				</div>
			</div>
		</div>
		</div>
	</div>
	<div class="headerafter"></div>
	<div>
	
<div class="banner owl-carousel" id="banner-list">
	<?php  $_result=M('Slide_data')->where(" status=1 and  fid=1  and lang=3")->order(" listorder ASC ,id DESC ")->limit("5")->select();;if ($_result): $i=0;foreach($_result as $key=>$r):$i++;$mod = ($i % 2 );parse_str($r['data'],$r['param']);?>
	<div style='position: relative;'>
		<div class='carousel-left'></div>
		<div class='carousel-right'></div>
		<a href='<?php if(empty($r[link])) : ?>javascript:void(0)<?php else : echo ($r[link]); endif;?>'>
			<img src="<?php echo ($r['pic']); ?>" width="100%">
		</a>
	</div>
	<?php endforeach; endif;?>
</div>
<div class="container pan-product">
	<h3 class='title'><?php echo L('Product Center');?></h3>
	<h2 class='title'><?php echo L('产品中心');?></h2>
	<!--<div class="title-line"></div>-->
	<div class="row">
		<div class="summary-pro">
			<?php echo ($Categorys[$T[home_product_id]]['content']); ?>
		</div>
		<a href='<?php echo ($c["url"]); ?>' class="linkmore"><?php echo L('了解更多');?></a>
		<div class="col-sm-12 col-md-10 col-xs-12 col-lg-12 pro-tab nofloat clearb">
			<?php $index=1; ?>
				<div class="col-sm-4 col-md-4 col-xs-4 icons text-center pan-pro-head">
					<i class="icon0"></i>
					<a class="pro-tab-item" 
						href='/uav/' 
						title='无人机'>无人机</a>
						<span>unmanned aerial vehicle</span>
				</div>
				
				<div class="col-sm-4 col-md-4 col-xs-4 icons text-center pan-pro-head">
					<i class="icon1"></i>
					<a class="pro-tab-item" 
						href='/platform/' 
						title='平台系统'>平台系统</a>
						<span>platform system</span>
				</div>
				
				<div class="col-sm-4 col-md-4 col-xs-4 icons text-center pan-pro-head">
					<i class="icon2"></i>
					<a class="pro-tab-item" 
						href='/parts/' 
						title='部件配件'>部件配件</a>
						<span>Parts chassis</span>
				</div>
				<?php $index++; ?>
		</div>
		<div class="clearb"></div>
		<?php $index=0;foreach($Categorys as $key=>$c):if(1=="" && $c['isfootermenu']==0){ continue; }if( $c['ismenu']==1 && intval(3)==$c["parentid"] ) :++$index;?><div id='tcontent_<?php echo ($c["id"]); ?>' class="pro-tab-content col-sm-4 col-md-4 col-xs-12 ">
				<div class="row" style='margin-left:0;margin-right:0;'>
					
							<div class="pan-pro">
									<div class="padding-null has-mask">
										
										<div id="owl-example<?php echo ($c["id"]); ?>" class="owl-carousel">
		
											<?php  $_result=M("Product")->field("*")->where(" 1  and lang=3 AND status=1  AND catid in(" . $c[id] . ")")->order("id desc")->limit("4")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div>
											  	<a href='<?php echo ($r["url"]); ?>' >
													<img alt='<?php echo ($r["title"]); ?>' src='<?php echo (thumb2($r["thumb"],297,240,2)); ?>' />
												</a>
											  </div><?php endforeach; endif;?>
										   
										  
										</div>
										
									</div>
							</div>
							
							
				</div>
				
			</div><?php endif; endforeach;?>
	</div>
</div>
<div class="gray">
	<div class="container">
		<h3 class='title'><?php echo L('Solution');?></h3>
		<h2 class='title'><?php echo L('解决方案');?></h2>
		<div class="row">
			<div class="owl-carousel recommand-carousel" id="case-list">
				<?php  $_result=M("Solution")->field("*")->where(" 1  and lang=3 AND status=1   AND posid =11 AND  thumb !='' ")->order("id desc")->limit("16")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div class="overout-outer li">
						<a href='<?php echo ($r["url"]); ?>'  class="overout" 
							style='background-image: url(<?php echo (thumb2($r["thumb"],297,400)); ?>)'>
							<img alt='<?php echo ($r["title"]); ?>' src='<?php echo (thumb2($r["thumb"],297,400)); ?>' />
						</a>
						<div class="no-animates">
							<div class="pan-jiejuepic"></div><!-- 此处放图标-->
							<div class="pan-title"><?php echo ($r["title"]); ?></div>
							<div class="title-line"></div>
							
						</div>
					</div><?php endforeach; endif;?>
				
			</div>
		</div>
	</div>
</div>
<div class="gray-light">
	<div class="container">
		<h3 class='title'><?php echo L('News Center');?></h3>
		<h2 class='title'><?php echo L('新闻中心');?></h2>
		<div class="row">
			
			<?php  $_result=M("Article")->field("*")->where(" 1  and lang=3 AND status=1  AND  thumb !='' ")->order("id desc")->limit("3")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div class="col-sm-4 col-md-4 col-xs-12 marginB20">
				<a href='<?php echo ($r["url"]); ?>' >
					<img alt='<?php echo ($r["title"]); ?>' src='<?php echo ($r["pin_image"]); ?>' />
					
				</a>
				<dl class="news">
					
					<dt class='ddtitle clearfix'>
						<a class='new-title' href='<?php echo ($r["url"]); ?>' >
						 &nbsp;&nbsp;<?php echo ($r["title"]); ?>
						</a>
						<span class="news-time"><?php echo (todate($r["createtime"],'m')); ?>/<?php echo (todate($r["createtime"],'d')); ?></span>
					</dt>
					<dd><?php echo ($r["summary"]); ?></dd>
					<dd><?php echo ($r["summary"]); ?></dd>
				</dl>
			</div><?php endforeach; endif;?>
		</div>
	</div>
</div>

<div class="container">
	<h3 class='title'><?php echo L('Cooperative unit');?></h3>
	<h2 class='title'><?php echo L('合作伙伴');?></h2>
	<div class="row">
			<?php  $_result=M("Link")->field("*")->where(" status = 1  and lang=3 and typeid=3 and  linktype=2")->order("id desc")->limit("8")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div class="pan-brand">
					<a href="<?php echo ($r['siteurl']); ?>" target="_blank">
						<img src="<?php echo ($r['logo']); ?>" alt="<?php echo ($r['name']); ?>">
					</a>
					
				</div><?php endforeach; endif;?> 
	</div>
</div>


<script type="text/javascript" src="../Public/js/owl.carousel.js"></script>
<script>
	var length=$(".pan-brand").length;
	var list=Math.floor(length/4)
	var yu=length%4;
	var num=0;
	for(var i=1;i<list+2;i++){
		num=i*4-1;
	$(".pan-brand").eq(num).css("border-right","none");
	
	}
	var last=list*4+yu-1
	$(".pan-brand").eq(last).css("border-right","none")
</script>

<script type="text/javascript">
	var bannerList = $('#banner-list').owlCarousel({
		items: 1,
		loop: true,
		lazyLoad: true,
		slideBy:1,
		nav:true,
		navText:['',''],
		merge: true,
		video: true,
		autoplay: 5000,
		videoPlay:false,
		autoPlayHoverPause:true,
		responsive:{}
	});
	$('#banner-list .carousel-left').click(function(){
		bannerList.trigger('prev.owl', 500);
	});
	$('#banner-list .carousel-right').click(function(){
		bannerList.trigger('next.owl', 500);
	});
	var owlCase = $('#case-list').owlCarousel({
		items: 4,
		loop: true,
		lazyLoad: true,
		slideBy:4,
		nav:true,
		navText:['',''],
		merge: true,
		video: true,
		autoplay: false,
		videoPlay:false,
		autoPlayHoverPause:true,
		responsive:{120:{items:2}, 560:{items:3}, 992:{items:3}, 1200:{items:4}}
	});
	
	$('#changeGroup').click(function(){
		owlCase.trigger('next.owl', 1000);
	});

	var owlLink = $('#link-list').owlCarousel({
		items: 6,
		loop: true,
		lazyLoad: true,
		slideBy:6,
		nav:true,
		navText:['',''],
		merge: true,
		video: true,
		autoplay: false,
		videoPlay:false,
		autoPlayHoverPause:true,
		responsive:{560:{items:3}, 992:{items:6}, 1200:{items:6}}
	});
	setTimeout(function(){ owlLink.trigger('play.owl',3000);},6000);
	
	
	$('.jsq_block2 span').on('mouseover', function(){
		$('.jsq_block2 span').removeClass('hover');
		$(this).addClass('hover');
	});

	$('.pro-tab').on('click', '.pro-tab-item', function(){
		$('.pro-tab .pro-tab-item').removeClass('active');
		$('.pro-tab div.icons').removeClass('active');
		$('.pro-tab-content').hide();
		var target = $($(this).attr('href'));
		$(this).addClass('active');
		$(this).parent('div.icons').addClass('active');
		target.css({opacity:0}).addClass('active').show();
		setTimeout(function(){
			target.css({opacity:1});
		}, 10);
		
		return false;
	})
</script>
<script type="text/javascript">
	$('.owl-carousel').owlCarousel({
	items: 1,
	loop:true, // loop is true up to 1199px screen.
	slideBy:1,
//	nav:true, // is true across all sizes
	dots:true,
	dotsEach:true,
//	margin:10, // margin 10px till 960 breakpoint
	responsiveClass:true, // Optional helper class. Add 'owl-reponsive-' + 'breakpoint' class to main element.
	
	

});
</script>
<!--[if lt IE 10]>
<style>
	#banner-list .owl-next, #banner-list .owl-prev{
		display:block;
	}
</style>	
<![endif]-->
<style>
	@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {
		/* IE10+ CSS styles go here */
		#banner-list .owl-next, #banner-list .owl-prev{
			display:block;
		}
	}
</style>
	</div>
		<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-4 col-xs-12">
					<div class="foot-contact">
						<span class='foot-nav-title'><?php echo L('联系我们');?></span>
						<ul>
							<li><span class='icons address'></span><?php echo ($address); ?></li>
							<li><span class='icons phone'></span><?php echo ($phone); ?></li>
							<li><span class='icons email'></span><?php echo ($email); ?></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-12 col-md-5 col-xs-12">
					<?php $k=0;foreach($Categorys as $key=>$r):if(1=="1" && $r['isfootermenu']==0){ continue; }if( $r['ismenu']==1 && intval(0)==$r["parentid"] ) :++$k;?><div class='foot-nav col-sm-3 col-md-3 col-xs-3'>
							<span class='foot-nav-title'><?php echo ($r["catname"]); ?></span>
							<?php if($r['arrchildid'] != $r['id'] ) : ?>
							<ul>
							<?php $n=0;foreach($Categorys as $key=>$r2):if(1=="" && $r2['isfootermenu']==0){ continue; }if( $r2['ismenu']==1 && intval($r['id'])==$r2["parentid"] ) :++$n;?><li>
									<a href="<?php echo ($r2["url"]); ?>"><?php echo ($r2["catname"]); ?></a>
								</li><?php endif; endforeach;?>
							</ul>
							<?php endif;?>
						</div><?php endif; endforeach;?>
				</div>
				<div class="col-sm-12 col-md-3 col-xs-12">
					<script>
						function copytitle(){
							$('.feedback-form input[name=title]').val(
								$('.feedback-form textarea [name=content]').val()
							);
							return true;
						}
					</script>
					<form name="myform" action="<?php echo URL('User-Post/insert');?>" onsubmit="return copytitle()" method="post">
						<div class="feedback-form">
							<input type="hidden" name="moduleid" value="8" />
							<input type="hidden" name="lang" value="<?php echo ($langid); ?>" />
							<input type="hidden" name="email" value="" />
							<input type="hidden" name="title" value="" />
							
							<div><input name="username" placeholder="<?php echo L('姓名');?>" /></div>
							<div><input name="telephone" placeholder="<?php echo L('电话');?>" /></div>
							<div><textarea name='content' placeholder="<?php echo L('内容');?>"></textarea></div>
							<div><button type="submit" class="linkdetail"><?php echo L('提交');?></button></div>
						</div>
					</form>
				</div>
				
			</div>
			<div class="row friendlink">
				<b><?php echo L('友情链接');?>: </b>
				<?php  $_result=M("Link")->field("*")->where(" status = 1  and lang=3 and typeid=2 and  linktype=1")->order("id desc")->limit("10")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><a href="<?php echo ($r['siteurl']); ?>" target="_blank"><?php echo ($r['name']); ?></a><?php endforeach; endif;?>
			</div>
		</div>
		<div class="copyright">
			<div>
				<?php echo ($copyright); ?> &nbsp;&nbsp;
				<a href='http://www.miitbeian.gov.cn' target="_blank"><?php echo L('粤ICP备16081341号');?></a>&nbsp;&nbsp;
				<a href='http://mqu.cn' target="_blank">design by mqu.cn</a>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../Public/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../Public/js/all.js"></script>
	<a style='display:none;' href='http://mqu.cn' target="_blank">Design By Mqu.cn</a>
	<!-- JiaThis Button BEGIN -->
	<script type="text/javascript" >
	var jiathis_config={
		summary:"",
		shortUrl:false,
		hideMore:false
	}
	</script>
	<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
	<!-- JiaThis Button END -->


	
</div>
</body>
</html>