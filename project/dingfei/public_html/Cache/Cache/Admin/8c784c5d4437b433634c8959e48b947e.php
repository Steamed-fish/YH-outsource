<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo C('DEFAULT_CHARSET');?>" />
<title><?php echo L('welcome');?></title>
<link rel="stylesheet" type="text/css" href="__ROOT__/Public/Css/style.css" /> 
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.min.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.artDialog.js?skin=default"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/iframeTools.js"></script>
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.form.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.validate.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/MyDate/WdatePicker.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/jquery.colorpicker.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/my.js"></script> 
<script type="text/javascript" src="__ROOT__/Public/Js/swfupload.js"></script> 

<script language="JavaScript">
<!--
var ROOT =	 '__ROOT__';
var URL = '__URL__';
var APP	 =	 '__APP__';
var PUBLIC = '__PUBLIC__';
function confirm_delete(url){
	art.dialog.confirm("<?php echo L('real_delete');?>", function(){location.href = url;});
}
//-->
</script>
</head>
<body width="100%">
<div id="loader" ><?php echo L('load_page');?></div>
<div id="result" class="result none"></div>
<div class="mainbox">

<?php if(empty($_GET['isajax'])): ?><div id="nav" class="mainnav_title">

	<div id="lang">
	<?php if(APP_LANG): parse_str($_SERVER['QUERY_STRING'],$urlarr); unset($urlarr[l]); $url='index.php?'.http_build_query($urlarr); ?>
		<?php if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$langvo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($url); ?>&l=<?php echo ($langvo["mark"]); ?>" <?php if($langvo[mark]==$_SESSION['YP_lang']): ?>class="on"<?php endif; ?>><?php echo ($langvo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; endif; ?>
	</div>
	<ul><a href="<?php echo U($nav[bnav][model].'/'.$nav[bnav][action],$nav[bnav][data]);?>"><?php echo ($nav["bnav"]["name"]); ?></a>|
	<?php if(is_array($nav["nav"])): $i = 0; $__LIST__ = $nav["nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vonav): $mod = ($i % 2 );++$i; if($vonav[data][isajax]): ?><a href="javascript:void(0);" onclick="openwin('<?php echo ($vonav[action]); ?>','<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>','<?php echo ($vonav["name"]); ?>',600,440)"><?php echo ($vonav["name"]); ?></a>|
	<?php else: ?>
	<a href="<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>"><?php echo ($vonav["name"]); ?></a>|<?php endif; endforeach; endif; else: echo "" ;endif; ?></ul>
	</div>
	<script>
	//|str_replace=__ROOT__.'/index.php','',###
	var onurl ='<?php echo ($_SERVER["REQUEST_URI"]); ?>';
	jQuery(document).ready(function(){
		$('#nav ul a ').each(function(i){
		if($('#nav ul a').length>1){
			var thisurl= $(this).attr('href');
			thisurl = thisurl.replace('&menuid=<?php echo cookie("menuid");?>','');
			if(onurl.indexOf(thisurl) == 0 ) $(this).addClass('on').siblings().removeClass('on');
		}else{
			$('#nav ul').hide();
		}
		});
		if($('#nav ul a ').hasClass('on')==false){
		$('#nav ul a ').eq(0).addClass('on');
		}
	});
	</script><?php endif; ?>


<style>
.table-list ul.pic { }
.table-list ul.pic li {float:left;position:relative;margin:5px 10px;_margin:5px 8px;width:82px;}
.table-list ul.pic li span { width:82px;height:82px;}
.table-list ul.pic li span a {border:1px solid #eee;width:80px;height:80px;*font-size: 75px;}
.table-list ul.pic li img  {max-height:80px;max-width:80px ;_width:80px;_height:80px;}
.table-list ul.pic li  b {display:block;line-height:20px;height:20px;font-weight:normal;width:82px;overflow:hidden;}
.table-list ul.pic li  em {position:absolute;right:0;bottom:20px;}

</style>
<div class="table-list">

<ul class="pic">
<?php if($leve): ?><li><span><a href="<?php echo U($module_name.'/images?folder='); echo ($uppath); ?>"><img src="./Public/Images/upback.gif"></a></span><b><font color="#665aff"><?php echo L(goback);?></font></b></li><?php endif; ?>
<?php if(is_array($folders)): $i = 0; $__LIST__ = $folders;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><span><a href="<?php echo U($module_name.'/images?folder='.$_GET['folder']); echo ($vo["filename"]); ?>/"><img src="./Public/Images/folder.gif"></a></span><b><?php echo ($vo["filename"]); ?></b><em><a href="javascript:confirm_delete('<?php echo U($module_name.'/images?delete=1&folder='.$_GET['folder'].'&filename='.$vo[filename]);?>')"><?php echo L(delete);?></a></em></li><?php endforeach; endif; else: echo "" ;endif; ?>

<?php if(is_array($files)): $i = 0; $__LIST__ = $files;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><span><a href="../Public/images/<?php echo ($_GET['folder']); echo ($vo["filename"]); ?>" target="_blank"><?php if(!empty($vo['ico'])): ?><img src="./Public/Images/ext/<?php echo ($vo['ext']); ?>.png"><?php else: ?><img src="<?php echo ($Public); ?>images/<?php echo ($_GET['folder']); echo ($vo["filename"]); ?>" ><?php endif; ?></a></span><b><?php echo ($vo["filename"]); ?></b><em><a href="javascript:confirm_delete('<?php echo U($module_name.'/images?delete=1&folder='.$_GET['folder'].'&filename='.$vo[filename]);?>')"><?php echo L(delete);?></a></em></li><?php endforeach; endif; else: echo "" ;endif; ?>
</ul>
</div>
</body>
</html>