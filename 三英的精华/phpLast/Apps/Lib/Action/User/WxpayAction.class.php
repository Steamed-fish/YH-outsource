<?php

/**
 *
 * WxpayAction.class.php (微信支付操作)
 *
 * @package      	YOURPHP
 * @author          
 * @copyright     	
 * @license         
 * @version        	
 */
if(!defined("Yourphp")) exit("Access Denied");

class WxpayAction extends BaseAction
{
	function _initialize()
	{
		parent::_initialize();
		
		date_default_timezone_set('PRC');
	}
	
	/**
	 * 微信扫码支付异步回调
	 * 商户订单支付状态处理
	 */
	public function notifyUrl()
	{
		require_once APP_PATH . 'Common/wxpay/example/notify.php';
		
		if ($notify->trade_state)
		{
			$logfile = dirname(APP_PATH) . '/Cache/Logs/wxpay.' . date('Y-m-d') .'.log';
			$logtxt = "\r\n\r\n";
			$logtxt .= "微信扫码支付异步回调[". date('Y-m-d H:i:s') . "]：\r\n";
			
			$orderDao = M('Order');
			$order = $orderDao->getBySn($notify->out_trade_no);
			if ($order)
			{
				if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
				{
					$amount = $notify->total_fee/100.0;
					if ($amount == $order['amount'])
					{
						$payInfo = array();
						$payInfo['pay_code'] = $notify->transaction_id;
						$payInfo['pay_name'] = 'wxpay';
						$payInfo['pay_fee'] = $notify->total_fee / 100.0;
						$payInfo['is_online'] = 1;
						$payment = M('Payment');
						if ($payment->create($payInfo))
						{
							$payId = $payment->add($payInfo);
						
							$orderDao->pay_status = 2;
							$orderDao->pay_time = strtotime($notify->time_end);
							$orderDao->pay_fee = $notify->total_fee / 100.0;
							$orderDao->pay_id = $payId;
							$orderDao->pay_name = $payInfo['pay_name'];
							$orderDao->pay_code = $payInfo['pay_code'];
							$orderDao->save();
						
							$logtxt .= "info: 订单状态信息更新成功\r\n";
							
							$notify->SetReturn_code("SUCCESS");
							$this->SetReturn_msg('OK');

							// 如果订单中有邮箱存在，则将下单购买成功的信息使用邮件的形式发送到用户邮箱
							if (!empty($order['email']))
							{
								$config['mail_type'] =  $this->Config['mail_type'];
								$config['mail_server'] = $this->Config['mail_server'];
								$config['mail_port'] = $this->Config['mail_port'];
								$config['mail_user'] = $this->Config['mail_user'];
								$config['mail_password'] = $this->Config['mail_password'];
								$config['mail_auth'] = $this->Config['mail_auth'];
								$config['mail_ssl'] = $this->Config['mail_ssl'];
								$config['mail_from'] = $this->Config['mail_from'];
								//hpdkithkprehdceh
								$message = "您购买的\"<a href=\"".$_SERVER['HTTP_ORIGIN']."\">商品</a>\"下单成功，订单信息如下：<br>";
								$message .= '订单号：'.$order['sn'].'<br>';
								$message .= '支付时间：'.$notify->time_end.'<br>';
								$message .= '支付方式：微信扫码支付<br>';
								$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
								$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
							}
						}else {
							$logtxt .= "info: 支付记录信息创建失败\r\n";
							
							$notify->SetReturn_code("FAIL");
							$this->SetReturn_msg('UPDATEFAIL');
						}
					}else {
						// 订单金额错误
						$notify->SetReturn_code("FAIL");
						$this->SetReturn_msg('订单金额错误');
					}
				}else {
					$logtxt .= "info: 订单状态信息更新成功\r\n";
					
					$notify->SetReturn_code("SUCCESS");
					$this->SetReturn_msg('OK');
				}
			}else {
				$logtxt .= "info: 订单查询失败或不存在\r\n";
				
				$notify->SetReturn_code("FAIL");
				$this->SetReturn_msg('ORDER_NOT_EXIST');
			}
			// 日志写入
			file_put_contents($logfile, $logtxt, FILE_APPEND);
			file_put_contents($logfile, var_export($_REQUEST), FILE_APPEND);
			
			// 签名验证成功前提下，系统订单逻辑处理后返回结果给微信服务器
			$notify->ReplyNotify(false);
		}
	}

	public function pay()
	{
		unset($_REQUEST['_URL_']);
		// 验证签名是否正确
		if ($this->validateSign($_REQUEST))
		{
			$id = intval($_REQUEST['id']);
			$sn = $_REQUEST['sn'];
			$code_url = $_REQUEST['code_url'];
			$dao = M('Order');
			
			$order = $id>0 ? $dao->find($id) : $dao->getBySn($sn);
			
			if ($order)
			{
				$this->assign('validSign', true);
				$this->assign('amount', $order['amount']);
				$this->assign('code_url', $code_url);
				$this->assign('id', $order['id']);
				$this->assign('sn', $order['sn']);
				$this->assign('returnUrl', $_REQUEST['return_url']);
				$this->display('Order:wxpay');
			}else {
				$this->redirect('/');
			}
		}else {
			$this->assign('validSign', false);
			
			$this->display('Order:wxpay');
		}
	}
	
