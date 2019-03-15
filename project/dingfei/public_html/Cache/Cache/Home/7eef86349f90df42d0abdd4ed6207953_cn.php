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
		<div class="logo">
			<a href="<?php echo str_replace('//', '/', '/'.HOMEURL($l));?>"><img src='<?php echo ($logo); ?>' /></a>
		</div>
		<div class="relative">
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
				<div class='search-lang'>
					<div class='search-box relative'>
						<form name="myform" action="/" method="GET">
							<input type="hidden" name="module" value="Product"/>
							<input type="hidden" name="m" value="Search"/>
							<?php if(APP_LANG) : ?><input type="hidden" name="l" value="<?php echo ($l); ?>" /><?php endif;?>
							<input value='<?php echo ($keyword); ?>' class="search-input" type="text" name="keyword" id="keyword" />
							<button type="submit"></button>
						</form>
					</div>
					<div class="lang relative">
						<span class="icons">Language</span>
						<ul>
							<?php if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><li>
								<a <?php if($r['id'] == $langid ) : ?> class="active" <?php endif;?>href="<?php echo str_replace('//', '/', '/'.HOMEURL($r[mark]));?>" style="background:none">
									<?php echo ($r["name"]); ?>
								</a>
							</li><?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
					</div>

					<div class="sharebox relative">
						<span class="icons share"></span>
						<ul class="jiathis_style">
							<li><a class="jiathis_button_fb"></a></li>
							<li><a class="jiathis_button_twitter"></a></li>
							<li><a class="jiathis_button_linkedin"></a></li>
							<li><a class="jiathis_button_weixin"></a></li>
							<li><a class="jiathis_button_tsina"></a></li>
							<li><a class="jiathis_button_cqq"></a></li>
						</ul>
						
					</div>
				</div>
			</div>
		</div>
	</div>
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

<div class='container product-list'>

    <div class="row plist">
    <ul class="products">
    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><li class='col-sm-4 col-md-4 col-xs-12'>
            <div>
                <!--362,290-->
                <a href='<?php echo ($r["url"]); ?>'  
                   class="overout not-margin" style='background-image: url(<?php echo (thumb2($r["thumb"],297,240,2)); ?>)'>
                    <img src="<?php echo (thumb2($r["thumb"],297,240,2)); ?>" width="100%" />
                </a>
                <a href='<?php echo ($r["url"]); ?>' >
                    <span>
                        <h3><?php echo ($r["title"]); ?></h3>
                        <p><?php echo ($r["summary"]); ?></p>
                        <strong><?php echo L('查看详情&gt;&gt;');?></strong>
                    </span>
                </a>
            </div>
        </li><?php endforeach; endif; else: echo "" ;endif; ?>
    </ul>
    </div>

    <div class="row pagination-center">
        <ul class="pagination">
        <?php echo ($pages); ?>
        </ul>
    </div>
    
</div>

<script type="text/javascript" src="../Public/js/owl.carousel.js"></script>
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
</script>


<!--
    
<form method="GET" action="index.php?">
    <input type="hidden" id=""  name="m" value="Search"/><?php if( APP_LANG) : ?><input type="hidden" name="l" value="<?php echo LANG_NAME;?>" /><?php endif;?>
    <input type="text" name="keyword" id="" class="input-text" value="<?php echo ($keyword); ?>" />
    <?php echo Form::select(array('field'=>'module','options'=>$search_module),$module);?>
    <input type="submit" class="sea-button" value="<?php echo L(SEARCH);?>" />
</form>

-->
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