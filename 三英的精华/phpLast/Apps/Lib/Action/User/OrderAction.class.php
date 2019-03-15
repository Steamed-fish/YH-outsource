<?php
/**
 * 
 * OrderAction.class.php (订单管理)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	YourPHP企业网站管理系统 v2.1 2011-03-01 yourphp.cn $
 */
if(!defined("Yourphp")) exit("Access Denied");
class OrderAction extends BaseAction
{
	private $orderProductDao = NULL;
	private $_sn = NULL;
	private $amount = 0.0;
	
	function _initialize()
    {	
		parent::_initialize();
		date_default_timezone_set('PRC');
		
		$this->dao = M('Order');
		$this->assign('bcid',0);
		$user =  M('User')->find($this->_userid);
		$this->assign('vo',$user);
    }

    function ajax(){
    
    	$model= M('Order');
    	$id=intval($_POST['id']);
    	$order = $model->find($id);
    	if($order['userid']!=$this->_userid)die(json_encode(array('msg'=>L('do_empty'))));
    	$_POST = get_safe_replace($_POST);
    	if($_GET['do']=='saveaddress'){
    		$r = $model->save($_POST);
    		die(json_encode(array('id'=>1)));
    	}elseif($_GET['do'] =='order_status'){
    		$_POST['status']=3;
    		$_POST['confirm_time']=time();
    		$r = $model->save($_POST);
    		die(json_encode(array('id'=>1)));
    	}elseif($_GET['do'] =='pay_status'){
    		$_POST['pay_status']=3;
    		$r = $model->save($_POST);
    		die(json_encode(array('id'=>1)));
    	}elseif($_GET['do'] =='shipping_status'){
    		$_POST['shipping_status']=$_POST['num'];
    		unset($_POST['num']);
    		$_POST['accept_time']= $_POST['shipping_status']==2 ? time() : '';
    		$r = $model->save($_POST);
    		die(json_encode(array('id'=>1)));
    	}
    }
    
    private function alipay($amount)
    {
    	require_once APP_PATH . 'Common/alipay/config.php';
    	require_once APP_PATH . 'Common/alipay/pagepay/service/AlipayTradeService.php';
    	require_once APP_PATH . 'Common/alipay/pagepay/buildermodel/AlipayTradePagePayContentBuilder.php';
    	require_once APP_PATH . 'Common/alipay/aop/request/AlipayTradePagePayRequest.php';
    	 
    	//构造参数
    	$payRequestBuilder = new AlipayTradePagePayContentBuilder();
    	$payRequestBuilder->setBody('订单支付');
    	$payRequestBuilder->setSubject('订单支付');
    	$payRequestBuilder->setTotalAmount($amount);
    	$payRequestBuilder->setOutTradeNo($this->_sn);
    	
    	$aop = new AlipayTradeService($config);
    	
		$url = $aop->pagePay($payRequestBuilder, $config['return_url'], $config['notify_url']);
    	return $url;
    	
    }

