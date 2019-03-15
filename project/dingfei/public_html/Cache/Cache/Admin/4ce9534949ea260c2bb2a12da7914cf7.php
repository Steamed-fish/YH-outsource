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

<form method='post' name="myform" id="myform" action="<?php if($action_name=='add'): echo U($module_name.'/insert'); else: echo U($module_name.'/update'); endif; ?>">
	<table cellpadding=0 cellspacing=0 class="table_form" width="100%">
	<tr>
		<td width="140"><?php echo L('name');?>:</td>
		<td><input type="text" class="input-text"  name="name" id="name" value="<?php echo ($vo["name"]); ?>"  ></td>
	</tr>
	<tr>
		<td><?php echo L('pos');?>:</td>
		<td><input type="text" class="input-text"  name="pos" id="pos" value="<?php echo ($vo["pos"]); ?>"  validate="required:true,en_num:true, minlength:2, maxlength:20"></td>
	</tr>
	<tr>
		<td><?php echo L('link');?>:</td>
		<td><input type="text" class="input-text"  name="link" id="link" value="<?php echo ($vo["link"]); ?>"  validate="required:false, minlength:2, maxlength:200"></td>
	</tr>
	<tr>
		  <td><?php echo L(pic);?>1</td>
		  <td>
		  
		  <div class="image1_box"  ><div id="image1_aid_box" style="display:none;"></div>

		  <input type="text"  id="image1" name="image1"  value="<?php echo ($vo['image1']); ?>" class="input-text" size="40"/><input type="button" class="button" value="<?php echo L(upload);?>" onclick="javascript:swfupload('pic_uploadfile','image1','<?php echo L(uploadfiles);?>',1,1,0,10,'jpeg,jpg,png,gif,flv,swf,mp4',50,230,'<?php echo ($yourphp_auth); ?>',yesdo,nodo)" /> <a href="javascript:void(0);" onclick="showpicbox($('#image1').val());"> <?php echo L(view);?></a></div>
		 </td>
	</tr>
	<tr>
		  <td><?php echo L(pic);?>2</td>
		  <td>
		   <div class="image2_box"  ><div id="image2_aid_box" style="display:none;"></div>
			<input type="text"  id="image2" name="image2"  value="<?php echo ($vo['image2']); ?>" class="input-text" size="40"/><input type="button" class="button" value="<?php echo L(upload);?>" onclick="javascript:swfupload('pic_uploadfile','image2','<?php echo L(uploadfiles);?>',1,1,0,10,'jpeg,jpg,png,gif,flv,swf,mp4',50,230,'<?php echo ($yourphp_auth); ?>',yesdo,nodo)" />  <a href="javascript:void(0);" onclick="showpicbox($('#image2').val());"> <?php echo L(view);?></a></div>
		
		 </td>
	</tr>
	<tr>
		<td><?php echo L('content');?>:</td>
		<td><?php echo $Form->editor(array('field'=>'content','moduleid'=>'231','setup'=>array('toolbar'=>'full','flashupload'=>'1')),$vo[content]);?></td>
	</tr>
	</table>
	<div class="btn">
	<?php if($vo[id]!=''): ?><input TYPE="hidden" name="id" value="<?php echo ($vo["id"]); ?>"><?php endif; ?>
	<INPUT TYPE="submit"  value="<?php echo L('dosubmit');?>" class="button" >
	<input type="hidden" name="forward" value="<?php echo ($_SERVER['HTTP_REFERER']); ?>" />
	<input TYPE="reset"  value="<?php echo L('reset');?>" class="button">
	</div>
</form>
</div>

</body></html>
</body>
</html>