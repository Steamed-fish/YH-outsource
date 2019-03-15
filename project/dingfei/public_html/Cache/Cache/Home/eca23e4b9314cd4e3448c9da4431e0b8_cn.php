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
	<!--
<div class="container class">
	<div class="row catpos">
      <?php echo L('你的位置：');?> <a  href="<?php if(C('DEFAULT_LANG') == $l ) : ?>/<?php else :?>/?l=<?php echo ($l); endif;?>"><?php echo L('首页');?></a></a> &gt; <?php  $arrparentid = array_filter(explode(',', $Categorys[$catid]['arrparentid'].','.$catid));$icnt = 0;foreach($arrparentid as $cid):$parsestr[] = '<a '.(count($arrparentid)==(++$icnt)?'class="last"':"").'" href="'.$Categorys[$cid]['url'].'">'.$Categorys[$cid]['catname'].'</a>'; endforeach;echo implode(" &gt; ",$parsestr);?>
	</div>
</div>

-->
<img src="<?php echo ($image); ?>"/>



<div class="sub-cate">
  <div class="container">
    <div class="row">
        
	  <?php $ccatid = $catid; ?>
	  <?php if(($Categorys[$catid]&&$Categorys[$catid]['arrchildid']==$catid)) : ?>
	  <?php $ccatid = $Categorys[$catid]['parentid']; ?>
	  <?php endif;?>

	  <!--<div class='page-title'>
            <h2><?php echo ($Categorys[$ccatid]['catname']); ?></h2>
        </div>-->
				
        <div>
          <?php $n=0;foreach($Categorys as $key=>$rd):if(1=="" && $rd['isfootermenu']==0){ continue; }if( $rd['ismenu']==1 && intval($ccatid)==$rd["parentid"] ) :++$n;?><div class='no-animates cat-item <?php if($catid==$rd[id]) : ?>hover<?php endif;?> '>
              <a href="<?php echo ($rd["url"]); ?>" class='sub-name'><?php echo ($rd["catname"]); ?></a>
              <span class='sub-pot icons'></span>
            </div><?php endif; endforeach;?>
          <div class="floatR padd-T-20 <?php echo ($module); ?>">
            <?php if($content) : ?><a class="shang" href="<?php echo ($Categorys[$catid]['url']); ?>"><?php echo L('返回列表');?></a><?php else : endif;?>
          </div>
        </div>
        
       
      </div>
  </div>
</div>

<link href="../Public/css/accordion.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Public/js/accordion.js"></script>

