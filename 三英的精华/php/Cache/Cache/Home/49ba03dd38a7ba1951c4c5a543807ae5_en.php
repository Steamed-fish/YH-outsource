<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>



	<meta charset="utf-8">
		<!--[if lt IE 9]>
<script>
document.createElement('header');
document.createElement('nav');
document.createElement('section');
document.createElement('article');
document.createElement('figure');
document.createElement('aside');
document.createElement('footer');
document.createElement('hgroup');
</script>
<![endif]-->	
    <meta name="renderer" content="webkit"><!--360 极速模式-->
    
	<meta name="description" content="deugro - project freight forwarding. it takes the best minds to make the right moves." />
    <meta name="keywords" content="deugro, project freight forwarding, direct inquiry" />
    <meta name="robots" content="index, follow" />
    
    <meta name="viewport" content="width=device-width, maximum-scale=1.0" />

<link rel="shortcut icon" href="../Public/images/icon.ico" />

    <meta name="viewport" content="width=device-width, maximum-scale=1.0" />
                
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/bootstrap.css"  />
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/boot_libs.css"  />
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/glyphicon.min.css"  />
    
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/bannerscollection_zoominout.css"  />
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/jquery-ui-1.9.0.custom.min.css"  />
    <link rel="stylesheet" href="../Public/css/tahoma.ttf" />
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/main.css"  />
    <link rel="stylesheet" media="screen" type="text/css" href="../Public/css/print.css"  />
    <script type="text/javascript" src="../Public/js/jquery-1.10.1.min.js" ></script>
    <script type="text/javascript" src="../Public/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="../Public/js/scrollspy.min.js" ></script>
    <script type="text/javascript" src="../Public/js/jquery-ui.min.js" ></script>
    <script type="text/javascript" src="../Public/js/jquery.ui.touch-punch.min.js" ></script>
    <script type="text/javascript" src="../Public/js/bannerscollection_zoominout.js" ></script>
    <script type="text/javascript" src="../Public/js/jquery.fancybox.pack.js" ></script>


</head>

<body>
<!-- header -->
    <header>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	
	<div class="nav_wrapper">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="navbar-inner">
				<div class="container">
					<a href="/" >
						<img src="<?php echo ($logo); ?>" width="150"  alt="logo" class="header_logo" />
					</a>
				</div>
			</div>
		</div>
		
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						
        <ul class="nav navbar-nav">
        	<?php $k=0;foreach($Categorys as $key=>$r):if( $r['ismenu']==1 && intval(0)==$r["parentid"] ) :++$k;?><li><a href="<?php echo ($r["url"]); ?>" ><?php echo ($r["catname"]); ?></a></li><?php endif; endforeach;?>
        </ul>
        </div>
        <!-- /.navbar-collapse -->
			<a href="http://dev.kinnit.com:24180/App/CargoTracking" class="search search_bar_box" target="_blank">TRACKING</a>
			
	</div>
</nav>

<script>
	$(document).ready(function() {
		$('.navbar-toggle').on('click', function(){
			$('.navbar-default .navbar-toggle').toggleClass('active');
		});
		
	});
</script>		
</header>

<!-- 导航  end --> 
    

