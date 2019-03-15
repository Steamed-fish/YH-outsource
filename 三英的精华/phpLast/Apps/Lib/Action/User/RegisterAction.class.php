<?php
/**
 * RegisterAction.class.php (前台会员注册模块)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	企业网站管理系统 v2.1 2011-03-01 yourphp.cn $
 */
if(!defined("Yourphp")) exit("Access Denied");
class RegisterAction extends BaseAction
{
	
	function _initialize()
    {
		parent::_initialize();
		$this->dao = M('User');
		$_GET =get_safe_replace($_GET);
		if(empty($this->member_config['member_register'])) $this->error(L('close_reg'));
    }
    public function index()
    {
		if( cookie('auth')){
			$this->assign('forward','');
			$this->assign('jumpUrl','/');
			$this->success(L('login_ok'));
		}
		$this->assign('bcid',0);
        $this->display();
    }

	public function doreg()
	{
		$username = get_safe_replace($_POST['username']);
		$mobile = get_safe_replace($_POST['mobile']);
        $password = get_safe_replace($_POST['password']);
		$email = get_safe_replace($_POST['email']);
        $verifyCode =$_POST['verifyCode'];
        $captcha = get_safe_replace($_POST['captcha']);
        if(empty($username) || empty($password) || empty($email) || empty($mobile) || empty($captcha)){
        	if ($this->isAjax())
        	{
        		exit(json_encode(array('errno'=>3)));
        	}
           $this->error(L('empty_username_empty_password_empty_email_empty_mobile_empty_captcha'));
        }
		if($this->member_config['member_login_verify'] && md5($verifyCode) != $_SESSION['verify']){
           $this->error(L('error_verify'));
        }
        $cmobile = session('captcha'.$mobile);
        $ctime = session('captcha'.$mobile.'time');
        
        if ($cmobile!=$captcha || $ctime< time() - 600)
        {
        	$this->error(L('error_captcha'));
        }
        if (!preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $mobile))
        {
        	$this->error(L('error_mobile'));
        }
        if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email) || $this->emailExist($email))
        {
        	$this->error(L('error_email'));
        }
		$status = $this->member_config['member_registecheck'] ? 0 : 1;
		if($this->member_config['member_emailcheck']){ $status = 1; $groupid=5 ;}
		$groupid = $groupid ? $groupid : 3;
		$data=array();
		$data['username']= $username;
		$data['mobile'] = $mobile;
		$data['email']=$email;
		$data['groupid']=$groupid;
		$data['login_count']=1;
		$data['createtime']=time();
		$data['updatetime']=time();
		$data['last_logintime']=time();
		$data['reg_ip']=get_client_ip();
		$data['status']=$status;
		$authInfo['password'] = $data['password'] = sysmd5($password);
		$authInfo['status'] = $status;
		
		if($r=$this->dao->create($data)){
			if(false!==$this->dao->add()){
				$authInfo['id'] = $uid=$this->dao->getLastInsID();
				$authInfo['groupid'] = $ru['role_id']=$data['groupid'];
				$ru['user_id']=$uid;
				$roleuser=M('RoleUser');
				$roleuser->add($ru);
				
				if($this->member_config['member_emailcheck']){
					$yourphp_auth = authcode($uid."-".$username."-".$email, 'ENCODE',$this->sysConfig['ADMIN_ACCESS'],3600*24*3);//3天有效期
					$url = 'http://'.$_SERVER['HTTP_HOST'].U('User/Login/regcheckemail?code='.$yourphp_auth);
					$click = "<a href=\"$url\" target=\"_blank\">".L('CLICK_THIS')."</a>";
					$message = str_replace(array('{click}','{url}','{sitename}'),array($click,$url,$this->Config['site_name']),$this->member_config['member_emailchecktpl']);
					$r = sendmail($email,L('USER_REGISTER_CHECKEMAIL').'-'.$this->Config['site_name'],$message,$this->Config);
					$this->assign('send_ok',1);
					$this->assign('username',$username);
					$this->assign('email',$email);
					$this->display('Login:emailcheck');
					exit;
				}
				
				$yourphp_auth_key = sysmd5($this->sysConfig['ADMIN_ACCESS'].$_SERVER['HTTP_USER_AGENT']);
				$yourphp_auth = authcode($authInfo['id']."-".$authInfo['groupid']."-".$authInfo['password'], 'ENCODE', $yourphp_auth_key);
				$this->assign('jumpUrl',$this->forward);
				//add by lin 
				
				if($authInfo['status'] != 1){$this->error(L('ACCOUNT_DISABLE'));}
				
				//end by lin					

				$authInfo['username'] = $data['username'];
				$authInfo['email'] = $data['email'];
				cookie('auth',$yourphp_auth,$cookietime);
				cookie('username',$authInfo['username'],$cookietime);
				cookie('groupid',$authInfo['groupid'],$cookietime);
				cookie('userid',$authInfo['id'],$cookietime);
				cookie('email',$authInfo['email'],$cookietime);

				if ($this->isAjax())
				{
					exit(json_encode(array('errno'=>0, 'code'=>'ok', 'msg'=>L('reg_ok'))));
				}else {
					$this->success(L('reg_ok'));
				}
			}else{
				if ($this->isAjax())
				{
					exit(json_encode(array('errno'=>1, 'code'=>'fail', 'msg'=>L('reg_error'))));
				}else {
					$this->error(L('reg_error'));
				}
			}
		}else{
			$this->error($this->dao->getError());
		}
	}

	function checkEmail(){
        $email=$_GET['email'];
		$userid=intval($_GET['userid']);
		if(empty($userid)){
			if($this->dao->getByEmail($email)){
				 echo 'false';
			}else{
				echo 'true';
			}
		}else{
			//判断邮箱是否已经使用
			if($this->dao->where("id!={$userid} and email='{$email}'")->find()){
				 echo 'false';
			}else{
				echo 'true';
			}
		}
        exit;
	}
	
	function checkMobile()
	{
		$mobile = $_GET['mobile'];
		$userid=intval($_GET['userid']);
		if(empty($userid)){
			if($this->dao->getByMobile($mobile)){
				echo 'false';
			}else{
				echo 'true';
			}
		}else{
			//判断邮箱是否已经使用
			if($this->dao->where("id!={$userid} and mobile='{$mobile}'")->find()){
				echo 'false';
			}else{
				echo 'true';
			}
		}
		exit;
	}

	function checkusername(){
		$username=$_GET['username'];
		if($this->dao->getByUsername($username)){
				 echo 'false';
			}else{
				echo 'true';
		}
		exit;
	}
	
	public function captcha()
	{
		$mobile = $_POST['mobile'];
		if (!preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $mobile))
		{
			exit(json_encode(array('errno'=>3, 'msg'=>'手机号码错误')));
		}
		if ($this->mobileExist($mobile))
		{
			exit(json_encode(array('errno'=>4, 'msg'=>'该手机号码已存在')));
		} 
		
		$sttime = 'captcha'.$mobile.'time';
		
		$time = session($sttime);
		if (empty($time) || $time < time()-60)
		{
			require_once APP_PATH . '/Common/Ucpaas.php';
			
			$ucp = 	new Ucpaas();
			$code = $this->getCode();
			$result = $ucp->templateSMS($mobile, $code);
		
			$result = json_decode($result, TRUE);
			// 判断短信是否发送成功
			if ($result['resp']['respCode'] == '000000')
			{
				session('captcha'.$mobile, $code);
				session($sttime, strtotime($result['resp']['templateSMS']['createDate']));
				echo json_encode(['errno'=>0, 'msg'=>'success']);
				return ;
			}else {
				// 短信发送失败，请联系客服
				echo json_encode(['errno'=>1, 'msg'=>'fail']);
				return ;
			}
		}else {
			// 距离上次发送没有超过一分钟，不能再次发送
			echo json_encode(['errno'=>2,'msg'=>'wait a minute']);
			return ;
		}
	}
	
	private function getCode($length=0)
	{
		$str = '';
		if (empty($length))
		{
			for ($i=0; $i<6; $i++)
			{
				$str .= rand(0, 9);
			}
		}else {
			for ($i=0; $i<$length; $i++)
			{
				$str .= rand(0, 9);
			}
		}
		return $str;
	}
	
	private function emailExist($email)
	{
		$user = $this->dao->where(array('email'=>$email))->select();
		if (isset($user[0]))
		{
			return true;
		}else {
			return false;
		}
	}
	
	private function mobileExist($mobile)
	{
		$user = $this->dao->where(array('mobile'=>$mobile))->select();
		if (isset($user[0]))
		{
			return true;
		}else {
			return false;
		}
	}
	
	/**
	 * 新用户注册
	 * 
	 * @declare API
	 * @author wuxing
	 * @data 2017-07-07
	 * @param string $username	新用户注册的用户名，用户名必须在系统中唯一，否则将无法注册，必传参数
	 * @param string $mobile		新用户注册的手机号码，手机号码必须在系统中唯一，否则将无法注册，必传参数
	 * @param string $email		新用户注册需要的邮箱，邮箱必须在系统中唯一，否则将无法注册，必传参数
	 * @param string $password	新帐号的密码，必传参数
	 * @param string $captcha	手机验证码，必传参数
	 * @param string $verifyCode	图形验证码，必传参数
	 */
	public function register()
	{
		$username = get_safe_replace($_POST['username']);
		$mobile = get_safe_replace($_POST['mobile']);
		$password = get_safe_replace($_POST['password']);
		$email = get_safe_replace($_POST['email']);
		$verifyCode =$_POST['verifyCode'];
		$captcha = get_safe_replace($_POST['captcha']);
		if(empty($username) || empty($password) || empty($email) || empty($mobile) || empty($captcha)){
			// 新帐号的用户名、密码、邮箱、手机号码或短信验证码至少有一个为空
			exit(json_encode(array('errno'=>2, 'code'=>'invalid parameter', 'msg'=>L('empty_username_empty_password_empty_email_empty_mobile_empty_captcha'))));
		}
		if($this->member_config['member_login_verify'] && md5($verifyCode) != $_SESSION['verify']){
			// 图形验证码不正确
			exit(json_encode(array('errno'=>3,'code'=>'invalid verify code', 'msg'=>L('error_verify'))));
		}
		$cmobile = session('captcha'.$mobile);
		$ctime = session('captcha'.$mobile.'time');
		/**
		 * 验证短信验证码是否正确
		 * 验证码正确条件：验证码数字正确且在验证码发送后的1个小时之内
		 */
		if ($cmobile!=$captcha || $ctime< time() - 600)
		{
			exit(json_encode(array('errno'=>4, 'code'=>'invalid captcha', 'msg'=>L('error_captcha'))));
		}
		// 验证手机号码格式是否正确
		if (!preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $mobile))
		{
			exit(json_encode(array('errno'=>5, 'code'=>'invalid mobile', 'msg'=>L('error_mobile'))));
		}
		// 验证邮箱的格式是否正确
		if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email) || $this->emailExist($email))
		{
			exit(json_encode(array('errno'=>6, 'code'=>'invalid email', 'msg'=>L('error_email'))));
		}
		// 新用户帐号的状态，1表示已启用，0表示未启用，状态由管理后台设置
		$status = $this->member_config['member_registecheck'] ? 0 : 1;
		if($this->member_config['member_emailcheck']){ $status = 1; $groupid=5 ;}
		$groupid = $groupid ? $groupid : 3;
		$data=array();
		$data['username']= $username;
		$data['mobile'] = $mobile;
		$data['email']=$email;
		$data['groupid']=$groupid;
		$data['login_count']=1;
		$data['createtime']=time();
		$data['updatetime']=time();
		$data['last_logintime']=time();
		$data['reg_ip']=get_client_ip();
		$data['status']=$status;
		$authInfo['password'] = $data['password'] = sysmd5($password);
		$authInfo['status'] = $status;
		
		if($r=$this->dao->create($data)){
			if(false!==$this->dao->add()){
				$authInfo['id'] = $uid=$this->dao->getLastInsID();
				$authInfo['groupid'] = $ru['role_id']=$data['groupid'];
				$ru['user_id']=$uid;
				$roleuser=M('RoleUser');
				$roleuser->add($ru);
		
// 				if($this->member_config['member_emailcheck']){
// 					$yourphp_auth = authcode($uid."-".$username."-".$email, 'ENCODE',$this->sysConfig['ADMIN_ACCESS'],3600*24*3);//3天有效期
// 					$url = 'http://'.$_SERVER['HTTP_HOST'].U('User/Login/regcheckemail?code='.$yourphp_auth);
// 					$click = "<a href=\"$url\" target=\"_blank\">".L('CLICK_THIS')."</a>";
// 					$message = str_replace(array('{click}','{url}','{sitename}'),array($click,$url,$this->Config['site_name']),$this->member_config['member_emailchecktpl']);
// 					$r = sendmail($email,L('USER_REGISTER_CHECKEMAIL').'-'.$this->Config['site_name'],$message,$this->Config);
// 					$this->assign('send_ok',1);
// 					$this->assign('username',$username);
// 					$this->assign('email',$email);
// 					$this->display('Login:emailcheck');
// 					exit;
// 				}
		
				$yourphp_auth_key = sysmd5($this->sysConfig['ADMIN_ACCESS'].$_SERVER['HTTP_USER_AGENT']);
				$yourphp_auth = authcode($authInfo['id']."-".$authInfo['groupid']."-".$authInfo['password'], 'ENCODE', $yourphp_auth_key);
				$this->assign('jumpUrl',$this->forward);
				
				/**
				 * 判断新帐号是否需要激活才能使用
				 * 如果是，则返回提示信息
				 * 否则将用户状态设置为已登录
				 */
				if($authInfo['status'] != 1){
					exit(json_encode(array('errno'=>7, 'code'=>'account disable', 'msg'=>L('account_disable'))));
				}
		
				
				$authInfo['username'] = $data['username'];
				$authInfo['email'] = $data['email'];
				cookie('auth',$yourphp_auth,$cookietime);
				cookie('username',$authInfo['username'],$cookietime);
				cookie('groupid',$authInfo['groupid'],$cookietime);
				cookie('userid',$authInfo['id'],$cookietime);
				cookie('email',$authInfo['email'],$cookietime);
		
				exit(json_encode(array('errno'=>0, 'code'=>'ok', 'msg'=>L('reg_ok'))));
			}else{
				exit(json_encode(array('errno'=>1, 'code'=>'fail', 'msg'=>L('reg_error'))));
			}
		}else{
			exit(json_encode(array('errno'=>1, 'code'=>'fail', 'msg'=>$this->dao->getError())));
		}
	}
}
?>