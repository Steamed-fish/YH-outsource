<?php
/**
 * 
 * Base (前台公共模块)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	YourPHP企业网站管理系统 v2.1 2011-03-01 yourphp.cn $
 */
if(!defined("Yourphp")) exit("Access Denied");
class BaseAction extends Action
{
	protected   $Config ,$sysConfig,$categorys,$module,$moduleid,$mod,$dao,$Type,$Role,$_userid,$_groupid,$_email,$_username ,$forward ,$user_menu,$Lang,$member_config;
    public function _initialize() {

			$this->sysConfig = F('sys.config');
			$this->module = F('Module');
			$this->Role = F('Role');
			$this->Type =F('Type');
			$this->mod= F('Mod');
			$this->moduleid=$this->mod[MODULE_NAME];
			if(APP_LANG){
				$this->Lang = F('Lang');
				$this->assign('Lang',$this->Lang);
				if(get_safe_replace($_GET['l'])){
					if(!$this->Lang[$_GET['l']]['status'])$this->error ( L ( 'NO_LANG' ) );
					$lang=$_GET['l'];
				}else{
					$lang=$this->sysConfig['DEFAULT_LANG'];
				}
				define('LANG_NAME', $lang);
				define('LANG_ID', $this->Lang[$lang]['id']);
				$this->categorys = F('Category_'.$lang);
				$this->Config = F('Config_'.$lang);
				$this->assign('l',$lang);
				$this->assign('langid',LANG_ID);
				$this->assign('langname',$this->Lang[$lang]['name']);
				$T = F('config_'.$lang,'', APP_PATH.'Tpl/Home/'.$this->sysConfig['DEFAULT_THEME'].'/');
				C('TMPL_CACHFILE_SUFFIX','_'.$lang.'.php');
				cookie('think_language',$lang);
			}else{
				$T = F('config_'.$this->sysConfig['DEFAULT_LANG'],'',  APP_PATH.'Tpl/Home/'.$this->sysConfig['DEFAULT_THEME'].'/');
				$this->categorys = F('Category');
				$this->Config = F('Config');
				cookie('think_language',$this->sysConfig['DEFAULT_LANG']);
			}
			$this->assign('T',$T);
			$this->assign($this->Config);
			$this->assign('Role',$this->Role);
			$this->assign('Type',$this->Type);
			$this->assign('Module',$this->module);
			$this->assign('Categorys',$this->categorys);
			import("@.ORG.Form");			
			$this->assign ( 'form',new Form());
 
			C('HOME_ISHTML',$this->sysConfig['HOME_ISHTML']);
			C('PAGE_LISTROWS',$this->sysConfig['PAGE_LISTROWS']);
			C('URL_M',$this->sysConfig['URL_MODEL']);
			C('URL_M_PATHINFO_DEPR',$this->sysConfig['URL_PATHINFO_DEPR']);
			C('URL_M_HTML_SUFFIX',$this->sysConfig['URL_HTML_SUFFIX']);
			C('URL_LANG',$this->sysConfig['DEFAULT_LANG']);
			C('DEFAULT_THEME_NAME',$this->sysConfig['DEFAULT_THEME']);


			import("@.ORG.Online");
			$session = new Online();
			if(cookie('auth')){
				$yourphp_auth_key = sysmd5($this->sysConfig['ADMIN_ACCESS'].$_SERVER['HTTP_USER_AGENT']);
				list($userid,$groupid, $password) = explode("-", authcode(cookie('auth'), 'DECODE', $yourphp_auth_key));
				$this->_userid = $userid;
				$this->_username =  cookie('username');
				$this->_groupid = $groupid; 
				$this->_email =  cookie('email');
			}else{
				$this->_groupid = cookie('groupid') ?  cookie('groupid') : 4;
				$this->_userid =0;
			}


			foreach((array)$this->module as $r){
				if($r['issearch'])$search_module[$r['name']] = L($r['name']);
				if($r['ispost'] && (in_array($this->_groupid,explode(',',$r['postgroup']))))$this->user_menu[$r['id']]=$r;
			}
			if(GROUP_NAME=='User'){
				$langext = $lang ? '_'.$lang : '';
				$this->member_config=F('member.config'.$langext);
				$this->assign('member_config',$this->member_config);
				$this->assign('user_menu',$this->user_menu);
				if($this->_groupid=='5' &&  MODULE_NAME!='Login'){ 
					$this->assign('jumpUrl',URL('User-Login/emailcheck'));
					$this->assign('waitSecond',3);
					$this->success(L('no_regcheckemail'));
					exit;
				}
				$this->assign('header',TMPL_PATH.'Home/'.THEME_NAME.'/Home_header.html');
			}
			if($_GET['forward'] || $_POST['forward']){	
				$this->forward = get_safe_replace($_GET['forward'].$_POST['forward']);
			}else{
				if(MODULE_NAME!='Register' || MODULE_NAME!='Login' )
				$this->forward =isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] :  $this->Config['site_url'];
			}
			$this->assign('forward',$this->forward);