</body>




		
<div id="freight">
<main>
  <ul class="maincontent">
    <li id="subnav1" data-title="freight" style="background: #f5f7f8 url(../Public/images/freight_bg.jpg) no-repeat center center;">
      <div class="page_headline_block">
        <h3 class="">Freight price query</h3>
        <div  class="text ">
        	Please provide information about your freight, including the departure, destination and cargo Date. Used to indicate the icon for the column must be filled“*”
        </p>
          
        </div>
        <a href="#learn_more" class="btn_learn_more">learn more</a> 
      </div>
    </li>
		<!--2-->
   	<li id="subnav2" data-title="freight" style="background: #ffffff ">
   		  <div class="freight">
  	
					<form class="sider_form" action="<?php echo URL('User-Post/insert');?>" method="post">
					
				<input type="hidden"  name="catid" value="<?php echo ($catid); ?>" />
				<input type="hidden" id="moduleid" name="moduleid" value="15" />
				<input type="hidden" id="lang" name="lang" value="<?php echo ($langid); ?>" />
			  <input type="hidden" id="title" name="title" value="" />
			   
			   <div id="freight1">
			   	<div class="fre_t">1. Select the freight service</div>
			   	<div class="fre_b">* You need what kind of goods moving services</div>
			   	<ul>
			   		<li><input type="radio" name="way" id="" value="Ari transport" />Ari transport</li>
			   		<li><input type="radio" name="way" id="" value="LCL shipments" />Shipping (LCL shipments)</li>
			   		<li><input type="radio" name="way" id="" value="FCL shipments" />Shipping (FCL shipments)</li>
			   		<li><input type="radio" name="way" id="" value="Express" />Express</li>
			   	</ul>
			   	
			   	<div class="fre_t">2.Place and time</div>
			   	<div class="fre_b">From the bottom:</div>
					<div class="frelist">
						<p>* Country or region：</p>
						<select name="guojia" id="select_id">
							<?php $qqlist=M('quanqiu')->select();?> 
							<?php if(is_array($qqlist)): $i = 0; $__LIST__ = $qqlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><option selected="selected"><?php echo ($r["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>					
					</div>
					<div class="frelist">
						<p>* City</p>
						<input type="text" name="city" id="" value="" />
					</div>
					<div class="frelist">
						<p>When do you want to shipped</p>
						
						<input class="time" name="time" value="">
					</div>
					<div class="fre_t">3. The goods weight</div>
			   	<div class="frelist" style="padding-top: 20px;">
						<p>Weight</p>
						<input type="text" name="weight" id="" value="" />
					</div>
					<div class="fre_t">4. Fill in your information</div>
					<ul class="form">
						<li><p>* Name</p><input type="text" name="name" id="" value="" /></li>
						<li><p>* Telephone</p><input type="text" name="dianhua" id="" value="" /></li>
						<li><p>* Email</p><input type="text" name="email" id="" value="" /></li>
					</ul>
						
					<div class="t-sub">
			        <button type="submit" class="sub-btn">Submit</button>
			    </div>
				</form>
  
  	
  </div>

		</li>
  </ul>

</main>




</div>




 
<script type="text/javascript">
	function resetVerifyCode(){
	var timenow = new Date().getTime();
	document.getElementById('verifyImage').src='./index.php?g=Home&m=Index&a=verify#'+timenow;
}
</script>
<footer>
	<div class="foot_t">
		<ul class="servier_b">
			<li class="servier_bt">Service project</li>
			<?php $servier_list=M('picture')->select();?>
			<?php if(is_array($servier_list)): $i = 0; $__LIST__ = $servier_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><li><a href="/contact/"><?php echo ($r["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
		<div class="foot_r">
			<div class="foot_rt">Online message</div>
			<form class="sider_form" action="<?php echo URL('User-Post/insert');?>" method="post">
		
				<input type="hidden"  name="catid" value="<?php echo ($catid); ?>" />
				<input type="hidden" id="moduleid" name="moduleid" value="8" />
				<input type="hidden" id="lang" name="lang" value="<?php echo ($langid); ?>" />
			    <input type="hidden" id="title" name="title" value="" />
			    
			
			    <div class=" col-sm-6  mgb10"><input placeholder="NAME"  name="username" class="c-input" type="text"></div>
			    <div class=" col-sm-6  mgb10"><input placeholder="EMAIL" name="email" class="c-input" type="text"></div>
			    <div class="col-sm-12">
			        <textarea name="content" class="c-textarea lh22" placeholder="LEAVE A MESSAGE"></textarea>
			    </div>
			    <div class="t-sub">
			        <button type="submit" class="sub-btn"></button>
			    </div>
			    
			</form>
		</div>
		
		<div class="clear"></div>
	</div>

<div class="foot_b">
	Copyright &copy; 2006-2016Shanghai Yanchen Jewelry Co.  | Designed by <a href="http://mqu.cn/" target="_blank">Mqu.cn</a>
</div>		
</footer>
	<figure class="scrollbox navbar-example">
		<ul class="nav nav-custom">
		</ul>
	</figure>
<script>
		$(document).ready(function() {
			// Pick ids from scope (.maincontent)
			var i = 0;
			$('.maincontent > li').each(function() {
				var _this = $(this);  
				var thisID = _this.attr('id');
				var thisDT = _this.attr('data-title');
				
				if (i) {
					if(thisDT == 'Destination Filter'){
						thisID = 'destination_filter';
					}
					
					if(!_this.hasClass('stageimage')){
						if(thisDT.match(/\//g)){
							thisDT = thisDT.replace('\/', '\/<br>');
							$('.nav-custom').append('<li><a href="#' + thisID + '" data-id="' + thisID + '" class="double-height">' + thisDT + '</a></li>');
						}else{
							$('.nav-custom').append('<li><a href="#' + thisID + '" data-id="' + thisID + '">' + thisDT + '</a></li>');
						}
					}
				} else {
						$('.nav-custom').append('<li><span>' + thisDT + '</span><a href="#' + thisID + '" data-id="' + thisID + '"></a></li>');
				}
				i++;
			});
			
			$('.nav-custom li').on('mouseenter', function() {
				$(this).children('a').fadeIn(300).css('display','block');
			}).on('mouseleave', function() {
				$(this).children('a').fadeOut(300);
			}).on('click', function(event) {
				event.preventDefault();
				
				var dataId = $(this).children('a').attr('data-id');
				var newPosi = $('#' + dataId).offset().top;
				var abstand = $('.navbar').outerHeight();
				
				$('html,body').animate({scrollTop: newPosi - abstand}, 800);
			});
			
			$('body').scrollspy({target: '.navbar-example', offset: 120});
			var offset = ($('body').find('.maincontent').hasClass('start'))? 0: 120;
			if(offset == 0){
				$('figure .nav-custom li').removeClass('active');
				$('figure .nav-custom li:first-child').addClass('active');
			}
		});
	</script>
<script>
			//Learn more
			$().ready(function() {
				$('.btn_learn_more').on('click', function() {
					//event.preventDefault();
					var knot = $('#subnav2');
					
					if (knot.css('display') == 'none'){
						knot = $('#subnav3');
					}else if(knot == 'undefined'){
						knot = $('.content_list');
					}
					
					var abstand = $('.navbar').outerHeight();
					var learnMore = knot.offset().top;
					
					$('html,body').animate({scrollTop: learnMore-abstand}, 800);
				});
													
					//IE9 Hotfix: Button-Position
					(function(){
						var uAgent = navigator.userAgent;
						if(uAgent.match(/MSIE 9.0/g) || uAgent.match(/MSIE 8.0/g)){
							//console.log('MSIE 9');
							$('.bannerscollection_zoominout_texts .textElement_opportune').css({
								'left': '256px',
								 'top': '502px',
								 'position': 'relative'
								});
						}
					})();
				
				var a = $(window).width();
				var b = $(window).height();
				var dil = $('.textElement_opportune').attr('data-initial-left');
				var dit = $('.textElement_opportune').attr('data-initial-top');
				var dfl = $('.textElement_opportune').attr('data-final-left');
				var dft = $('.textElement_opportune').attr('data-final-top');
				
				if (a > 768 && a < 1200) {
					console.log('Init forced resize');
					slider_resize(a, b);
				}
				
				var resizeTimer;
				$( window ).resize(function(e) {
					clearTimeout(resizeTimer);
					resizeTimer = setTimeout(function() {
						// Run code here, resizing has "stopped"
						var a = $(window).width();
						var b = $(window).height();
						//console.log('Breite: ' + a + ' Höhe: ' + b);
						
						if (a > 768 && a < 1200) {
							slider_resize(a, b);
							console.log('resized.');
						}else{
							console.log('Init reset.')
							$('.textElement_opportune').attr('data-initial-left', dil);
							$('.textElement_opportune').attr('data-initial-top', dit);
							$('.textElement_opportune').attr('data-final-left', dfl);
							$('.textElement_opportune').attr('data-final-top', dft);
							slider_resize(a, b);
						}
					}, 250);
				});
				
				function slider_resize(screen_width, screen_height){
					//Set resized value of slider
					if (screen_width > 768 && screen_width < 839) {
						console.log('#1a');
						f = 146;
						n = 2024;
					} else if (screen_width > 838 && screen_width < 919) {
						console.log('#1b');
						f = 216;
						n = 1906;
					} else if (screen_width > 918 && screen_width < 1200) {
						console.log('#2');
						//f = 246;
						//n = 1400;
						
						f = 286;
						n = 1200;
					} else {
						f = dfl;
						n = dft;
					}
					$('.textElement_opportune').attr('data-initial-left', 0);
					$('.textElement_opportune').attr('data-initial-top', n);
					$('.textElement_opportune').attr('data-final-left', f);
					$('.textElement_opportune').attr('data-final-top', n);
				}
				
				//stageslider
				var screen_width = $(window).width();
				var screen_height = $(window).height();
				$('#bannerscollection_zoominout_opportune').bannerscollection_zoominout({
					skin: 'opportune',
					 responsive: true,
					 responsiveRelativeToBrowser: true,
					 width: 2500,
					 height: 1359,
					 width100Proc: true,
					 height100Proc: true,
					 autoPlay: 5,
					 loop: true,
					 //width: (screen_width - 40),
					 //height: (screen_height - (112 - 54)),
					 circleRadius: 8,
					 circleLineWidth: 4,
					 circleColor: "#ffffff", //849ef3
					 circleAlpha: 50,
					 behindCircleColor: "#000000",
					 behindCircleAlpha: 20,
					 fadeSlides: false,
					 thumbsWrapperMarginTop: 20,
					 showNavArrows: false,
					 showPreviewThumbs: false,
					 enableTouchScreen: false
					});
						var availableTags = ["deugro","oil","the","difference","solutions","freight","freight forwarding","team","Thomas C. Press","Solutions","Cases","Local Team","office","Case Study","countries","employees","contact","logistics","projects","mission","about deugro","compliance","QHSES","Innovation","R & D","Equipment","TED","Chartering","DMP","Global Key Account Management","family","History","Minds over matter","HR Development","Career","CoC","ACCP","Foreign Corrupt Practices Act","UK Bribery Act 201","Enterprise Resource Planning","ERP-System","Sustainability","Certificates","Haulage Equipment","transport","location","Transport Engineering Department","Engineering","vessel","Goldhofer","shipping","risk management","network","breakbulk","heavy lift","bulk cargo","ro-ro carriers","vessel tracking systems","Vessel directories","GKAM","customers","service","deugro’s Most Promising","experience","professionals","trainee","expertise","skills","human resources","general cargo services","air freight","customs clearance","inland transportation","warehousing","specialists","partners","turnkey solutions","ocean freight services","ocean & inland waterways","portfolio","day-to-day routine","Full Container Loads (FCL)","automotive logistics","delivery","vessel chartering","insurance","documentation","restrictions","port","hinterland transport","remote","jetty","infrastructure","rules","economy service","deugro Economy","deugro Speed","door-to-door","transit","deugro Premium","Speed service","Premium service","aircraft chartering","on-board courier","air freight","hand-carry solutions","commodity handling","freight pricing","pricing","IATA","Project freight forwarding","planning","budgetary","Renewables","Petrochemical","transport solutions","packaging","distribution","expediting solutions","suppliers","investors","contractors","petrochemical","gas","supply chain","IT solutions","interface","Purchase order","vendor management","track and trace","Tax/duty","report","KPIs","4PL","LLP","control","technologies","data access","data protection","market","special services","special solutions","destination","POSH Semco","offshore","tug","barge","collaboration","Offshore transport","execution","Project Consulting","knowledge","Juste Alisauskaite","Simon Wasum","Klaus Strahmann","News","Imprint","Sitemap","General Terms & Conditions","Privacy","Contact","region","area","city","fertilizer","Tatarstan","Russian Federation","Antwerp","Mendeleevsk","submerged turret production (STP)","MAERSK FPSO Peregrino","Singapore","Brazil","Australia","wind turbines","Mooring","Gullen Range Wind Farm","China","PNG LNG Project","Papua New Guinea","joint ventures","purchase","Jobs","business","large-scale projects","conditions","apply","staff","quality","growth","development",""];
	$('.form-control').autocomplete({
		source: availableTags,
		minLength: 3,
	open : function(){
		$(this).autocomplete('widget').css('z-index', 100);
		return false;
	}
	});
			});
		</script>