    /**
     * 创建订单，并同时进行统一下单操作
     * 
     * @declare API
     */
    public function create()
    {
    	$productid = $_REQUEST['productid'];
    	$productid = is_array($productid) ? $productid : json_decode($productid);
    	$number = $_REQUEST['number'];
    	$number = is_array($number) ? $number : json_decode($number);
    	$paytype = intval($_REQUEST['paytype']);
    	$shipping = intval($_REQUEST['shipping']);
    	$invoice = intval($_REQUEST['invoice']);
    	$invoiceTitle = '';
    	
    	$productInfo = array();
    	if ($invoice)
    	{
    		$invoiceTitle = $_REQUEST['invoiceTitle'];
    	}
    	
    	if($this->_userid > 0)
    	{
    		$addrid = intval($_REQUEST['addrid']);
    		$cartid = $_REQUEST['cartid'];
    		$cartid = is_array($cartid) ? $cartid : json_decode($cartid);
    		
    		if ($addrid > 0)
    		{
    			$address = $this->getAddressInfo($addrid);
    		}else {
    			exit(json_encode(array('errno'=>201, 'msg'=>'缺少收货地址参数')));
    		}
    		
    		if (is_array($cartid))
    		{
    			$model = M('Cart');
    			$model->where(array('mqu_cart.id'=>array('in', $cartid)));
    			$model->where(array('mqu_cart.userid'=>$this->_userid));
    			$model->join('LEFT JOIN mqu_product ON mqu_cart.product_id=mqu_product.id');
    			$model->field('`number`,`mqu_product`.`id` as `productid`,`thumb`,`title` as `name`,`url`,`mqu_product`.`price`');
    			$productInfo = $model->select();
    		}elseif ($cartid > 0) {
    			$model = M('Cart');
    			$model->where('mqu_cart.id=%d AND mqu_cart.userid=%d', $cartid, $this->_userid);
    			$model->join('LEFT JOIN mqu_product ON mqu_cart.product_id=mqu_product.id');
    			$model->field('`number`,`mqu_product`.`id` as `productid`,`thumb`,`title` as `name`,`url`,`mqu_product`.`price`');
    			$productInfo = $model->select();
    		}
    		
    	}else {
    		$addrInfo = $this->getAddressInfo();
    	}
    	// 判断商品信息是否已存在
    	if (empty($productInfo))
    	{
    		// 如果还没有商品信息存在，则通过商品的id获取相关的商品信息
	    	if (is_array($productid) && is_array($number) && count($productid) && count($productid)==count($number)) {
	    		$product = M('Product');
	    		$product->where(array('id'=>array('in',$productid)));
	    		$product->field('id as productid,title as name,thumb,url,price');
	    		$productInfo = $product->select();
	    		 
	    		$numMap = array();
	    		foreach ($number as $k => $v)
	    		{
	    			$numMap[$productid[$k]] = $v;
	    		}
	    		foreach ($productInfo as $k => $v)
	    		{
	    			$productInfo[$k]['number'] = $numMap[$v['productid']];
	    		}
	    	}elseif ($productid>0) {
	    		$product = M('Product');
	    		$product->where('id=%d', $productid);
	    		$product->field('id as productid,'.($number>0 ? $number : '1').' as number,title as name,thumb,url,price');
	    		$productInfo = $product->select();
	    	}
    	}
    	
    	if (empty($productInfo))
    	{
    		exit(json_encode(array('errno'=>22, 'msg'=>'商品不存在')));
    	}
    	
    	/**
    	 * 订单总价
    	 * @var integer $amount
    	 */
    	$amount = 0.0;
    	foreach ($productInfo as $k => $info)
    	{
    		if (empty($info['productid']))
    		{
    			unset($productInfo[$k]);
    		}else {
    			// 计算订单总价
    			$amount += (empty($info['number']) ? 1 : $info['number'])*$info['price'];
    		}
    	}
    	

    	if (isset($addrInfo))
    	{
    		// 订单数据写入
    		$result = $this->writeOrder($productInfo, $addrInfo, $amount, $shipping, $invoice, $invoiceTitle);

    		$logfile = dirname(APP_PATH) . '/Cache/Logs/tenpay.' . date('Y-m-d') .'.log';
    		if ($result)
    		{
    			$payUrl = '';
    			$returnUrl = '';
    			switch ($paytype)
    			{
    				case 1:
    					$payUrl = $this->tenpay($this->amount);
    					break;
    				case 2:
    					$payUrl = $this->wxpay($this->amount, $returnUrl);
    					break;
    				case 3:
    					$payUrl = $this->alipay($this->amount);
    					break;
    				default:
    					$payUrl = $this->tenpay($this->amount);
    					break;
    			}
    			// 在订单创建成功之后,若为已登录用户，则将相应的购物车信息删除
    			if (is_array($cartid) && $this->_userid)
    			{
    				M('Cart')->where(array('userid'=>$this->_userid, 'id'=>array('in', $cartid)))->delete();
    			}elseif ($cartid > 0) {
    				M('Cart')->where(array('userid'=>$this->_userid, 'id'=>$cartid))->delete();
    			}
    			
    			exit(json_encode(array('errno'=>0, 'msg'=>'success', 'url'=>$payUrl)));
    		}else {
    			$logtxt .= "创建订单：失败\r\n";
    			file_put_contents($logfile, $logtxt, FILE_APPEND);
    			 
    			exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
    		}
    	}else {
    		exit(json_encode(array('errno'=>202, 'msg'=>'收货地址不存在')));
    	}
    }
    
