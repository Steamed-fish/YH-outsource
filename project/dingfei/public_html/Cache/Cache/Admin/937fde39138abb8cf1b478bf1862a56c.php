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


<script>
$('#nav ul a ').removeClass('on');
$('#nav ul').append('<a href="<?php echo U("Field/index",array(moduleid=>$_GET[moduleid]));?>" class="on"><?php echo L(field_manage);?></a> | <a href="<?php echo U("Field/add",array(moduleid=>$_GET[moduleid]));?>"><?php echo L(field_add);?></a> |');
</script>

<form  id="myform" name="myform" action="<?php echo U('Field/listorder');?>" method="post">
<div class="table-list">
    <table width="100%" cellspacing="0">
        <thead>
      		<tr>
			<th width="40"><?php echo L(listorder);?></th>
			<th align="left" width="80"><?php echo L(field_field);?></th>
			<th align="left"><?php echo L(field_name);?></th>
			<th width="60" align="left" ><?php echo L(field_type);?></th>
			<th width="50"><?php echo L(field_issystem);?></th>
			<th width="40"><?php echo L(field_required);?></th>
			<th width="200"><?php echo L(manage);?></th>
      		</tr>
      	</thead>
      	<tbody>
      		<?php if(is_array($list)): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr>
			<td align='center' width="40"><input name='listorders[<?php echo ($vo["id"]); ?>]' type='text' size='3' value='<?php echo ($vo["listorder"]); ?>' class='input-text-c'></td>
      		<td><?php echo ($vo['field']); ?></td>
      		<td><?php echo ($vo['name']); ?></td>
      		<td><?php echo ($vo['type']); ?></td>
      		<td align="center"><?php if(in_array($vo['field'],$sysfield)): echo L(duihao); else: echo L(xuohao); endif; ?></td>
			<td align="center"><?php if($vo['required']==1): echo L(duihao); else: echo L(xuohao); endif; ?></td>
      		<td align="center">
			<a href="<?php echo U('Field/edit',array(moduleid=>$vo['moduleid'],id=>$vo['id']));?>" ><?php echo L(edit);?></a>  |
			<?php if($vo[status]==1): if(in_array($vo['field'],$nodostatus)): ?><font color="#D3D3D3"><?php echo L(disable);?></font>
				<?php else: ?>
				<a href="<?php echo U('Field/status',array(id=>$vo['id'],status=>0));?>"><?php echo L(disable);?></a><?php endif; ?>
			<?php else: ?>
				<a href="<?php echo U('Field/status',array(id=>$vo['id'],status=>1));?>"><font color="red"><?php echo L(enable);?></font></a><?php endif; ?>
		 | <?php if(in_array($vo['field'],$sysfield)): ?><font color="#D3D3D3"><?php echo L(delete);?></font>
		 <?php else: ?>
		  <a href="javascript:confirm_delete('<?php echo U('Field/delete',array(id=>$vo['id']));?>')"><?php echo L(delete);?></a><?php endif; ?>
		 </td>
      		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
      	</tbody>
    </table>
</div>

  <div class="btn">  <input  type="button" class="button" name="dosubmit" value="<?php echo L(listorder);?>" onclick="myform.action='<?php echo U($module_name.'/listorder');?>';$('#myform').submit();" /></div>

</form></div>
</body></html>
</body>
</html>