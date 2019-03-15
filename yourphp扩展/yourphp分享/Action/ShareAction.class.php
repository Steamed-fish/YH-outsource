<?php
/**
 * 
 * Share(分享管理)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	YourPHP企业网站管理系统 v2.1 2012-10-08 yourphp.cn $
 */
 if(!defined("Yourphp")) exit("Access Denied");
class ShareAction extends AdminbaseAction
{
	 protected $filepath,$publicpath;
    function _initialize()
    {	
		parent::_initialize();
		// $this->filepath = TMPL_PATH.'Home/'.$this->sysConfig['DEFAULT_THEME'].'/'; 
		// $this->publicpath = TMPL_PATH.'Home/'.$this->sysConfig['DEFAULT_THEME'].'/Public/';
		 $this->tplpath = TMPL_PATH.'Home/'.$this->sysConfig['DEFAULT_THEME'].'/'; 
    }

    public function index()
    {
    	$Tpl = template_file('Share');
		$this->assign ( 'Tpl', $Tpl ); 
		$chose = M('Config')->field("value")->where('varname="tpl"')->find();
		$this->assign ( 'chose',$chose['value'] );
    	$modelname = MODULE_NAME;
    	$list = M($modelname)->field("*")->select();
		$this->assign ( 'list',$list );
        $this->display ();
    }
	public function chose()
	{
		$id = $_GET['id'];
		if($id){
			$Model = M(MODULE_NAME);
			$r = $Model->where("id=$id")->setField('status',1);
			
			$this->success(L('do_ok'));
		}else{
			$this->error(L('do_empty'));
		}
	}
	public function updatetpl()
	{
		$tpl = $_GET['tpl'];
		M('Config')->where('varname="tpl"')->setField('value',$tpl);
	}
	public function upload()
	{
		$yourphp_auth_key = sysmd5(C('ADMIN_ACCESS').$_SERVER['HTTP_USER_AGENT']);
		$yourphp_auth = authcode('1-1-0-10-jpeg,jpg,png,gif-5-230', 'ENCODE',$yourphp_auth_key);
		$this->assign('yourphp_auth',$yourphp_auth);
		$this->assign ( 'vo', $vo);
		$this->display ();
	}
	public function insert()
	{
		// $_POST['tpl'] = $this->tplpath.$_POST['tpl'];
		
		// if(APP_LANG)$_POST['lang']=LANG_ID;
		// //if($_POST['setup']) $_POST['setup']=array2string($_POST['setup']);
		// $name = MODULE_NAME;
		// $model = D ($name);
		// if (false === $model->create ()) {
		// 	$this->error ( $model->getError () );
		// }
		// $_POST['id'] = $id= $model->add();
		// if ($id !==false) {

		// 	if($_POST['aid']){
		// 		$Attachment =M('Attachment');		
		// 		$aids =  implode(',',$_POST['aid']);
		// 		$data['id']= $_POST['id'];
		// 		$data['catid']= $_POST['fid'];
		// 		$data['status']= '1';
		// 		$Attachment->where("aid in (".$aids.")")->save($data);
		// 	}

		// 	$this->assign ( 'jumpUrl', U('Share/index') );
		// 	$this->success (L('add_ok'));
		// } else {
		// 	$this->error (L('add_error').': '.$model->getDbError());
		// }
	}
}
?>