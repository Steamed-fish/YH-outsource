<?php
/**
 *
 * WxpayAction.class.php (财付通支付操作)
 *
 * @package      	YOURPHP
 * @author
 * @copyright
 * @license
 * @version
 */
if(!defined("Yourphp")) exit("Access Denied");

class TenpayAction extends BaseAction
{
	function _initialize()
	{
		parent::_initialize();
		
		date_default_timezone_set('PRC');
		
		$this->dao = M('Order');
		$this->assign('bcid',0);
		$user =  M('User')->find($this->_userid);
		$this->assign('vo',$user);
	}

	/**
	 * 财付通支付同步回调处理
	 */
	public function returnUrl()
	{
		require_once APP_PATH . '/Common/tenpay/classes/ResponseHandler.class.php';
		require_once APP_PATH . '/Common/tenpay/classes/function.php';
		require_once APP_PATH . '/Common/tenpay/tenpay_config.php';
		 
		/* 创建支付应答对象 */
		$resHandler = new ResponseHandler();
		$resHandler->setKey($key);
		//通知id
		$notify_id = $resHandler->getParameter("notify_id");
		//商户订单号
		$out_trade_no = $resHandler->getParameter("out_trade_no");
		//财付通订单号
		$transaction_id = $resHandler->getParameter("transaction_id");
		//金额,以分为单位
		$total_fee = $resHandler->getParameter("total_fee");
		//如果有使用折扣券，discount有值，total_fee+discount=原请求的total_fee
		$discount = $resHandler->getParameter("discount");
		//支付结果
		$trade_state = $resHandler->getParameter("trade_state");
		//交易模式,1即时到账
		$trade_mode = $resHandler->getParameter("trade_mode");
		// 币种类型
		$fee_type = $resHandler->getParameter('fee_type');
		// 支付时间
		$time_end = $resHandler->getParameter('time_end');
	
		$logInfo['type'] = 'returnUrl';
	
		$logInfo['out_trade_no'] = $out_trade_no;
		$logInfo['trade_mode'] = $trade_mode;
		$logInfo['transaction_id'] = $transaction_id;
		$logInfo['total_fee'] = $total_fee/100.0;
		$logInfo['time_end'] = $time_end;
	
		//判断签名
		if($resHandler->isTenpaySign())
		{
			if ("0" == $trade_state)
			{
				$order = $this->dao->getBySn($out_trade_no);
				if ($order)
				{
					if ($this->dao->amount != $total_fee/100.0)
					{
						$logInfo['msg'] = '同步回调-订单金额错误';
						$this->log($logInfo, false);
					}elseif ($this->dao->pay_status == 2) {
						$logInfo['msg'] = '同步回调-成功';
						$this->log($logInfo);
					}elseif ($this->dao->pay_status < 2) {
						$pay['pay_code'] = $transaction_id;
						$pay['pay_name'] = 'tenpay';
						$pay['pay_fee'] = $total_fee/100.0;
						$pay['pay_fee_type'] = $fee_type;
						$pay['is_online'] = 1;
						$pay_id = M('Payment')->add($pay);
	
						$this->dao->pay_status = 2;
						$this->dao->pay_fee = $total_fee/100.0;
						$this->dao->pay_id = $pay_id;
						$this->dao->pay_name = $pay['pay_name'];
						$this->dao->pay_code = $transaction_id;
						$this->dao->pay_time = $time_end;
	
						$ores = $this->dao->save();
						if ($ores)
						{
							$logInfo['msg'] = '同步回调-订单信息更新成功';
							$this->log($logInfo);
						}else {
							$logInfo['msg'] = '同步回调-订单信息更新失败';
							$this->log($logInfo,false);
						}
					}else {
						$logInfo['msg'] = '同步回调-成功';
						$this->log($logInfo);
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
					$logInfo['msg'] = '同步回调-订单不存在';
					$this->log($logInfo,false);
	
					$this->assign('pay_status', 0);
					$this->assign('order_type', -1);
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
					$message .= '支付时间：'.$time_end.'<br>';
					$message .= '支付方式：财付通支付<br>';
					$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
					$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
				}
			}else {
				$logInfo['msg'] = '同步回调-支付失败';
				$this->log($logInfo,false);
				$this->assign('pay_status', $trade_state);
			}
		}else {
			$logInfo['msg'] = $resHandler->getDebugInfo();
			$this->log($logInfo,false);
			$this->assign('pay_status', -1);
		}
		$this->display('Order:result');
	}

	/**
	 * 财付通异步回调处理
	 */
	public function notifyUrl()
	{
		require_once APP_PATH . '/Common/tenpay/classes/ResponseHandler.class.php';
		require_once APP_PATH . '/Common/tenpay/classes/RequestHandler.class.php';
		require_once APP_PATH . '/Common/tenpay/classes/client/ClientResponseHandler.class.php';
		require_once APP_PATH . '/Common/tenpay/classes/client/TenpayHttpClient.class.php';
		require_once APP_PATH . '/Common/tenpay/classes/function.php';
		require_once APP_PATH . '/Common/tenpay/tenpay_config.php';
		 
		$logInfo['type'] = 'notifyUrl';
		 
		/* 创建支付应答对象 */
		$resHandler = new ResponseHandler();
		$resHandler->setKey($key);
		//判断签名
		if($resHandler->isTenpaySign())
		{
			//通过通知ID查询，确保通知来至财付通
			//创建查询请求
			$queryReq = new RequestHandler();
			$queryReq->init();
			$queryReq->setKey($key);
			$queryReq->setGateUrl("https://gw.tenpay.com/gateway/simpleverifynotifyid.xml");
			$queryReq->setParameter("partner", $partner);
			$queryReq->setParameter("notify_id", $notify_id);
	
			//通信对象
			$httpClient = new TenpayHttpClient();
			$httpClient->setTimeOut(5);
			//设置请求内容
			$httpClient->setReqContent($queryReq->getRequestURL());
	
			//后台调用
			if($httpClient->call())
			{
				//设置结果参数
				$queryRes = new ClientResponseHandler();
				$queryRes->setContent($httpClient->getResContent());
				$queryRes->setKey($key);
				 
				if($resHandler->getParameter("trade_mode") == "1")
				{
					//判断签名及结果（即时到帐）
					//只有签名正确,retcode为0，trade_state为0才是支付成功
					if($queryRes->isTenpaySign() &&
							$queryRes->getParameter("retcode") == "0" &&
							$resHandler->getParameter("trade_state") == "0")
					{
						$logInfo['msg'] = '异步回调-即时到帐验签ID成功';
						//取结果参数做业务处理
						$out_trade_no = $resHandler->getParameter("out_trade_no");
						//财付通订单号
						$transaction_id = $resHandler->getParameter("transaction_id");
						//金额,以分为单位
						$total_fee = $resHandler->getParameter("total_fee");
						//如果有使用折扣券，discount有值，total_fee+discount=原请求的total_fee
						$discount = $resHandler->getParameter("discount");
						// 币种类型
						$fee_type = $resHandler->getParameter('fee_type');
							
						$order = $this->dao->getBySn($out_trade_no);
						if ($order)
						{
							if ($this->dao->amount != $total_fee/100.0)
							{
								$logInfo['msg'] = '异步回调-订单金额错误';
								$this->log($logInfo, false);
									
								echo 'fail';
							}elseif ($this->dao->pay_status == 2) {
								$logInfo['msg'] = '异步回调-成功';
								$this->log($logInfo);
	
								echo 'success';
							}elseif ($this->dao->pay_status < 2) {
								$pay['pay_name'] = 'tenpay';
								$pay['pay_code'] = $transaction_id;
								$pay['pay_fee'] = $total_fee/100.0;
								$pay['pay_fee_type'] = $fee_type;
								$pay_id = M('Payment')->add($pay);
									
								$this->dao->pay_status = 2;
								$this->dao->pay_fee = $total_fee/100.0;
								$this->dao->pay_id = $pay_id;
								$this->dao->pay_name = $pay['pay_name'];
								$this->dao->pay_code = $transaction_id;
								$this->dao->pay_time = $time_end;
									
								$ores = $this->dao->save();
								if ($ores)
								{
									$logInfo['msg'] = '异步回调-订单信息更新成功';
									$this->log($logInfo);

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
										$message .= '支付时间：'.$time_end.'<br>';
										$message .= '支付方式：财付通支付<br>';
										$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
										$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
									}
									
									echo 'success';
								}else {
									$logInfo['msg'] = '异步回调-订单信息更新失败';
									$this->log($logInfo,false);
										
									echo 'fail';
								}
							}else {
								$logInfo['msg'] = '异步回调-成功';
								$this->log($logInfo);
	
								echo 'success';
							}
						}else {
							$logInfo['msg'] = '异步回调-订单不存在';
							$this->log($logInfo,false);
								
							echo 'fail';
						}
					}else {
						$logInfo['msg'] = '异步回调-验证失败';
						$logInfo['trade_state'] = $resHandler->getParameter("trade_state");
						$logInfo['retcode'] = $queryRes->getParameter("retcode");
						$logInfo['retmsg'] = $queryRes->getParameter("retmsg");
						 
						echo 'fail';
					}
				}else {
					$logInfo['msg'] = '异步回调-交易类型错误';
					$logInfo['trade_mode'] = $resHandler->getParameter("trade_mode");
	
					echo 'fail';
				}
			}else {
				$logInfo['msg'] = '异步回调-通信失败';
				$logInfo['call err:'] = $httpClient->getResponseCode() ."," . $httpClient->getErrInfo();
				echo 'fail';
			}
		}else {
			$logInfo['msg'] = '异步回调-认证签名失败';
			$logInfo['debugInfo'] = $resHandler->getDebugInfo();
			//echo "<br/>" . "认证签名失败" . "<br/>";
			echo 'fail';
		}
	}

	private function log($data, $success=true)
	{
		$logfile = dirname(APP_PATH) . '/Cache/Logs/tenpay.' . date('Y-m-d') .'.log';
		$logtxt = "\r\n";
		$logtxt .= 'tenpay '.$data['type'].'['.date('Y-m-d H:i:s',time())."]:\r\n";
			
		unset($data['type']);
		unset($data['msg']);
	
		$post = var_export($_REQUEST, true);
		file_put_contents($logfile, $post, FILE_APPEND);
			
		$dataStr = var_export($data, true);
		file_put_contents($logfile, $dataStr, FILE_APPEND);
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