<div class="container pagedetail">
  <div class='row'>
    <div class="content page-about noborder">

      <div class="section1">
          <div class="about-title">
            <h2><span>公司</span>介绍</h2>
            <h3>COMPANY INTRODUCTION</h3>
            <i></i>
          </div>
          <p>鼎飞航空是一家全球领先的无人机产品与解决方案提供商，是集自主研发、生产、销售、培训及服务于一体的现代化高科技企业。 </p>
          <p>自成立以来，鼎飞航空以“科技引领未来，创新驱动发展”作为企业使命，汇聚业内实力最强的研发精英队伍，自主研发了多款载重大、航时长、强度高与自重轻的无人机产品，达到了世界级领先水平，在军事、公安、消防、林业、海洋、测绘、交通等多个专业领域都得到了广泛应用。 </p>
          <p>截至2016年7月，鼎飞航空在国内已建立了超过25个技术服务中心，拥有一支在公共安全领域运营十多年的技术服务团队，凭借快速灵活的需求定制能力、持续创新的自主研发能力、随时响应的服务能力，已经赢得越来越多客户的信赖与合作。 </p>
          <p>未来，鼎飞航空将以“公共安全领域无人机系统解决方案第一品牌”为愿景，继续致力于全球智能无人机技术的发展，立志成为最具全球竞争力的国际型企业。</p>
      </div>
      <div class="section2">
          <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-3">
              <div class="sbox">
                  <img src="../Public/images/i1.png" />
                  <b>定位</b>
                  <span>公安行业警用无人机<br/>系统解决方案专家</span>
              </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-3">
              <div class="sbox">
                <img src="../Public/images/i2.png" />
                <b>愿景</b>
                <span>公共安全领域无人机<br/>系统解决方案第一品牌</span>
              </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-3">
              <div class="sbox">
                <img src="../Public/images/i3.png" />
                <b>使命</b>
                <span>科技引领未来<br/>创新驱动发展</span>
              </div>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-3">
              <div class="sbox">
                <img src="../Public/images/i4.png" />
                <b>梦想</b>
                <span>最具全球竞争力的<br/>国际型企业</span>
              </div>
            </div>
          </div>
      </div>

      <div class="about-title">
        <h2><span>优势</span>介绍</h2>
        <h3>ADVANTAGE INTRODUCTION</h3>
        <i></i>
      </div>

      <div class="i_zgs">
        <div class="izgsc dib_fz">
          <div class="i_zgs_li " style="background:url(../Public/images/t1.jpg) top center no-repeat;">
            <div class='i_zgs_title'>
              <h2>技术优势</h2>
              <h3>世界前沿研发技术</h3>
              <i class="hline"></i>
            </div>
            <div class="i_zgs_content">
              <!--<h2><?php echo L('技术优势');?></h2>
              <h3>世界前沿研发技术</h3>-->
              <p>
                在公共安全领域应用方面，鼎飞航空拥有飞行控制、通信指挥、集群作战、精密机械与控制、机器视觉、动力系统控制与纯碳纤维机身等核心技术，达到了国际先进技术水平。
              </p>
            </div>
          </div>
          <div class="i_zgs_li" style="background:url(../Public/images/t2.jpg) top center no-repeat;">
            <div class='i_zgs_title'>
              <h2>专业优势</h2>
              <h3>16年深耕公共安全领域</h3>
              <i class="hline"></i>
            </div>
            <div class="i_zgs_content">
              <!--<h2><?php echo L('技术优势');?></h2>
              <h3>世界前沿研发技术</h3>-->
              <p>
                鼎飞航空拥有一支在公共安全领域运营十多年的技术服务团队，包括无人机研发资深工程师、高科技材料研发工程师、装配技术工程师和专业无人机飞行员等，深度挖掘客户需求，提供行业解决方案，并为客户提供专业的无人机销售、租赁与培训服务。
              </p>
            </div>
          </div>
          <div class="i_zgs_li js_wzgs mr0" style="background:url(../Public/images/t3.jpg) top center no-repeat;">
            <div class='i_zgs_title'>
              <h2>服务优势</h2>
              <h3>全方位技术服务</h3>
              <i class="hline"></i>
            </div>
            <div class="i_zgs_content">
              <!--<h2><?php echo L('技术优势');?></h2>
              <h3>世界前沿研发技术</h3>-->
              <p>
                我们在全国建立了超过25个技术服务中心，提供包括各类前期的技术咨询、方案设计、设备供货、方案建设和实操应用等服务，致力于为各个行业领域客户提供专业可靠的业务支持。
              </p>
            </div>
          </div>
        </div>  
      </div>
      
      <div class="about-title">
        <h2>公司<span>文化</span></h2>
        <h3>COMPANY CULTURE</h3>
        <i></i>
      </div>

      <div class="row margin-T-30" id='tuandui'>
          <div>
            <?php  $_result=M("Picture")->field("*")->where(" 1  and lang=3 AND status=1  AND catid=154 AND  thumb !='' ")->order("listorder asc, id desc")->limit("8")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><div class="col-xs-6 col-sm-3 col-md-3 margin-T-10">
                  <img alt='<?php echo ($r["title"]); ?>' src='<?php echo (thumb2($r["thumb"],400,400,2)); ?>' />
              </div><?php endforeach; endif;?>
          </div>
          <div>
            <?php  $_result=M("Picture")->field("*")->where(" 1  and lang=3 AND status=1  AND catid=154 AND  thumb !='' ")->order("listorder asc, id desc")->limit("16")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 ); if($key > 7) : ?>
              <div class="col-xs-6 col-sm-3 col-md-3 margin-T-10">
                  <img alt='<?php echo ($r["title"]); ?>' src='<?php echo (thumb2($r["thumb"],400,400,2)); ?>' />
              </div>
              <?php endif; endforeach; endif;?>
          </div>
          <div>
            <?php  $_result=M("Picture")->field("*")->where(" 1  and lang=3 AND status=1  AND catid=154 AND  thumb !='' ")->order("listorder asc, id desc")->limit("24")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 ); if($key > 15) : ?>
              <div class="col-xs-6 col-sm-3 col-md-3 margin-T-10">
                  <img alt='<?php echo ($r["title"]); ?>' src='<?php echo (thumb2($r["thumb"],400,400,2)); ?>' />
              </div>
              <?php endif; endforeach; endif;?>
          </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="../Public/js/owl.carousel.js"></script>
<script type="text/javascript">
	var owlCase = $('#tuandui').owlCarousel({
		items: 1,
		loop: true,
		lazyLoad: true,
		slideBy:1,
		nav:true,
		navText:['',''],
		merge: true,
		video: true,
		autoplay: true,
		videoPlay:false,
		autoPlayHoverPause:true,
		//responsive:{120:{items:2}, 560:{items:2}, 992:{items:3}, 1200:{items:4}}
	});
</script>
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