	/**
	 * 订单查询
	 * 查询交易订单在微信服务器中的状态
	 */
	public function query()
	{
		$id = intval($_REQUEST['id']);
		$sn = $_REQUEST['sn'];
		$dao = M('Order');
		$order = $id>0 ? $dao->find($id) : $dao->getBySn($sn);
		
		if ($order)
		{
			if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
			{
				require_once APP_PATH . 'Common/wxpay/lib/WxPay.Api.php';
					
				$input = new WxPayOrderQuery();
				$input->SetOut_trade_no($order['sn']);
				$orderQuery = WxPayApi::orderQuery($input);
				
				if (isset($orderQuery['result_code']) && isset($orderQuery['return_code']) && isset($orderQuery['trade_state'])
					&& $orderQuery['result_code'] == 'SUCCESS' && $orderQuery['return_code'] == 'SUCCESS' && $orderQuery['trade_state'] == 'SUCCESS')
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					exit(json_encode(array('errno'=>1, 'msg'=>'wait')));
				}
			}else {
				exit(json_encode(array('errno'=>0, 'msg'=>'success')));
			}
		}else {
			exit(json_encode(array('errno'=>2, 'msg'=>'ordernotexist')));
		}
	}
	
	public function returnUrl()
	{
		$id = intval($_REQUEST['id']);
		$sn = $_SERVER['sn'];
		$orderDao = M('Order');
		$order = $id ? $orderDao->find($id) : $orderDao->getBySn($sn);
		
		$logfile = dirname(APP_PATH) . '/Cache/Logs/wxpay.' . date('Y-m-d') .'.log';
		$logtxt = "\r\n";
		$logtxt .= "微信扫码支付同步回调[". date('Y-m-d H:i:s') . "]：\r\n";
		$returnMsg = '';
		$orderQuery = NULL;
		$sendMail = false;
			
		if ($order)
		{
			if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
			{
				require_once APP_PATH . 'Common/wxpay/lib/WxPay.Api.php';
					
				$input = new WxPayOrderQuery();
				$input->SetOut_trade_no($order['sn']);
				$orderQuery = WxPayApi::orderQuery($input);
				
				if ($orderQuery['return_code'] == 'SUCCESS')
				{
					if ($orderQuery['result_code'] == 'SUCCESS')
					{
						if ($orderQuery['trade_state'] == 'SUCCESS')
						{
							// 订单交易成功
							$payInfo = array();
							$payInfo['pay_code'] = $orderQuery['transaction_id'];
							$payInfo['pay_name'] = 'wxpay';
							$payInfo['pay_fee'] = $orderQuery['total_fee'] / 100.0;
							$payInfo['is_online'] = 1;
							$payment = M('Payment');
							if ($payment->create($payInfo))
							{
								$payId = $payment->add($payInfo);
								
								$orderDao->pay_status = 2;
								$orderDao->pay_time = strtotime($orderQuery['time_end']);
								$orderDao->pay_fee = $notify->total_fee / 100.0;
								$orderDao->pay_id = $payId;
								$orderDao->pay_name = $payInfo['pay_name'];
								$orderDao->pay_code = $payInfo['pay_code'];
								$orderDao->save();
								
								$logtxt .= "info: 订单状态信息更新成功\r\n";
								$sendMail = true;
								// 支付成功
								$returnMsg = json_encode(array('errno'=>0, 'msg'=>'success'));

								// 如果订单中有邮箱存在，则将下单购买成功的信息使用邮件的形式发送到用户邮箱
								if (!empty($order['email']))
								{
									$config['mail_type'] =  $this->Config['mail_type'];
									$config['mail_server'] = $this->Config['mail_server'];
									$config['mail_port'] = $this->Config['mail_port'];
									$config['mail_user'] = $this->Config['mail_user'];
									$config['mail_password'] = $this->Config['mail_password'];
									$config['mail_auth'] = $this->Config['mail_auth'];
									$config['mail_ssl'] = $this->Config['mail_ssl'];
									$config['mail_from'] = $this->Config['mail_from'];
									//hpdkithkprehdceh
									$message = "您购买的\"<a href=\"".$_SERVER['HTTP_ORIGIN']."\">商品</a>\"下单成功，订单信息如下：<br>";
									$message .= '订单号：'.$order['sn'].'<br>';
									$message .= '支付时间：'.$orderQuery['time_end'].'<br>';
									$message .= '支付方式：微信扫码支付<br>';
									$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
									$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
								}
							}else {
								$logtxt .= "info: 支付记录信息创建失败\r\n";
								// 结果处理中
								$returnMsg = json_encode(array('errno'=>1, 'msg'=>'processing'));
							}
							
							$this->assign('pay_status', 0);
							$this->assign('order_type', 0);
							
							$telephone = empty($order['mobile']) ? $this->teleTranslate($order['tel']) : $this->teleTranslate($order['mobile'], 3, 4);
							$this->assign('telephone', $telephone);
							
							// 订单收货地址
							$select = ' DISTINCT ';
							$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id='.$order['province'].') as `province`';
							$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`='.$order['city'].') as `city`';
							$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`='.$order['area'].') as `area`';
							$sql = 'SELECT '.$select.$province.','.$city.','.$area.' FROM `mqu_user_address` ';
							$address = $this->dao->query($sql);
							$this->assign('address', $address[0]);
							
							$this->assign('order', $order);
						}else {
							// 订单交易未完成
							switch ($orderQuery['trade_state'])
							{
								case 'NOTPAY':	// 未支付
									//$returnMsg = json_encode(array('errno'=>2, 'msg'=>'notpay'));
									$this->assign('pay_status', 2);
									break;
								case 'CLOSED':	// 支付已关闭
									// $returnMsg = json_encode(array('errno'=>3, 'msg'=>'closed'));
									$this->assign('pay_status', 3);
									break;
								case 'USERPAYING':	// 支付中
									// $returnMsg = json_encode(array('errno'=>4, 'msg'=>'userpaying'));
									$this->assign('pay_status', 4);
									break;
								case 'PAYERROR':	// 支付失败
									//$returnMsg = json_encode(array('errno'=>5, 'msg'=>'payerror', 'info'=>$orderQuery['trade_state_desc']));
									$this->assign('pay_status', 5);
									break;
							}
						}
					}else {
						// （从微信）订单查询失败
						//$returnMsg = json_encode(array('errno'=>6, 'msg'=>'fail'));
						$this->assign('pay_status', '6');
					}
				}else {
					// 订单查询操作请求失败
					//$returnMsg = json_encode(array('errno'=>7, 'msg'=>''));
					$this->assign('pay_status', 7);
				}
			}else {
				$logtxt .= "info: [sn:{$order['sn']}][success]\r\n";
				// 成功
				//$returnMsg = json_encode(array('errno'=>0, 'msg'=>'success'));
				$this->assign('pay_status', 0);
				$this->assign('order_type', 0);
				
				$telephone = empty($order['mobile']) ? $this->teleTranslate($order['tel']) : $this->teleTranslate($order['mobile'], 3, 4);
				$this->assign('telephone', $telephone);
				
				// 订单收货地址
				$select = ' DISTINCT ';
				$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id='.$order['province'].') as `province`';
				$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`='.$order['city'].') as `city`';
				$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`='.$order['area'].') as `area`';
				$sql = 'SELECT '.$select.$province.','.$city.','.$area.' FROM `mqu_user_address` ';
				$address = $this->dao->query($sql);
				$this->assign('address', $address[0]);
					
				$this->assign('order', $order);
			}
		}else {
			$logtxt .= "info: 系统订单查询失败或不存在\r\n";
			// 订单不存在
			// $returnMsg = json_encode(array('errno'=>-1, 'msg'=>'ordernotexist'));
			$this->assign('order_type', -1);
		}
		
		// 日志写入
		file_put_contents($logfile, $logtxt, FILE_APPEND);
		file_put_contents($logfile, var_export($_REQUEST), FILE_APPEND);
		if ($orderQuery)
		{
			file_put_contents($logfile, var_export($orderQuery), FILE_APPEND);
		}
		
		$this->assign('userid', $this->_userid);
		
		$this->display('Order:result');
	}
	
	private function validateSign($param)
	{
		require_once APP_PATH . 'Common/wxpay/lib/WxPay.Config.php';
		
		ksort($param);
		$string = $this->toUrlParams($param);
		// 在string后加入 KEY
		$string = $string . '&key=' . WxPayConfig::KEY;
		// md5加密
		$string = md5($string);
		// 将加密后的字符串转为大写并和原签名比较，同时返回比较结果
		return strtoupper($string) == $param['sign'];
	}

	private function teleTranslate($tele, $first=3, $last=3)
	{
		$length = strlen($tele);
		$first = ($first>0 && $first<$length/2) ? $first : 3;
		$last = ($last>0 && $last<$length/2) ? $last : 3;
	
		for ($i=0; $i<$length; $i++)
		{
			if($i>($first-1) && $i<($length-$last))
			{
				$tele[$i] = '*';
			}
		}
		return $tele;
	}
	
	private function toUrlParams($param)
	{
		$buff = '';
		foreach ($param as $k => $v)
		{
			if ($k != 'sign' && $v != '' && !is_array($v) && $k != 'sn' && $k != 'return_url')
			{
				$buff .= $k . '=' . $v . '&';
			}
		}
		
		$buff = trim($buff, '&');
		return $buff;
	}
	
}

?>