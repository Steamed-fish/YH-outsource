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


<form name="myform" id="myform" action="<?php echo U($module_name.'/'.$action_name);?>" method="post">
<table cellpadding=0 cellspacing=0 id="param" class="table_form" width="100%"> 

	<tr>
		  <td width="120"><?php echo L(param_name);?></td>
		  <td ><?php echo L(param_value);?></td>
	</tr>
	<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr class="asf">
		  <td width="120"><?php echo ($key); ?></td>
		  <td class="da"><input type="text" id="<?php echo ($key); ?>" name="<?php echo ($key); ?>" value="<?php echo (htmlspecialchars($vo)); ?>" class="input-text" /><a href="javascript:void(0);" onclick="deletethis(this);"><?php echo L(delete);?></a></td>
	</tr><?php endforeach; endif; else: echo "" ;endif; ?>

 
</table>
<div id="bootline"></div>
<div id="btnbox" class="btn">
<INPUT TYPE="submit"  name="dosubmit" value="<?php echo L('dosubmit');?>" class="button" ><input type="button" value="<?php echo L(add_tpl_param);?>" class="button" onclick="addparam();" />
<input TYPE="reset"  value="<?php echo L('cancel');?>" class="button"> 
</div>
</form>
</div>


<script>
$.ajaxSetup ({ cache: false });
function deletethis(obj){
$(obj).parent().parent().remove();
}
function addparam(){
	var dialog = art.dialog({
		title: '<?php echo L(add_tpl_param);?>',
		content:'<p><?php echo L(param_name);?>：<input id="key"  style="width:15em; padding:4px" /></p><p><?php echo L(param_value);?>：<input id="value"  style="width:15em; padding:4px" /></p>',
		fixed: true,
		ok: function () {
			var key = document.getElementById('key');
			var value = document.getElementById('value');
    		var topWin = art.dialog.top;
			if (key.value  !== '' && value.value  !== '' ) {
				var data =  { "key":key.value,"value":value.value };
				var url =  "<?php echo U($module_name.'/'.$action_name.'?isajax=1');?>";
				$.ajax({  type: "POST",url: url,data: data  });

				$('#param').append('<tr>  <td width="120">'+key.value+'</td> <td><input type="text"   name="'+key.value+'" value="'+value.value+'" class="input-text" /><a href="javascript:void(0);" onclick="deletethis(this);"><?php echo L(delete);?></a></td></tr>');
				art.dialog({
					time: 1,
					content: '<?php echo L(add_ok);?>！'
				});
			} else {
				art.dialog({
					time: 1,
					content: '<?php echo L(value_empty);?>'
				});
				return false;
			};
		},
		cancel: true
	});
}



</script>
</body></html>
</body>
</html>