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

<div class='container contact'>

    <div class="contact-base">
      <div class="contact-box">
        <div class="barcode">
            <img src="<?php echo ($barcode); ?>" />
        </div>
        <div class='baseinfo'>
          <ul>
            <li class='sitename'><?php echo ($site_name); ?></li>
            <li class='siteenname'><?php echo ($en_title); ?></li>
            <li class="ellipsis"><span><?php echo L('电话');?>:</span><?php echo ($phone); ?></li>
            <li class="ellipsis"><span><?php echo L('邮箱');?>:</span><?php echo ($email); ?></li>
            <li><span><?php echo L('地址');?>:</span><?php echo ($address); ?></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="offices no-animates">
      <h2>各地办事处</h2><br/>
      <ul id="office-list">
        <?php  $_result=M("Office")->field("*")->where(" 1  and lang=3 AND status=1 ")->order("id desc")->limit("0")->select();; if ($_result): $i=0;foreach($_result as $key=>$r):++$i;$mod = ($i % 2 );?><li <?php if($key == 0) : ?>class='active'<?php endif;?>>
            <a class="icons"><span class="icons"><?php echo ($r["title"]); ?></span></a>
            <div>
              <i class="icons"></i>
              <p>地址：<?php echo ($r["address"]); ?></p>
              <p>联系人：<?php echo ($r["contact"]); ?></p>
              <p>联系电话：<?php echo ($r["phone"]); ?></p>
            </div>
        </li><?php endforeach; endif;?>
      </ul>
    </div>
<!--
    <div class="row">
      <div class="contact-form">
        <h2>在线留言</h2>
        <p>感谢您的咨询，若您对我们的产品有什么疑问或建议，请填写以下信息，我们将快速回复您。</p>
        <form name="myform" action="<?php echo URL('User-Post/insert');?>" method="post">
          <input type="hidden" id="catid" name="catid" value="{catid}" />
          <input type="hidden" name="moduleid" value="8" />
          <input type="hidden" name="lang" value="<?php echo ($langid); ?>" />

          <div class='col-sm-4 col-md-4 col-xs-12'>
            <input class='ico-contact' name="username" placeholder="<?php echo L('你的姓名');?>" >
          </div>

          <div class='col-sm-4 col-md-4 col-xs-12'>
            <input class='ico-email2' name="email" placeholder="<?php echo L('你的邮箱');?>" >
          </div>

          <div class='col-sm-4 col-md-4 col-xs-12'>
            <input class='ico-nickname' name="telephone" placeholder="<?php echo L('电话');?>" >
          </div>

          <div class='col-sm-12 col-md-12 col-xs-12'>
            <textarea class='ico-feedback' name='content' placeholder="<?php echo L('你要说的话');?>"></textarea>
          </div>
          <div class='col-sm-12 col-md-12 col-xs-12 center'>
            <button class=''><?php echo L('提交内容');?></button>
            <button class=''><?php echo L('重置');?></button>
          </div>
        </form>
      </div>
    </div>
-->
    <div class="map-wrapper">
      <div id="map"></div>
    </div>

    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4YouFDaVxy0OEFOwGBKPhmTt"></script>
    <script type="text/javascript">	
      $(function(){
        var map = new BMap.Map("map");
        var point = new BMap.Point(113.464858,23.174213);
        map.centerAndZoom(point, 19);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);               // 将标注添加到地图中
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        map.enableScrollWheelZoom(true);
        var opts = {
          position : point,    // 指定文本标注所在的地理位置
          offset   : new BMap.Size(-150, -70)    //设置文本偏移量
        }
        var label = new BMap.Label("广州开发区科学大道286号707室", opts);  // 创建文本标注对象
          label.setStyle({
            color : "#000000",
            fontSize : "14px",
            height : "20px",
            lineHeight : "20px",
            fontFamily:"微软雅黑",
            border:"none",
            background:"#fff",
            display: 'inline-table',
            width:"175px",
            padding:"10px",
            borderRadius:"15px",
            marginTop:"-10px",
            marginLeft:"40px",
            
          });
        map.addOverlay(label);
      });


      $('#office-list a.icons').on('click', function(){
        $('#office-list li').removeClass('active');
        $(this).parent().addClass('active');
      })
      </script>

</div>

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