			$this->assign('search_module',$search_module);
			$this->assign('module_name',MODULE_NAME);
			$this->assign('action_name',ACTION_NAME);

			//add BY zeb 设备判断 0-pc 1-手机 2-ipad
			$this->assign('device',is_mobile());
 
	}

	public function getDetail($id='',$module='')
	{
		$returnData = array();
		$this->Urlrule =F('Urlrule');
		$p= max(intval($_REQUEST[C('VAR_PAGE')]),1);
		$id = $id ? $id : intval($_REQUEST['id']);
		$module = $module ? $module : MODULE_NAME;
		$returnData['module_name'] = $module;
		$this->dao= M($module);;
		$data = $this->dao->find($id);
		
		
		$catid = $data['catid'];
		$cat = $this->categorys[$data['catid']];
		if(empty($cat['ishtml']))$this->dao->where("id=".$id)->setInc('hits'); //添加点击次数
		$bcid = explode(",",$cat['arrparentid']);
		$bcid = $bcid[1];
		if($bcid == '') $bcid=intval($catid);
		
		if($data['readgroup']){
			if($this->_groupid!=1 && !in_array($this->_groupid,explode(',',$data['readgroup'])) )$noread=1;
		}elseif($cat['readgroup']){
			if($this->_groupid!=1 && !in_array($this->_groupid,explode(',',$cat['readgroup'])) )$noread=1;
		}
		if($noread==1)
		{
			$returnData['jumpUrl'] = URL('User-Login/index');
			exit(json_encode(array('errno'=>1, 'msg'=>L('NO_READ'), 'data'=>$returnData)));
		}
		
		$chargepoint = $data['readpoint'] ? $data['readpoint'] : $cat['chargepoint'];
		if($chargepoint && $data['userid'] !=$this->_userid){
			$user = M('User');
			$userdata =$user->find($this->_userid);
			if($cat['paytype']==1 && $userdata['point']>=$chargepoint){
				$chargepointok = $user->where("id=".$this->_userid)->setDec('point',$chargepoint);
			}elseif($cat['paytype']==2 && $userdata['amount']>=$chargepoint){
				$chargepointok = $user->where("id=".$this->_userid)->setDec('amount',$chargepoint);
			}else{
				$msg = array('errno'=>1, 'msg'=>L('NO_READ'));
			}
		}
		
		$seo_title = $data['title'].'-'.$cat['catname'];
		$returnData['seo_title'] = $seo_title;
		$returnData['seo_keywords'] = $data['keywords'];
		$returnData['seo_description'] = $data['description'];
		
		
		$fields = F($this->mod[$module].'_Field');
		foreach($data as $key=>$c_d){
			$setup='';
			$fields[$key]['setup'] =$setup=string2array($fields[$key]['setup']);
			if($setup['fieldtype']=='varchar' && $fields[$key]['type']!='text'){
				$data[$key.'_old_val'] =$data[$key];
				$data[$key]=fieldoption($fields[$key],$data[$key]);
			}elseif($fields[$key]['type']=='images' || $fields[$key]['type']=='files'){
				if(!empty($data[$key])){
					$p_data=explode(':::',$data[$key]);
					$data[$key]=array();
					foreach($p_data as $k=>$res){
						$p_data_arr=explode('|',$res);
						$data[$key][$k]['filepath'] = $p_data_arr[0];
						$data[$key][$k]['filename'] = $p_data_arr[1];
						$data[$key][$k]['filealt'] = $p_data_arr[2];
					}
					unset($p_data);
					unset($p_data_arr);
				}
			}
			unset($setup);
		}
		foreach ($fields as $k => $v)
		{
			$returnData['fields'][$k] = $v['name'];
		}
		
		//手动分页
		$CONTENT_POS = strpos($data['content'], '[page]');
		if($CONTENT_POS !== false) {
				
			$urlrule = geturl($cat,$data,$this->Urlrule);
			$urlrule =  str_replace('%7B%24page%7D','{$page}',$urlrule);
			$contents = array_filter(explode('[page]',$data['content']));
			$pagenumber = count($contents);
			for($i=1; $i<=$pagenumber; $i++) {
				$pageurls[$i] = str_replace('{$page}',$i,$urlrule);
			}
			$pages = content_pages($pagenumber,$p, $pageurls);
			//判断[page]出现的位置是否在文章开始
			if($CONTENT_POS<7) {
				$data['content'] = $contents[$p];
			} else {
				$data['content'] = $contents[$p-1];
			}
			$returnData[$pages] = $pages;
		}
		
		if(!empty($data['template'])){
			$template = $data['template'];
		}elseif(!empty($cat['template_show'])){
			$template = $cat['template_show'];
		}else{
			$template =  'show';
		}
		
		$returnData['catid'] = $catid;
		$returnData = array_merge($cat, $returnData);
		$returnData['bcid'] = $bcid;
		$returnData = array_merge($data, $returnData);
		
		//上一篇 下一篇
		$nextWhere = "id < $id ";
		if(defined('LANG_ID')) {
			$nextWhere .= " and lang=" . LANG_ID;
		}
		$tid = $this->dao->field("id")->where($nextWhere)->order("id desc")->find();
		if ($tid) {
			$next = $this->dao->field("title,url")->find($tid["id"]);
		}
		$this->assign('nextPage',$next);
		$prevWhere = "id > $id ";
		if(defined('LANG_ID')) {
			$prevWhere .= " and lang=" . LANG_ID;
		}
		$tid = $this->dao->field("id")->where($prevWhere)->order("id")->find();
		if ($tid) {
			$pre = $this->dao->field("title,url")->find($tid["id"]);
		}
		$this->assign('prePage',$pre);
		
		//浏览记录
		$ids= cookie('ids') ? cookie('ids') : array() ;
		if(!in_array($id,$ids)){
			array_push($ids,$id);
			cookie('ids',$ids,0);
			$ids= cookie('ids');
		}
		$all=implode(',',$ids);
		$view_data = M($module)->field('id,url,title,thumb')->select($all);
		$returnData['view_data'] = $view_data;
		
		if (empty($msg))
		{
			if (isset($returnData['url']) && !empty($returnData['url']))
			{
				$returnData['url'] = '/api' . $returnData['url'];
			}
			exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$returnData)));
		}else {
			if (isset($returnData['url']) && !empty($returnData['url']))
			{
				$returnData['url'] = '/api' . $returnData['url'];
			}
			$msg['data'] = $returnData;
			exit(json_encode($msg));
		}
	}
	
	public function getList($catid='',$module='')
	{
		$returnData = array();
		$this->Urlrule =F('Urlrule');
		if(empty($catid)) $catid =  intval($_REQUEST['id']);
		$p= max(intval($_REQUEST[C('VAR_PAGE')]),1);
		if($catid){
			$cat = $this->categorys[$catid];
			$bcid = explode(",",$cat['arrparentid']);
			$bcid = $bcid[1];
			if($bcid == '') $bcid=intval($catid);
			if(empty($module))$module=$cat['module'];
			$this->assign('module_name',$module);
			unset($cat['id']);
			$this->assign($cat);
			$cat['id']=$catid;
			$returnData['catid'] = $catid;
			$returnData['bcid'] = $bcid;
		}
		if($cat['readgroup'] && $this->_groupid!=1 && !in_array($this->_groupid,explode(',',$cat['readgroup']))){$this->assign('jumpUrl',URL('User-Login/index'));$this->error (L('NO_READ'));}
		$fields = F($this->mod[$module].'_Field');
		foreach($fields as $key=>$r){
			$fields[$key]['setup'] =string2array($fields[$key]['setup']);
		}
		foreach ($fields as $k => $v)
		{
			$returnData['fields'][$k] = $v['name'];
		}
		
		$seo_title = $cat['title'] ? $cat['title'] : $cat['catname'];
		$returnData['seo_title'] = $seo_title;
		$returnData['seo_keywords'] = $cat['keywords'];
		$returnData['seo_description'] = $cat['description'];
		
		
		if($module=='Guestbook'){
			$where['status']=array('eq',1);
			$this->dao= M($module);
			$count = $this->dao->where($where)->count();
			if($count){
				import ( "@.ORG.FrontPage" );
				$listRows =  !empty($cat['pagesize']) ? $cat['pagesize'] : C('PAGE_LISTROWS');
				$page = new FrontPage ( $count, $listRows );
				$page->urlrule = geturl($cat,'');
				$pages = $page->show();
				$field =  $this->module[$cat['moduleid']]['listfields'];
				$field =  $field ? $field : '*';
				$list = $this->dao->field($field)->where($where)->order('createtime desc,id desc')->limit($page->firstRow . ',' . $page->listRows)->select();
				$returnData['pages'] = $pages;
				$returnData['list'] = $list;
			}
		}elseif($module=='Page'){
			$modle=M('Page');
			$data = $modle->find($catid);
			unset($data['id']);
		
			//分页
			$CONTENT_POS = strpos($data['content'], '[page]');
			if($CONTENT_POS !== false) {
				$urlrule = geturl($cat,'',$this->Urlrule);
				$urlrule[0] =  urldecode($urlrule[0]);
				$urlrule[1] =  urldecode($urlrule[1]);
				$contents = array_filter(explode('[page]',$data['content']));
				$pagenumber = count($contents);
				for($i=1; $i<=$pagenumber; $i++) {
					$pageurls[$i] = str_replace('{$page}',$i,$urlrule);
				}
				$pages = content_pages($pagenumber,$p, $pageurls);
				//判断[page]出现的位置
				if($CONTENT_POS<7) {
					$data['content'] = $contents[$p];
				} else {
					$data['content'] = $contents[$p-1];
				}
				$returnData['pages'] = $pages;
			}
			
			$returnData = array_merge($data, $returnData);
		}else{
				
			if($catid){
				$seo_title = $cat['title'] ? $cat['title'] : $cat['catname'];
				$returnData['seo_title'] = $seo_title;
				$returnData['seo_keywords'] = $cat['keywords'];
				$returnData['seo_description'] = $cat['description'];
				
				//*edit by jzp start
				$where = " status=1 and ";
				$where_catid = "";
				if($cat['child']){
					$where_catid .= " catid in(".$cat['arrchildid'].")";
				}else{
					$where_catid .=  " catid=".$catid;
				}
				//*edit by jzp end
				//to-do: 如果有副栏目关联表， 加一个条件(exists) add by jzp
				if($relationId = hasCatalogField($cat['moduleid']))
				{
					$module = $module ? $module : MODULE_NAME;
					$tablename=C('DB_PREFIX').strtolower($module).'_catalog';
					$primaryKey = strtolower($module) . '_id';
					$where_catid = " ($where_catid or exists(select 1 from `$tablename` where `id` = `$primaryKey` and `$relationId` = $catid))";
				}
				$where .= $where_catid;
				if(strtolower($module) == 'logistics'){
					$order_sn = isset($_REQUEST['order_sn']) ? $_REQUEST['order_sn'] : '';
					$match =  preg_match('/\w+/', $order_sn);
					if($match) {
						$where .= " and order_sn like '%{$order_sn}%'";
					}
				}
				if(empty($cat['listtype'])){
					$this->dao= M($module);
					$count = $this->dao->where($where)->count();
					if($count){
						$this->assign('count',$count);
						import ( "@.ORG.FrontPage" );
						$listRows =  !empty($cat['pagesize']) ? $cat['pagesize'] : C('PAGE_LISTROWS');
						$page = new FrontPage ( $count, $listRows );
						$page->urlrule = geturl($cat,'',$this->Urlrule);
						$pages = $page->show();
						
						$field =  $this->module[$this->mod[$module]]['listfields'];
						$field =  $field ? $field : 'id,catid,userid,url,username,title,title_style,keywords,description,thumb,createtime,hits';
						$list = $this->dao->field($field)->where($where)->order('listorder desc, createtime desc,id desc')->limit($page->firstRow . ',' . $page->listRows)->select();
						foreach ($list as $key => $value) {
							if($value['pics']){
								$p_data=explode(':::',$value['pics']);
								$value['pics']=array();
								foreach($p_data as $k=>$res){
									$p_data_arr=explode('|',$res);
									$value['pics'][$k]['filepath'] = $p_data_arr[0];
									$value['pics'][$k]['filename'] = $p_data_arr[1];
									$value['pics'][$k]['filealt'] = $p_data_arr[2];
								}
								$list[$key] = $value;
								unset($p_data);
								unset($p_data_arr);
							}
						}
						$returnData['pageNum'] = ceil($count/$listRows);
						$returnData['pages'] = $pages;
						foreach ($list as $k => $v)
						{
							if (isset($v['url']) && !empty($v['url']))
							{
								$list[$k] = '/api' . $v['url'];
							}
						}
						$returnData['list'] = $list;
					}
					$template_r = 'list';
				}else{
					$template_r = 'index';
				}
			}else{
				$template_r = 'list';
			}
		}
		
		exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$returnData)));
	}
	
    public function index($catid='',$module='')
    {
    	if ($_GET['api'])
    	{
    		$this->getList($catid, $module);
    		return ;
    	}
		$this->Urlrule =F('Urlrule');
		if(empty($catid)) $catid =  intval($_REQUEST['id']);
		$p= max(intval($_REQUEST[C('VAR_PAGE')]),1);
		if($catid){
			$cat = $this->categorys[$catid];
			$bcid = explode(",",$cat['arrparentid']); 
			$bcid = $bcid[1]; 
			if($bcid == '') $bcid=intval($catid);
			if(empty($module))$module=$cat['module'];
			$this->assign('module_name',$module);
			unset($cat['id']);
			$this->assign($cat);
			$cat['id']=$catid;
			$this->assign('catid',$catid);
			$this->assign('bcid',$bcid);
		}
		if($cat['readgroup'] && $this->_groupid!=1 && !in_array($this->_groupid,explode(',',$cat['readgroup']))){$this->assign('jumpUrl',URL('User-Login/index'));$this->error (L('NO_READ'));}
		$fields = F($this->mod[$module].'_Field');
		foreach($fields as $key=>$r){
			$fields[$key]['setup'] =string2array($fields[$key]['setup']);
		}
		$this->assign ( 'fields', $fields); 


		$seo_title = $cat['title'] ? $cat['title'] : $cat['catname'];
		$this->assign ('seo_title',$seo_title);
		$this->assign ('seo_keywords',$cat['keywords']);
		$this->assign ('seo_description',$cat['description']);
				

		if($module=='Guestbook'){
			$where['status']=array('eq',1);
			$this->dao= M($module);
			$count = $this->dao->where($where)->count();
			if($count){
				import ( "@.ORG.FrontPage" );
				$listRows =  !empty($cat['pagesize']) ? $cat['pagesize'] : C('PAGE_LISTROWS');		
				$page = new FrontPage ( $count, $listRows );
				$page->urlrule = geturl($cat,'');
				$pages = $page->show();
				$field =  $this->module[$cat['moduleid']]['listfields'];
				$field =  $field ? $field : '*';
				$list = $this->dao->field($field)->where($where)->order('createtime desc,id desc')->limit($page->firstRow . ',' . $page->listRows)->select();
				$this->assign('pages',$pages);
				$this->assign('list',$list);
			}
			$template = $cat['module']=='Guestbook' && $cat['template_list'] ? $cat['template_list'] : 'index';
			$this->display(THEME_PATH.$module.'_'.$template.'.html');
		}elseif($module=='Feedback'){
			$template = $cat['module']=='Feedback' && $cat['template_list'] ? $cat['template_list'] : 'index' ;

			$this->display(THEME_PATH.$module.'_'.$template.'.html');
		}elseif($module=='Page'){
			$modle=M('Page');
			$data = $modle->find($catid);
			unset($data['id']);

			//分页
			$CONTENT_POS = strpos($data['content'], '[page]');
			if($CONTENT_POS !== false) {			
				$urlrule = geturl($cat,'',$this->Urlrule);
				$urlrule[0] =  urldecode($urlrule[0]);
				$urlrule[1] =  urldecode($urlrule[1]);
				$contents = array_filter(explode('[page]',$data['content']));
				$pagenumber = count($contents);
				for($i=1; $i<=$pagenumber; $i++) {
					$pageurls[$i] = str_replace('{$page}',$i,$urlrule);
				} 
				$pages = content_pages($pagenumber,$p, $pageurls);
				//判断[page]出现的位置
				if($CONTENT_POS<7) {
					$data['content'] = $contents[$p];
				} else {
					$data['content'] = $contents[$p-1];
				}
				$this->assign ('pages',$pages);	
			}

			$template = $cat['template_list'] ? $cat['template_list'] :  'index' ;
			$this->assign ($data);	
			$this->display(THEME_PATH.$module.'_'.$template.'.html');

		}else{
			
			if($catid){
				$seo_title = $cat['title'] ? $cat['title'] : $cat['catname'];
				$this->assign ('seo_title',$seo_title);
				$this->assign ('seo_keywords',$cat['keywords']);
				$this->assign ('seo_description',$cat['description']);
				
				
                //*edit by jzp start
				$where = " status=1 and ";
				
				if(in_array(strtolower( $module ), array('famous','')) ) {
					$typeid = $_REQUEST['typeid'];
					$where =  " $where  typeid = $typeid and";										
				}
                $where_catid = "";
				if($cat['child']){							
					$where_catid .= " catid in(".$cat['arrchildid'].")";
				}else{
					$where_catid .=  " catid=".$catid;
				}
                //*edit by jzp end\n
                //to-do: 如果有副栏目关联表， 加一个条件(exists) add by jzp
                if($relationId = hasCatalogField($cat['moduleid']))
                {
                    $module = $module ? $module : MODULE_NAME;
                    $tablename=C('DB_PREFIX').strtolower($module).'_catalog';
                    $primaryKey = strtolower($module) . '_id';
                    $where_catid = " ($where_catid or exists(select 1 from `$tablename` where `id` = `$primaryKey` and `$relationId` = $catid))";
                }
                $where .= $where_catid;
				if(strtolower($module) == 'logistics'){
					$order_sn = isset($_REQUEST['order_sn']) ? $_REQUEST['order_sn'] : '';
					$match =  preg_match('/\w+/', $order_sn);
					if($match) {
						$where .= " and order_sn like '%{$order_sn}%'";
					}
				}
				if(empty($cat['listtype'])){
					$this->dao= M($module);
					$count = $this->dao->where($where)->count();
					if($count){
						$this->assign('count',$count);
						import ( "@.ORG.FrontPage" );
						$listRows =  !empty($cat['pagesize']) ? $cat['pagesize'] : C('PAGE_LISTROWS');
						$page = new FrontPage ( $count, $listRows );
						$page->urlrule = geturl($cat,'',$this->Urlrule);
						$pages = $page->show();
						//add by zeb响应式手机端 上一页和下一页
						$this->assign('prePage',$page->prePage);
						$this->assign('nextPage',$page->nextPage);
						//end
						$field =  $this->module[$this->mod[$module]]['listfields'];
						$field =  $field ? $field : 'id,catid,userid,url,username,title,title_style,keywords,description,thumb,createtime,hits';
						$list = $this->dao->field($field)->where($where)->order('listorder desc, createtime desc,id desc')->limit($page->firstRow . ',' . $page->listRows)->select();
						foreach ($list as $key => $value) {
							if($value['pics']){
								$p_data=explode(':::',$value['pics']);
								$value['pics']=array();
								foreach($p_data as $k=>$res){
									$p_data_arr=explode('|',$res);					
									$value['pics'][$k]['filepath'] = $p_data_arr[0];
									$value['pics'][$k]['filename'] = $p_data_arr[1];
									$value['pics'][$k]['filealt'] = $p_data_arr[2];
								}
								$list[$key] = $value;
								unset($p_data);
								unset($p_data_arr);
							}
						}
						$this->assign('pageNum',ceil($count/$listRows));
						$this->assign('pages',$pages);
						$this->assign('list',$list);
					}
					$template_r = 'list';
				}else{
					$template_r = 'index';
				}
			}else{
				$template_r = 'list';
			}
			$template = $cat['template_list'] ? $cat['template_list'] : $template_r;
			$this->display($module.':'.$template);
		}
    }

 

	public function show($id='',$module='')
    {
		if ($_GET['api'])
		{
			$this->getDetail($id, $module);
			return ;
		}
		$this->Urlrule =F('Urlrule');
		$p= max(intval($_REQUEST[C('VAR_PAGE')]),1);		
		$id = $id ? $id : intval($_REQUEST['id']);
		$module = $module ? $module : MODULE_NAME;
		$this->assign('module_name',$module);
		$this->dao= M($module);;
		$data = $this->dao->find($id);
		
		
		$catid = $data['catid'];
		$cat = $this->categorys[$data['catid']];
		if(empty($cat['ishtml']))$this->dao->where("id=".$id)->setInc('hits'); //添加点击次数
		$bcid = explode(",",$cat['arrparentid']); 
		$bcid = $bcid[1]; 
		if($bcid == '') $bcid=intval($catid);

		if($data['readgroup']){
			if($this->_groupid!=1 && !in_array($this->_groupid,explode(',',$data['readgroup'])) )$noread=1;
		}elseif($cat['readgroup']){
			if($this->_groupid!=1 && !in_array($this->_groupid,explode(',',$cat['readgroup'])) )$noread=1;
		}
		if($noread==1){$this->assign('jumpUrl',URL('User-Login/index'));$this->error (L('NO_READ'));}

		$chargepoint = $data['readpoint'] ? $data['readpoint'] : $cat['chargepoint']; 
		if($chargepoint && $data['userid'] !=$this->_userid){
			$user = M('User');
			$userdata =$user->find($this->_userid);
			if($cat['paytype']==1 && $userdata['point']>=$chargepoint){
				$chargepointok = $user->where("id=".$this->_userid)->setDec('point',$chargepoint);
			}elseif($cat['paytype']==2 && $userdata['amount']>=$chargepoint){
				$chargepointok = $user->where("id=".$this->_userid)->setDec('amount',$chargepoint);
			}else{
				$this->error (L('NO_READ'));
			}
		}
	
		$seo_title = $data['title'].'-'.$cat['catname'];
		$this->assign ('seo_title',$seo_title);
		$this->assign ('seo_keywords',$data['keywords']);
		$this->assign ('seo_description',$data['description']);
		$this->assign ( 'fields', F($cat['moduleid'].'_Field') ); 
		

		$fields = F($this->mod[$module].'_Field');
		foreach($data as $key=>$c_d){
			$setup='';
			$fields[$key]['setup'] =$setup=string2array($fields[$key]['setup']);
			if($setup['fieldtype']=='varchar' && $fields[$key]['type']!='text'){
				$data[$key.'_old_val'] =$data[$key];
				$data[$key]=fieldoption($fields[$key],$data[$key]);
			}elseif($fields[$key]['type']=='images' || $fields[$key]['type']=='files'){ 
				if(!empty($data[$key])){
					$p_data=explode(':::',$data[$key]);
					$data[$key]=array();
					foreach($p_data as $k=>$res){
						$p_data_arr=explode('|',$res);					
						$data[$key][$k]['filepath'] = $p_data_arr[0];
						$data[$key][$k]['filename'] = $p_data_arr[1];
						$data[$key][$k]['filealt'] = $p_data_arr[2];
					}
					unset($p_data);
					unset($p_data_arr);
				}
			}
			unset($setup);
		}
		$this->assign('fields',$fields); 


		//手动分页
		$CONTENT_POS = strpos($data['content'], '[page]');
		if($CONTENT_POS !== false) {
			
			$urlrule = geturl($cat,$data,$this->Urlrule);
			$urlrule =  str_replace('%7B%24page%7D','{$page}',$urlrule); 
			$contents = array_filter(explode('[page]',$data['content']));
			$pagenumber = count($contents);
			for($i=1; $i<=$pagenumber; $i++) {
				$pageurls[$i] = str_replace('{$page}',$i,$urlrule);
			} 
			$pages = content_pages($pagenumber,$p, $pageurls);
			//判断[page]出现的位置是否在文章开始
			if($CONTENT_POS<7) {
				$data['content'] = $contents[$p];
			} else {
				$data['content'] = $contents[$p-1];
			}
			$this->assign ('pages',$pages);	
		}

		if(!empty($data['template'])){
			$template = $data['template'];
		}elseif(!empty($cat['template_show'])){
			$template = $cat['template_show'];
		}else{
			$template =  'show';
		}

		$this->assign('catid',$catid);
		$this->assign ($cat);
		$this->assign('bcid',$bcid);

		$this->assign ($data);
		
		//上一篇 下一篇
		$nextWhere = "id < $id ";
		if(defined('LANG_ID')) {
			$nextWhere .= " and lang=" . LANG_ID;
		}
		$tid = $this->dao->field("id")->where($nextWhere)->order("id desc")->find();
		if ($tid) {
			$next = $this->dao->field("title,url")->find($tid["id"]);
		}
		$this->assign('nextPage',$next);
		$prevWhere = "id > $id ";
		if(defined('LANG_ID')) {
			$prevWhere .= " and lang=" . LANG_ID;
		}
		$tid = $this->dao->field("id")->where($prevWhere)->order("id")->find();
		if ($tid) {
			$pre = $this->dao->field("title,url")->find($tid["id"]);
		}
		$this->assign('prePage',$pre);
		
		//浏览记录
		$ids= cookie('ids') ? cookie('ids') : array() ;
		if(!in_array($id,$ids)){
			array_push($ids,$id);
			cookie('ids',$ids,0);
			$ids= cookie('ids');
		}
		$all=implode(',',$ids);
		$view_data = M($module)->field('id,url,title,thumb')->select($all);
		$this->assign('view_data',$view_data);	
		

		$this->display($module.':'.$template); 
    }

	public function down()
	{

		$module = $module ? $module : MODULE_NAME;
		$id = $id ? $id : intval($_REQUEST['id']);
		$this->dao= M($module);
		$filepath = $this->dao->where("id=".$id)->getField('file');
		$this->dao->where("id=".$id)->setInc('downs');

		if(strpos($filepath, ':/')) { 
			
			header("Location: $filepath");
		} else {	
			$filepath = '.'.$filepath;
			if(!$filename) $filename = basename($filepath);
			$useragent = strtolower($_SERVER['HTTP_USER_AGENT']);
			if(strpos($useragent, 'msie ') !== false) $filename = rawurlencode($filename);
			$filetype = strtolower(trim(substr(strrchr($filename, '.'), 1, 10)));
			$filesize = sprintf("%u", filesize($filepath));
			if(ob_get_length() !== false) @ob_end_clean();
			header('Pragma: public');
			header('Last-Modified: '.gmdate('D, d M Y H:i:s') . ' GMT');
			header('Cache-Control: no-store, no-cache, must-revalidate');
			header('Cache-Control: pre-check=0, post-check=0, max-age=0');
			header('Content-Transfer-Encoding: binary');
			header('Content-Encoding: none');
			header('Content-type: '.$filetype);
			header('Content-Disposition: attachment; filename="'.$filename.'"');
			header('Content-length: '.$filesize);
			readfile($filepath);
		}
		exit;
	}

	public function hits()
	{
		$module = $module ? $module : MODULE_NAME;
		$id = $id ? $id : intval($_REQUEST['id']);
		$this->dao= M($module);
		$this->dao->where("id=".$id)->setInc('hits');

		if($module=='Download'){
			$r = $this->dao->find($id);
			echo '$("#hits").html('.$r['hits'].');$("#downs").html('.$r['downs'].');';
		}else{
			$hits = $this->dao->where("id=".$id)->getField('hits');
			echo '$("#hits").html('.$hits.');';
		}
		exit;
	}
	public function verify()
    {
		header('Content-type: image/jpeg');
        $type	 =	 isset($_GET['type'])? get_safe_replace($_GET['type']):'jpeg';
        import("@.ORG.Image");
        Image::buildImageVerify(4,1,$type);
    }
}
?>