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

.table-list {margin:20px 10px;}
</style>
 

<div class="table-list"> 
<table width="100%" cellspacing="0">
 
<form action="<?php echo U($module_name.'/do'.$action_name);?>" method="get" name="myform"> 
  <input type="hidden" name="g" value="Admin"> 
  <input type="hidden" name="m" value="<?php echo ($module_name); ?>"> 
  <input type="hidden" name="a" value="do<?php echo ($action_name); ?>">
   <input type="hidden" name="moduleid" value="<?php echo ($moduleid); ?>">
 <input type="hidden" name="iscreatehtml" value="1">
<thead> 
<tr> 
<th align="center" width="150"><?php echo L(chose_module);?></th> 
<th align="center" width="386"><?php echo L(chose_category);?></th> 
<th align="center"><?php echo L(chose_manage);?></th> 
</tr> 
</thead> 
<tbody  class="td-line"> 
	<tr> 
		<td align="center" rowspan="4"> 
		<select name="moduleid" id="moduleid" size="2" style="margin:10px;height:200px;width:130px;" onclick="change_model(this.value)">
		<option value='' selected><?php echo L(module_select);?></option>
		<?php if(is_array($module)): $i = 0; $__LIST__ = $module;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo["id"]); ?>'><?php echo ($vo["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
		</td> 
    </tr> 
	<tr> 
		<td align="center" rowspan="4"> 
		<select name='catids[]' id='catids'  multiple="multiple"  style="height:200px;margin:10px;padding-right:4px;" title="<?php echo L(category_alt);?>"> 
		<option value='0' selected><?php echo L(category_select);?></option> 
		<?php echo ($select_categorys); ?>
		</td>    
    </tr>	
	<tr> <td><div style="margin:9px;"><font color="red"><?php echo L(create_pagesize_1);?> <input type="text" name="pagesize" value="<?php if($action_name=='Updateurl'): ?>50<?php else: ?>10<?php endif; ?>" size="4"> <?php echo L(create_pagesize_2);?></font></div></td> </tr>
	<tr>	 

      <td><input type="submit" style="margin:20px;" name="dosubmit" value="<?php echo L($action_name);?>" class="button" ></td>
    </tr>
	</tbody>
	</form> 
</table> 
 
</div>
<script>
function change_model(moduleid){
 window.location.href = "<?php echo U('Createhtml/'.$action_name);?>&moduleid="+moduleid+"&menuid="+<?php echo ($menuid); ?>;
}
$("#moduleid").attr("value",'{.moduleid}');
</script>
</body>
</html>