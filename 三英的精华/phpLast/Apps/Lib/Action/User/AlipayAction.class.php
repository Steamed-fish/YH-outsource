<?php
/**
 *
 * AlipayAction.class.php (支付宝网站支付操作)
 *
 * @package      	YOURPHP
 * @author
 * @copyright
 * @license
 * @version
 */
if(!defined("Yourphp")) exit("Access Denied");

class AlipayAction extends BaseAction
{
	function _initialize()
	{
		parent::_initialize();
		
		date_default_timezone_set('PRC');
	}
	
	public function returnUrl()
	{
		require_once APP_PATH . 'Common/alipay/config.php';
		require_once APP_PATH . 'Common/alipay/pagepay/service/AlipayTradeService.php';
		require_once APP_PATH . 'Common/alipay/pagepay/buildermodel/AlipayTradeQueryContentBuilder.php';
		
		$arr=$_GET;
		unset($arr['_URL_']);
		$alipaySevice = new AlipayTradeService($config);
		$result = $alipaySevice->check($arr);
		
		$logfile = dirname(APP_PATH) . '/Cache/Logs/alipay.' . date('Y-m-d') .'.log';
		$logtxt = "\r\n";
		$logtxt .= "支付宝网站支付同步回调[". date('Y-m-d H:i:s') . "]：\r\n";
		$returnMsg = '';
		
		/* 实际验证过程建议商户添加以下校验。
		 1、商户需要验证该通知数据中的out_trade_no是否为商户系统中创建的订单号，
		 2、判断total_amount是否确实为该订单的实际金额（即商户订单创建时的金额），
		 3、校验通知中的seller_id（或者seller_email) 是否为out_trade_no这笔单据的对应的操作方（有的时候，一个商户可能有多个seller_id/seller_email）
		 4、验证app_id是否为该商户本身。
		 */
		if ($result)
		{
			/**
			 * 
			 */
			
			$dao = M('Order');
			$order = $dao->getBySn($_GET['out_trade_no']);
			
			if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
			{
				$sendMail = false;
				//商户订单号，商户网站订单系统中唯一订单号
				$out_trade_no = trim($_GET['out_trade_no']);
					
				//支付宝交易号
				$trade_no = trim($_GET['trade_no']);
				//请二选一设置
				//构造参数
				$RequestBuilder = new AlipayTradeQueryContentBuilder();
				$RequestBuilder->setOutTradeNo($out_trade_no);
				$RequestBuilder->setTradeNo($trade_no);
				
				$aop = new AlipayTradeService($config);
					
				/**
				 * alipay.trade.query (统一收单线下交易查询)
				 * @param $builder 业务参数，使用buildmodel中的对象生成。
				 * @return $response 支付宝返回的信息
				 */
				$response = $aop->Query($RequestBuilder);
				if ($response->code == '10000')
				{
					if ($response->trade_status == 'TRADE_SUCCESS')
					{
						/**
						 * 判断订单金额是否正确
						 * 如果是，则修改订单交易状态为已付款状态
						 */
						if ($order['amount'] == $response->total_amount)
						{
							// 交易成功，更新订单交易状态
							$payInfo = array();
							$payInfo['pay_code'] = $response->trade_no;
							$payInfo['pay_name'] = 'alipay';
							$payInfo['pay_fee'] = $response->total_amount;
							$payInfo['is_online'] = 1;
							$payment = M('Payment');
							if ($payment->create($payInfo))
							{
								$payId = $payment->add($payInfo);
									
								$dao->pay_status = 2;
								$dao->pay_time = strtotime($response->send_pay_date);
								$dao->pay_fee = $notify->total_fee / 100.0;
								$dao->pay_id = $payId;
								$dao->pay_name = $payInfo['pay_name'];
								$dao->pay_code = $payInfo['pay_code'];
								$dao->save();
									
								$sendMail = true;
								$logtxt .= "info: 订单状态信息更新成功\r\n";
								// 支付成功
								$returnMsg = json_encode(array('errno'=>0, 'msg'=>'success'));
							}else {
								$logtxt .= "info: 支付记录信息创建失败\r\n";
								// 结果处理中
								$returnMsg = json_encode(array('errno'=>4, 'msg'=>'processing'));
							}
						}else {
							$logtxt .= "info: 订单金额不正确 [query:{$response->total_amount}][order:{$order['amount']}]\r\n";
							// 订单金额不正确
							$returnMsg = json_encode(array('errno'=>5, 'msg'=>'invalid amount'));
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
						$address = M()->query($sql);
						$this->assign('address', $address[0]);
							
						$this->assign('order', $order);
					}elseif ($response->trade_status == 'WAIT_BUYER_PAY') {
						$this->assign('pay_status', 2);
						$logtxt .= "info: 用户未支付，等待用户付款\r\n";
						// 等待付款
						$returnMsg = json_encode(array('errno'=>1, 'msg'=>'wait buyer pay'));
					}elseif ($response->trade_status == 'TRADE_FINISHED') {
						$logtxt .= "info: 交易完成，交易结束\r\n";
						// 交易结束，不可退款
						/**
						 * 判断订单金额是否正确
						 * 如果是，则修改订单交易状态为已付款状态
						 */
						if ($order['amount'] == $response->total_amount)
						{
							// 交易成功，更新订单交易状态
							$payInfo = array();
							$payInfo['pay_code'] = $response->trade_no;
							$payInfo['pay_name'] = 'alipay';
							$payInfo['pay_fee'] = $response->total_amount;
							$payInfo['is_online'] = 1;
							$payment = M('Payment');
							if ($payment->create($payInfo))
							{
								$payId = $payment->add($payInfo);
									
								$dao->pay_status = 2;
								$dao->pay_time = strtotime($response->send_pay_date);
								$dao->pay_fee = $notify->total_fee / 100.0;
								$dao->pay_id = $payId;
								$dao->pay_name = $payInfo['pay_name'];
								$dao->pay_code = $payInfo['pay_code'];
								$dao->save();
									
								$sendMail = true;
								$logtxt .= "info: 订单状态信息更新成功\r\n";
								// 支付成功
								$returnMsg = json_encode(array('errno'=>0, 'msg'=>'success'));
							}else {
								$logtxt .= "info: 支付记录信息创建失败\r\n";
								// 结果处理中
								$returnMsg = json_encode(array('errno'=>4, 'msg'=>'processing'));
							}
						}else {
							$logtxt .= "info: 订单金额不正确 [query:{$response->total_amount}][order:{$order['amount']}]\r\n";
							// 订单金额不正确
							$returnMsg = json_encode(array('errno'=>5, 'msg'=>'invalid amount'));
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
						$address = M()->query($sql);
						$this->assign('address', $address[0]);
							
						$this->assign('order', $order);
					}else {
						$this->assign('pay_status', 3);
						$logtxt .= "info: 交易已关闭\r\n";
						// 交易已关闭
						$returnMsg = json_encode(array('errno'=>3, 'msg'=>'trade closed'));
					}
				}else {
					$this->assign('pay_status', 5);
					$logtxt .= "info: 订单查询查询失败[alipay:code:{$response->code}]\r\n";
					// 订单查询失败
					$returnMsg = json_encode(array('errno'=>6, 'msg'=>'query order fail'));
				}
			}else {
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
				$address = M()->query($sql);
				$this->assign('address', $address[0]);
					
				$this->assign('order', $order);
				
				$logtxt .= "info: 支付成功\r\n";
				// 支付成功
				$returnMsg = json_encode(array('errno'=>0, 'msg'=>'success'));
			}
			
			// 如果订单中有邮箱存在，则将下单购买成功的信息使用邮件的形式发送到用户邮箱
			if (!empty($order['email']) && $sendMail)
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
				$message .= '支付时间：'.$response->send_pay_date.'<br>';
				$message .= '支付方式：支付宝支付<br>';
				$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
				$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
			}
		}else {
			$this->assign('order_type', -1);
			$logtxt .= "info: 同步回调签名验证错误\r\n";
			// 签名验证错误
			$returnMsg = json_encode(array('errno'=>7, 'msg'=>'invalid sign'));
		}
		// 日志写入
		file_put_contents($logfile, $logtxt, FILE_APPEND);
		file_put_contents($logfile, var_export($arr, true), FILE_APPEND);
// 		exit($returnMsg);
		$this->display('Order:result');
	}
	
	public function notifyUrl()
	{
		require_once APP_PATH . 'Common/alipay/config.php';
		require_once APP_PATH . 'Common/alipay/pagepay/service/AlipayTradeService.php';
		require_once APP_PATH . 'Common/alipay/pagepay/buildermodel/AlipayTradeQueryContentBuilder.php';
		
		$arr = $_POST;
		unset($arr['_URL_']);
		$alipaySevice = new AlipayTradeService($config);
		$alipaySevice->writeLog(var_export($_POST,true));
		$result = $alipaySevice->check($arr);

		$logfile = dirname(APP_PATH) . '/Cache/Logs/alipay.' . date('Y-m-d') .'.log';
		$logtxt = "\r\n";
		$logtxt .= "支付宝网站支付同步回调[". date('Y-m-d H:i:s') . "]：\r\n";
		$returnMsg = '';
		
		/**
		 * 判断异步回调签名验证是否成功
		 */
		if ($result)
		{
			$dao = M('Order');
			$order = $dao->getBySn($_POST['out_trade_no']);
				
			if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
			{
				$sendMail = false;
				//商户订单号，商户网站订单系统中唯一订单号
				$out_trade_no = trim($_POST['out_trade_no']);
					
				//支付宝交易号
				$trade_no = trim($_POST['trade_no']);
				//请二选一设置
				//构造参数
				$RequestBuilder = new AlipayTradeQueryContentBuilder();
				$RequestBuilder->setOutTradeNo($out_trade_no);
				$RequestBuilder->setTradeNo($trade_no);
				
				$aop = new AlipayTradeService($config);
					
				/**
				 * alipay.trade.query (统一收单线下交易查询)
				 * @param $builder 业务参数，使用buildmodel中的对象生成。
				 * @return $response 支付宝返回的信息
				 */
				$response = $aop->Query($RequestBuilder);
				if ($response->code == '10000')
				{
					if ($response->trade_status == 'TRADE_SUCCESS')
					{
						/**
						 * 判断订单金额是否正确
						 * 如果是，则修改订单交易状态为已付款状态
						 */
						if ($order['amount'] == $response->total_amount)
						{
							// 交易成功，更新订单交易状态
							$payInfo = array();
							$payInfo['pay_code'] = $response->trade_no;
							$payInfo['pay_name'] = 'alipay';
							$payInfo['pay_fee'] = $response->total_amount;
							$payInfo['is_online'] = 1;
							$payment = M('Payment');
							if ($payment->create($payInfo))
							{
								$payId = $payment->add($payInfo);
									
								$dao->pay_status = 2;
								$dao->pay_time = strtotime($response->send_pay_date);
								$dao->pay_fee = $notify->total_fee / 100.0;
								$dao->pay_id = $payId;
								$dao->pay_name = $payInfo['pay_name'];
								$dao->pay_code = $payInfo['pay_code'];
								$dao->save();
									
								$sendMail = true;
								$logtxt .= "info: 订单状态信息更新成功\r\n";
								// 支付成功
								$returnMsg = 'success';
							}else {
								$logtxt .= "info: 支付记录信息创建失败\r\n";
								// 结果处理中
								$returnMsg = 'fail';
							}
						}else {
							$logtxt .= "info: 订单金额不正确 [query:{$response->total_amount}][order:{$order['amount']}]\r\n";
							// 订单金额不正确
							$returnMsg = 'fail';
						}
					}elseif ($response->trade_status == 'WAIT_BUYER_PAY') {
						$logtxt .= "info: 用户未支付，等待用户付款\r\n";
						// 等待付款
						$returnMsg = json_encode(array('errno'=>1, 'msg'=>'wait buyer pay'));
					}elseif ($response->trade_status == 'TRADE_FINISHED') {
						$logtxt .= "info: 交易完成，交易结束\r\n";
						// 交易结束，不可退款
						/**
						 * 判断订单金额是否正确
						 * 如果是，则修改订单交易状态为已付款状态
						 */
						if ($order['amount'] == $response->total_amount)
						{
							// 交易成功，更新订单交易状态
							$payInfo = array();
							$payInfo['pay_code'] = $response->trade_no;
							$payInfo['pay_name'] = 'alipay';
							$payInfo['pay_fee'] = $response->total_amount;
							$payInfo['is_online'] = 1;
							$payment = M('Payment');
							if ($payment->create($payInfo))
							{
								$payId = $payment->add($payInfo);
									
								$dao->pay_status = 2;
								$dao->pay_time = strtotime($response->send_pay_date);
								$dao->pay_fee = $notify->total_fee / 100.0;
								$dao->pay_id = $payId;
								$dao->pay_name = $payInfo['pay_name'];
								$dao->pay_code = $payInfo['pay_code'];
								$dao->save();
									
								$sendMail = true;
								$logtxt .= "info: 订单状态信息更新成功\r\n";
								// 支付成功
								$returnMsg = 'success';
							}else {
								$logtxt .= "info: 支付记录信息创建失败\r\n";
								// 结果处理中
								$returnMsg = 'fail';
							}
						}else {
							$logtxt .= "info: 订单金额不正确 [query:{$response->total_amount}][order:{$order['amount']}]\r\n";
							// 订单金额不正确
							$returnMsg = 'fail';
						}
					}else {
						$logtxt .= "info: 交易已关闭\r\n";
						// 交易已关闭
						$dao->order_status = 3;	// 交易关闭，订单作废
						$dao->save();
						$returnMsg = 'success';
					}
				}else {
					$logtxt .= "info: 订单查询查询失败[alipay:code:{$response->code}]\r\n";
					// 订单查询失败
					$returnMsg = 'fail';
				}
			}else {
				$logtxt .= "info: 支付成功\r\n";
				// 支付成功
				$returnMsg = 'success';
			}
			
			// 如果订单中有邮箱存在，则将下单购买成功的信息使用邮件的形式发送到用户邮箱
			if (!empty($order['email']) && $sendMail)
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
				$message .= '支付时间：'.$response->send_pay_date.'<br>';
				$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
				$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
			}
		}else {
			$logtxt .= "info: 同步回调签名验证错误\r\n";
			// 签名验证错误
			$returnMsg = 'fail';
		}
		
		// 日志写入
		file_put_contents($logfile, $logtxt, FILE_APPEND);
		file_put_contents($logfile, var_export($arr, true), FILE_APPEND);
		exit($returnMsg);
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
	
	
}

?>