    public function delete()
    {
    	$userid = intval(cookie('userid'));
    	if($userid > 0)
    	{
    		$orderid = intval($_POST['orderid']);
    		$orderid = is_array($orderid) ? $orderid : json_decode($orderid);
    		
    		if (is_array($orderid) && !empty($orderid))
    		{
    			M()->startTrans();
    			
    			$this->dao = M('Order');
    			$this->dao->where(array('userid'=>$userid,'id'=>array('in', $orderid)));
    			$orderDeleted = $this->dao->delete();
    			
    			if ($orderDeleted)
    			{
    				$orderDataModel = M('OrderData');
    				$orderDataModel->where(array('userid'=>$userid,'order_id'=>array('in', $orderid)));
    				$orderDataDeleted = $orderDataModel->delete();
    				
    				if ($orderDataDeleted >= $orderDeleted)
    				{
    					M()->commit();
    					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
    				}else {
    					M()->rollback();
    					exit(json_encode(array('errno'=>202, 'msg'=>'fail')));
    				}
    			}else {
    				M()->rollback();
    				exit(json_encode(array('errno'=>201, 'msg'=>'fail')));
    			}
    		}elseif ($orderid > 0) {
    			$this->dao = M('Order');
    			$this->dao->where(array('userid'=>$userid,'id'=>$orderid));
    			$orderDeleted = $this->dao->delete();
    			 
    			if ($orderDeleted)
    			{
    				$orderDataModel = M('OrderData');
    				$orderDataModel->where(array('userid'=>$userid,'order_id'=>$orderid));
    				$orderDataDeleted = $orderDataModel->delete();
    				
    				if ($orderDataDeleted >= $orderDeleted)
    				{
    					M()->commit();
    					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
    				}else {
    					M()->rollback();
    					exit(json_encode(array('errno'=>202, 'msg'=>'fail')));
    				}
    			}else {
    				M()->rollback();
    				exit(json_encode(array('errno'=>201, 'msg'=>'fail')));
    			}
    		}else {
    			exit(json_encode(array('errno'=>1, 'msg'=>'参数错误')));
    		}
    	}else {
    		exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
    	}
    }
    
	/**
	 * 获取用户前端上传地址信息
	 * @param number $addressid
	 * @return array
	 */
    private function getAddressInfo($addressid=0)
    {
    	/**
    	 * 判断用户是否已登录
    	 * 若用户已登录，通过地址id获取收货地址信息
    	 * 否则直接获取用户从前端上传的地址信息
    	 */
    	if ($this->_userid && $addressid > 0)
    	{
    		$address = M('UserAddress');
    		$address->where(array('id'=>$addressid, 'userid'=>$this->_userid));
    		$addrInfo = $address->find();
    	}else {
    		$addrInfo['consignee'] = $_REQUEST['consignee'];
    		$addrInfo['country'] = 0;
    		$addrInfo['province'] = $_REQUEST['province'];
    		$addrInfo['city'] = $_REQUEST['city'];
    		$addrInfo['area'] = $_REQUEST['area'];
    		$addrInfo['address'] = $_REQUEST['address'];
    		$addrInfo['mobile'] = $_REQUEST['mobile'];
    		$addrInfo['email'] = $_REQUEST['email'];
    		$addrInfo['zipcode'] = $_REQUEST['zipcode'];
    		$addrInfo['tel'] = '';
    		
    		// 验证地址格式
    		if (empty($addrInfo['consignee']))
    		{
    			exit(json_encode(array('errno'=>301, 'msg'=>'收货人不能为空')));
    		}
    		if (!preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $addrInfo['mobile']))
    		{
    			exit(json_encode(array('errno'=>302, 'msg'=>'手机号码不正确')));
    		}
    		if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $addrInfo['email']))
    		{
    			exit(json_encode(array('errno'=>303, 'msg'=>'邮箱不正确')));
    		}
    		if (empty($addrInfo['province']))
    		{
    			exit(json_encode(array('errno'=>304, 'msg'=>'收货地址不正确')));
    		}
    		if (empty($addrInfo['city']))
    		{
    			exit(json_encode(array('errno'=>305, 'msg'=>'收货地址不正确')));
    		}
    		if (empty($addrInfo['address']))
    		{
    			exit(json_encode(array('errno'=>306, 'msg'=>'详细地址不能为空')));
    		}
    		 
    		if (!preg_match('/^[1-9]\d{5}(?!\d)$/', $addrInfo['zipcode']))
    		{
    			$addrInfo['zipcode'] = '000000';
    		}
    	}
    	 
    	return $addrInfo;
    }

    /**
     * 获取用户订单信息列表
     * 
     * @declare API
     * @param int page	指定获取第page页的数据，默认为获取第1页数据，选传参数
     * @param int num	获取每页数据的行数，默认为10行，选传参数
     * @param int type	获取订单的类型，1：获取所有订单信息；2：获取待支付状态的订单列表；3：获取已发货而待收货状态的订单列表；默认为不筛选获取所有信息，选传参数
     * @备注	只有已登录的用户才能获取订单列表信息
     */
    public function getList()
    {
    	if ($this->_userid)
    	{
    		$page = intval($_REQUEST['page']);
    		$num = intval($_REQUEST['num']);
    		$type = intval($_REQUEST['type']);
    		$page = $page>0 ? $page : 1;
    		$num = $num>0 ? $num : 10;
    		
    		$where['userid'] = $this->_userid;
    		switch ($type)
    		{
    			case 1:	//所有
    				$count = $this->dao->where($where)->count('id');
    				break;
    			case 2:	// 待支付
    				$where['pay_status'] = array('LT', 2);
    				$count = $this->dao->where($where)->count('1');
    				break;
    			case 3:	// 已发货，待收货状态
    				$where['shipping_status'] = 1;
    				$where['pay_status'] = 2;
    				$count = $this->dao->where($where)->count('1');
    				break;
    			default:
    				$count = $this->dao->where($where)->count('1');
    				break;
    		}
    		
    		$this->dao->where($where);
    		$select = 'id,sn,consignee,add_time,pay_time,shipping_time,amount,order_amount';
    		$this->dao->field($select);
    		$this->dao->page($page, $num);
    		
    		$orders = $this->dao->select();
    		if ($orders)
    		{
    			$oid = array();
    			$o_map = array();
    			foreach ($orders as $k => $order)
    			{
    				$oid[] = $order['id'];
    				$o_map[$order['id']] = $k;
    				$orders[$k]['data'] = array();
    			}
    			
    			$productDao = M('OrderData');
    			$products = $productDao->field('order_id,product_id,price,product_price,number,product_url as url,product_thumb as thumb')->where(array('order_id'=>array('in',$oid)))->select();
    			
    			if ($products)
    			{
    				foreach ($products as $k => $product)
    				{
    					$orders[$o_map[$product['order_id']]]['data'] = $product;
    				}
    			}
    			
    			exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$orders, 'count'=>$count)));
    		}else {
    			exit(json_encode(array('errno'=>1, 'msg'=>'nodata')));
    		}
    	}else {
    		// 未登录不能获取订列表信息
    		exit(json_encode(array('errno'=>-1, 'msg'=>'please login')));
    	}
    }

	private function getMilliSecond()
	{
		$time = explode('.', microtime(true));
		if (isset($time[1]))
		{
			return $time[0].$time[1];
		}else {
			return $time[0].'0000';
		}
	}

	public function index()
	{
	
		if($_REQUEST['sn']){
			$sn = get_safe_replace($_REQUEST['sn']);
			unset($_REQUEST['sn']);
		}
		import('@.Action.Adminbase');
		$c=new AdminbaseAction();
		if($this->_userid || $sn){
			$map['userid']=intval($this->_userid);
			if($sn)$map['sn'] = $sn;
			$data=$c->_list(MODULE_NAME,$map);
		}
		$this->assign ( 'page', $data['page'] );
		$this->assign ( 'list', $data['list'] );
		$this->display();
	}
	
	public function pay()
	{
		if (!$this->_userid)
		{
			$this->success('请登录后操作', '/User/Login/index');
		}else {
			$paytype = intval($_REQUEST['paytype']);
			$id = $_REQUEST['id'];
			$sn = $_REQUEST['sn'];
	
			$order = $id ? $this->dao->find($id) : $this->dao->getBySn($sn);
	
			if ($order)
			{
				$this->_sn = $order['sn'];
				$returnUrl = '';
				switch ($paytype)
				{
					case 1:
						$returnUrl = $this->tenpay($order['amount']);
						break;
					case 2:
						$returnUrl = $this->wxpay($order['amount']);
						break;
					default:
						$returnUrl = $this->tenpay($order['amount']);
						break;
				}
				if ($returnUrl)
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'下单成功', 'url'=>$returnUrl)));
				}else {
					exit(json_encode(array('errno'=>1, 'msg'=>'下单失败')));
				}
			}else {
				exit(json_encode(array('errno'=>2, 'msg'=>'订单不存在')));
			}
		}
		 
	}
	
	/**
	 * 订单查询
	 * 
	 * @declare API
	 * @param int id	需要查询的订单的id
	 * @param string|int sn	订单号（订单号和订单id选择一个即可）
	 * @param string email	订单的通知邮箱，必传参数
	 */
	public function query()
	{
		$id = $_REQUEST['id'];
		$sn = $_REQUEST['sn'];
		$email = $_REQUEST['email'];
		
		$where = $id>0 ? '`id`='.$id : '`sn`=\''.$sn.'\'';
		
		if ($this->_userid)
		{
			$where .= ' AND `userid`='.$this->_userid;
		}else {
			if (empty($id) && empty($sn) || !preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email))
			{
				exit(json_encode(array('errno'=>-1, 'msg'=>'invalid parameter')));
			}
			$where .= ' AND `email`=\''.$email . '\'';
		}
		
		$select = 'id,sn,status,pay_status,shipping_status,consignee,address,zipcode,tel,mobile,'
				.'type,shipping_name,shipping_sn,pay_name,pay_code,amount,pay_fee,shipping_fee,'
				.'insure_fee,invoice_fee,order_amount,discount,pay_time,confirm_time,invoice,'
				.'invoice_title,postmessage,note';
		$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id=province) as `province`';
		$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`city`) as `city`';
		$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`area`) as `area`';
		
		$sql = 'SELECT '.$select.','.$province.','.$city.','.$area.' FROM `mqu_order` WHERE '.$where;
		
		$order = $this->dao->query($sql);
		
		if ($order)
		{
			$order_data = M('OrderData')->where(array('order_id'=>$order['0']['id']))->select();
			$order['0']['data'] = $order_data;
			exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$order[0])));
		}else {
			exit(json_encode(array('errno'=>1, 'msg'=>'ordernotexist')));
		}
	}
	
	private function shippingExist($shipping)
	{
		$s = M('shipping')->where(array('id'=>$shipping,'status'=>'1'))->find();
		if ($s)
		{
			return $s;
		}else {
			return false;
		}
	}

	public function show()
	{
		$sn = intval($_REQUEST['sn']);
		$id= intval($_REQUEST['id']);
		$order = $id ? $this->dao->find($id) : $this->dao->getBySn($sn);
		if(!$order && $order['userid']!=$this->_userid) $this->success (L('do_empty'));
	
		$order_data = M('Order_data')->where("order_id='{$order[id]}'")->select();
		$amount=0;
		foreach($order_data as $key=>$r){
			$amount = $amount+$r['price'];
		}
	
	
		$Payment = M('Payment')->find($order['pay_id']);
		$Shipping = M('Shipping')->find($shippingid);
		$Area = M('Area')->getField('id,name');
		$this->assign('Area',$Area);
		$this->assign('Payment',$Payment);
		$this->assign('Shipping',$Shipping);
	
	
		if($order['pay_code'] && $order['status']<2 && $order['pay_status']<2){
				
			$aliapy_config = unserialize($Payment['pay_config']);
			$aliapy_config['order_sn']= $order['sn'];
			$aliapy_config['order_amount']= $order['order_amount'];
			$aliapy_config['body'] = $order['consignee'].' '.$order['postmessage'];
			import("@.Pay.".$order['pay_code']);
			$pay=new $order['pay_code']($aliapy_config);
			$paybutton = $pay->get_code();
			$this->assign('paybutton',$paybutton);
		}
		$this->assign('order',$order);
		$this->assign('order_data',$order_data);
		$this->assign('amount',$amount);
		$this->display();
	}
	
	private function tenpay($amount)
	{
		require_once APP_PATH . '/Common/tenpay/tenpay_config.php';
		require_once APP_PATH . '/Common/tenpay/classes/RequestHandler.class.php';
		
		/* 创建支付请求对象 */
		$reqHandler = new RequestHandler();
		$reqHandler->init();
		$reqHandler->setKey($key);
		$reqHandler->setGateUrl("https://gw.tenpay.com/gateway/pay.htm");
		$body = '订单支付';
		$subject = '订单支付';
		
		//----------------------------------------
		//设置支付参数
		//----------------------------------------
		$reqHandler->setParameter("partner", $partner);
		$reqHandler->setParameter("out_trade_no", $this->_sn);
		$reqHandler->setParameter("total_fee", $amount*100);  //总金额
		$reqHandler->setParameter("return_url",  'http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . $return_url);
		$reqHandler->setParameter("notify_url", 'http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . $notify_url);
		$reqHandler->setParameter("body", $body);
		$reqHandler->setParameter("bank_type", "DEFAULT");  	  //银行类型，默认为财付通
		//用户ip
		$reqHandler->setParameter("spbill_create_ip", $_SERVER['REMOTE_ADDR']);//客户端IP
		$reqHandler->setParameter("fee_type", "1");					//币种
		$reqHandler->setParameter("subject", $subject);				//商品名称，（中介交易时必填）
		
		//系统可选参数
		$reqHandler->setParameter("sign_type", "MD5");  	 	  //签名方式，默认为MD5，可选RSA
		$reqHandler->setParameter("service_version", "1.0"); 	  //接口版本号
		$reqHandler->setParameter("input_charset", "UTF-8");   	  //字符集
		$reqHandler->setParameter("sign_key_index", "1");    	  //密钥序号
		
		//业务可选参数
		$reqHandler->setParameter("attach", "");             	  //附件数据，原样返回就可以了
		$reqHandler->setParameter("product_fee", "");        	  //商品费用
		$reqHandler->setParameter("transport_fee", "0");      	  //物流费用
		$reqHandler->setParameter("time_start", date("YmdHis"));  //订单生成时间
		$reqHandler->setParameter("time_expire", "");             //订单失效时间
		$reqHandler->setParameter("buyer_id", "");                //买方财付通帐号
		$reqHandler->setParameter("goods_tag", "");               //商品标记
		$reqHandler->setParameter("trade_mode","1");              //交易模式（1.即时到帐模式，2.中介担保模式，3.后台选择（卖家进入支付中心列表选择））
		$reqHandler->setParameter("transport_desc","");           //物流说明
		$reqHandler->setParameter("trans_type","1");              //交易类型
		$reqHandler->setParameter("agentid","");                  //平台ID
		$reqHandler->setParameter("agent_type","");               //代理模式（0.无代理，1.表示卡易售模式，2.表示网店模式）
		$reqHandler->setParameter("seller_id","");                //卖家的商户号
		
		//请求的URL
		$reqUrl = $reqHandler->getRequestURL();
		
		//获取debug信息,建议把请求和debug信息写入日志，方便定位问题
		/**/
		$debugInfo = $reqHandler->getDebugInfo();
		$logfile = dirname(APP_PATH) . '/Cache/Logs/tenpay.' . date('Y-m-d') .'.log';

		$logtxt = "\r\n";
		$logtxt .= "财付通下单支付请求[". date('Y-m-d H:i:s') . "]：\r\n";
		$logtxt .= "url: ".$reqUrl."\r\n";
		$logtxt .= "debug:".$debugInfo."\r\n";
		$logtxt .= 'return_url:' .'http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . $return_url. "\r\n";
		$logtxt .= 'notify_url:' . 'http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . $notify_url . "\r\n";
		
		file_put_contents($logfile, $logtxt, FILE_APPEND);
		
		return $reqUrl;
	}
	
	/**
	 * 
	 */
	public function unifiedOrder()
	{
		$productid = $_REQUEST['productid'];
		$productid = is_array($productid) ? $productid : json_decode($productid);
		$number = $_REQUEST['number'];
		$number = is_array($number) ? $number : json_decode($number);
    	$shipping = intval($_REQUEST['shipping']);	// 物流方式
		$productInfo = array();
		if ($this->_userid)
		{
			// 用户已登录的情况下，通过收货地址的id确定用户的收货地址
			$addrid = intval($_POST['addrid']);
			$cartid = $_REQUEST['cartid'];
			$cartid = is_array($cartid) ? $cartid : json_decode($cartid);
			// 判断用户的收货地址是否存在，如果不存在，返回错误信息，并退出程序
			if ($addrid > 0)
			{
				$address = M('UserAddress');
				$address->where(array('id'=>$addrid, 'userid'=>$this->_userid));
				$addrInfo = $address->find();
			}else {
				exit(json_encode(array('errno'=>201, 'msg'=>'缺少收货地址参数')));
			}
			
			if (is_array($cartid))
			{
				$model = M('Cart');
				$model->where(array('mqu_cart.id'=>array('in', $cartid), 'mqu_product.status'=>1));
				$model->where(array('mqu_cart.userid'=>$this->_userid));
				$model->join('LEFT JOIN mqu_product ON mqu_cart.product_id=mqu_product.id');
				$model->field('`number`,`mqu_product`.`id` as `productid`,`thumb`,`title` as `name`,`url`,`mqu_product`.`price`');
				$productInfo = $model->select();
			}elseif ($cartid > 0) {
				$model = M('Cart');
				$model->where('mqu_cart.id=%d AND mqu_cart.userid=%d AND mqu_product.status=%d', $cartid, $this->_userid,1);
				$model->join('LEFT JOIN mqu_product ON mqu_cart.product_id=mqu_product.id');
				$model->field('`number`,`mqu_product`.`id` as `productid`,`thumb`,`title` as `name`,`url`,`mqu_product`.`price`');
				$productInfo = $model->select();
			}
		}else {
			$addrInfo = $this->getAddressInfo();
		}
		
		$paytype = intval($_REQUEST['paytype']);
		$invoice =  intval($_REQUEST['invoice']);
		// 判断用户是否需要发票
		if ($invoice)
		{
			$invoiceTitle = $_REQUEST['invoiceTitle'];
		}else {
			$invoiceTitle = '';
		}
		
		if (empty($productInfo))
		{
			if (is_array($productid) && is_array($number) && count($productid) && count($productid)==count($number))
			{
				$product = M('Product');
				$product->where(array('id'=>array('in',$productid),'status'=>1));
				$product->field('id as productid,title as name,thumb,url,price');
				$productInfo = $product->select();
				 
				$numMap = array();
				foreach ($number as $k => $v)
				{
					$numMap[$productid[$k]] = $v;
				}
				foreach ($productInfo as $k => $v)
				{
					$productInfo[$k]['number'] = $numMap[$v['productid']];
				}
			}elseif ($productid > 0) {
				$product = M('Product');
				$product->where(array('id'=>$productid,'status'=>1));
				$product->field('id as productid,'.($number>0 ? $number : '1').' as number,title as name,thumb,url,price');
				$productInfo = $product->select();
			}
		}
		// 判断产品数据是否存在
		if (empty($productInfo))
		{
			exit(json_encode(array('errno'=>4, 'msg'=>'productnotexist')));
		}else {
			$amount = 0.0;
			foreach ($productInfo as $k => $v)
			{
				$amount += $v['number'] * $v['price'];
			}
			
			// 订单数据保存
			$result = $this->writeOrder($productInfo, $addrInfo, $amount, $shipping, $invoice, $invoiceTitle);
			if ($result)
			{
				$payUrl = '';	// 支付中转url
				switch ($paytype)
				{
					case 1:
						$payUrl = $this->tenpay($this->amount);
						break;
					case 2:
						$payUrl = $this->wxpay($this->amount, $returnUrl);
						break;
					default:
						$payUrl = $this->tenpay($this->amount);
						break;
				}
				// 在订单创建成功之后 将相应的购物车信息删除
				if ($this->_userid)
				{
					if (is_array($cartid))
					{
						M('Cart')->where(array('userid'=>$this->_userid, 'id'=>array('in', $cartid)))->delete();
					}elseif ($cartid > 0) {
						M('Cart')->where(array('userid'=>$this->_userid, 'id'=>$cartid))->delete();
					}
				}
				// 统一下单成功后返回支付的跳转url
				exit(json_encode(array('errno'=>0, 'msg'=>'success', 'url'=>$payUrl)));
			}
		}
	}

	/**
	 * 订单创建时数据写入操作
	 * @param array $productInfo
	 * @param array $addrInfo
	 * @param float $amount
	 * @param number $number
	 * @return boolean
	 */
	private function writeOrder($productInfo, $addrInfo, $amount, $shipping=0, $invoice=0, $invoiceTitle='')
	{
		// 开户事务
		M()->startTrans();
	
		$this->_sn = $this->getMilliSecond();
	
		$this->dao->sn = $this->_sn;
		$this->dao->userid = intval(cookie('userid'));
		$this->dao->consignee = $addrInfo['consignee'];
		$this->dao->country = $addrInfo['country'];
		$this->dao->province = $addrInfo['province'];
		$this->dao->city = $addrInfo['city'];
		$this->dao->area = $addrInfo['area'];
		$this->dao->address = $addrInfo['address'];
		$this->dao->zipcode = $addrInfo['zipcode'];
		$this->dao->tel = $addrInfo['tel'];
		$this->dao->mobile = $addrInfo['mobile'];
		$this->dao->email = $addrInfo['email'];
		$this->dao->order_amount = $amount;
		$this->dao->add_time = time();
		$this->dao->invoice = $invoice;
		$this->dao->invoice_title = $invoiceTitle;
		// order_amount+shipping_fee=amount
		if (($shipping = $this->shippingExist($shipping)) !== false)
		{
			$this->dao->shipping_id = $shipping['id'];
			$this->dao->shipping_name = $shipping['name'];
			$this->dao->shipping_fee = $shipping['first_price'];
			if ($shipping['is_insure'])
			{
				$this->dao->insure_free = $shipping['insure_fee'];
			}
			$this->dao->amount = $amount+$shipping['first_price'];
		}else {
			$this->dao->amount = $amount;
		}
		$this->amount = $this->dao->amount;
		$orderRes = $this->dao->add();
	
		if ($orderRes)
		{
			$flag = false;
			$orderDataModel = NULL;
			$orderDataRes = NULL;
			foreach ($productInfo as $k => $v)
			{
				$orderDataModel = M('OrderData');
				$orderDataModel->userid = intval(cookie('userid'));
				$orderDataModel->order_id = $orderRes;
				$orderDataModel->product_id = $v['productid'];
				$orderDataModel->product_thumb = $v['thumb'];
				$orderDataModel->product_name = $v['name'];
				$orderDataModel->product_url = $v['url'];
				$orderDataModel->product_price = $v['price'];
				$orderDataModel->price = $v['price'];
				$orderDataModel->number = empty($v['number']) ? 1 : $v['number'];
				$orderDataRes = $orderDataModel->add();
	
				$this->orderProductDao[] = $orderDataModel;
	
				if (!$orderDataRes)
				{
					$flag = true;
				}
			}
			if (!$flag)
			{
				M()->commit();
				return $orderRes;
			}else {
				M()->rollback();
				return 0;
			}
		}else {
			M()->rollback();
			return 0;
		}
	}
	
	private function wxpay($amount, &$returnUrl='')
	{

		require_once APP_PATH . 'Common/wxpay/lib/WxPay.Data.php';
		require_once APP_PATH . 'Common/wxpay/example/WxPay.NativePay.php';
		require_once APP_PATH . 'Common/wxpay/example/wxpay_config.php';
		
		$notify = new NativePay();
		$input = new WxPayUnifiedOrder();
		$input->SetBody("订单支付");
		$input->SetOut_trade_no($this->_sn);
		$input->SetTotal_fee($amount*100);
		$input->SetTime_start(date("YmdHis"));
		$input->SetTime_expire(date("YmdHis", time() + 3600));
		$input->SetNotify_url($_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . '/Wxpay/notifyUrl');
		$input->SetTrade_type("NATIVE");
		$input->SetProduct_id($this->dao->id);
		$result = $notify->GetPayUrl($input);
		// 判断统一下单是否成功
		if (isset($result['return_code']) && isset($result['result_code'])
				&& $result['return_code']=='SUCCESS' && $result['result_code']=='SUCCESS')
		{
// 			$this->assign('code_url', $result['code_url']);
		
// 			$addrid = intval($_POST['addrid']);
// 			$select = '`id`,`consignee`,`email`,`address`,`zipcode`,`tel`,`mobile`,`isdefault`';
// 			$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id=province) as `province`';
// 			$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`city`) as `city`';
// 			$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`area`) as `area`';
// 			$where = 'WHERE `userid`=' . $userid . ' AND `id`=' . $addrid;
// 			$sql = 'SELECT '.$select.','.$province.','.$city.','.$area.' FROM `mqu_user_address` '.$where;
// 			$address = $this->dao->query($sql);
// 			$this->assign($address);
// 			$amount = $this->dao->amount;
// 			$product = array();
// 			foreach ($this->orderProductDao as $op)
// 			{
// 				$product[] = array('thumb'=>$op->product_thumb,'title'=>$op->product_name,'price'=>$op->price,'number'=>$op->number);
// 			}
// 			$this->assign('amount', $amount);
// 			$this->assign('product', $product);
		
// 			$this->display('Home:Order:pay');
			$returnUrl = $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . '/Wxpay/returnUrl';
			$url = 'http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . '/Wxpay/pay?';
			foreach ($result as $k => $v)
			{
				$url .= $k . '=' . $v . '&';
			}
			$url .= 'sn=' . $this->_sn . '&';
			$url .= 'return_url=http://' . $_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . '/Wxpay/returnUrl';
			return $url;
		}else {
			return '';
		}
	}
	
}
?>