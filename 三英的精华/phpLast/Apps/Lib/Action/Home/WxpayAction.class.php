<?php 
	if(!defined("Yourphp")) exit("Access Denied");
	
	class wxpayAction extends BaseAction
	{
		public function index(){
			  $this->display();
		}
		
		/**
		 * @deprecated
		 */
		public function native(){
			ini_set('date.timezone','Asia/Shanghai');
			require_once APP_PATH . "Common/wxpay/lib/WxPay.Api.php";
			require_once APP_PATH . "Common/wxpay/example/WxPay.NativePay.php";
			
			// import('@.wxpay.lib.WxPay.Api');
			// import('@.wxpay.example.WxPay.NativePay');
			// require_once '/Yourphp/Lib/wxpay/example/log.php';
			
			/**模式二
			 * 流程：
			 * 1、调用统一下单，取得code_url，生成二维码
			 * 2、用户扫描二维码，进行支付
			 * 3、支付完成之后，微信服务器会通知支付成功
			 * 4、在支付成功通知中需要查单确认是否真正支付成功（见：notify.php）
			 */
			/*
			 *	数据处理
			 */ 
			// extract($_POST);
			$uniqid = uniqid();
			
			$userid = intval(cookie('userid'));
			
			if(empty($userid)){
				$this->error('请先登录!');
			}
			
			$orderid = intval($_POST['orderid']);
			
			$orderModel = M('Order');
			$order = $orderModel->where(array('userid'=>$userid,'pay_time'=>array('EQ', 0)))->find($orderid);
			
			if (!$order)
			{
				$this->error('订单不存在！');
			}
			$body ="订单总金额为".$order['amount'];
			
			$notify = new NativePay();
			$input = new WxPayUnifiedOrder();
			$input->SetBody("$body");
			$input->SetAttach("$body");
			/*$input->SetOut_trade_no(WxPayConfig::MCHID.date("YmdHis"));*/
			
			$num=$order['sn'];
			$input->SetOut_trade_no($num);
			
			$input->SetTotal_fee($order['amount']*100);
			$input->SetTime_start(date("YmdHis"));
			$input->SetTime_expire(date("YmdHis", time() + 600));
			$input->SetGoods_tag("test");
			$input->SetNotify_url($_SERVER['HTTP_HOST'] . '/' . GROUP_NAME . "/Wxpay/notify.php");
			$input->SetTrade_type("NATIVE");
			$input->SetProduct_id($order['id']);
			$result = $notify->GetPayUrl($input);
			$url2 = urlencode($result["code_url"]);
			$url="/Qrcode/index?data=".$url2;
			// echo $url;
			$this->assign('url',$url);
// 			$this->assign('username',$username);
			$this->assign('orderid',$order['id']);
// 			$this->assign('price',$price);
			$this->assign('num',$num);
			$this->display();
		}
		
		/**
		 * 订单状态信息查询
		 * 
		 * @declare API
		 * @param string $sn	订单号
		 */
		function query()
		{
			if(isset($_POST["sn"]) && $_POST["sn"] != "")
			{
				require_once APP_PATH . '/Common/wxpay/lib/WxPay.Data.php';
				require_once APP_PATH . "/Common/wxpay/lib/WxPay.Api.php";
				
				$logfile = '../../../../Cache/Logs/wxpay.' . date('Y-m-d') .'.log';
				$logtxt = "\r\n";
				
				$out_trade_no = $_POST["sn"];
				$input = new WxPayOrderQuery();
				$input->SetOut_trade_no($out_trade_no);
				$result=WxPayApi::orderQuery($input);
				if($result['trade_state']=="SUCCESS")
				{
					$orderid = intval($_POST['ddno']);
					
					$logtxt .= "微信订单查询成功：\r\n";
					$logtxt .= "支付成功：{$result['trade_state']}\r\n";
					
					$orderModel = M('Order');
					$order = $orderModel->where(array('sn'=>$out_trade_no))->find();
					if ($order)
					{
						$logtxt = '系统订单查询成功('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
						$logtxt = 'order: ' . $order['id']."\t".$order['sn']."\t".$order['amount']."\r\n";
						
						if (empty($order['pay_id']))
						{
							$pay['pay_name'] = 'wxpay';
							$pay['pay_code'] = $result['transaction_id'];
							$pay['pay_fee'] = $result['total_fee'];
							$pay['fee_type'] = $result['fee_type'];
							$pay_id = M('Payment')->add($pay);
							
							$orderModel->pay_id = $pay_id;
						}
						
						$orderModel->pay_code = $result['transaction_id'];
						$orderModel->pay_name = $pay['pay_name'];
						$orderModel->pay_fee = $result['total_fee'];
						$orderModel->pay_time = $result['time_end'];
						
						$or = $orderModel->save();
						if ($or === false)
						{
							$logtxt = '系统订单信息更新失败('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
						}else {
							$logtxt = '系统订单信息更新成功('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
						}
					}else {
						$logtxt = '系统订单查询失败('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
					}
					
					file_put_contents($logfile, $logtxt, FILE_APPEND);
				}
				exit(json_encode($result['trade_state']));
			}
		}
		
		function notifyUrl()
		{
			require_once APP_PATH . "/Common/wxpay/lib/WxPay.Api.php";
			require_once APP_PATH . "/Common/wxpay/example/notify.php";

			$logfile = '../../../../Cache/Logs/wxpay.' . date('Y-m-d') .'.log';
			$logtxt = "\r\n";
			
			$postObj = (array)simplexml_load_string($GLOBALS["HTTP_RAW_POST_DATA"], 'SimpleXMLElement', LIBXML_NOCDATA);
			
			$result = $notify->NotifyProcess($postObj);
			$returnMsg = '';
			if ($result)
			{
				$sendMail = false;
				$logtxt .= "微信订单异步通知：\r\n";
				$logtxt .= "支付业务结果：{$postObj['result_code']}\r\n";
				
				$orderModel = M('Order');
				$order = $orderModel = getBySn($postObj['out_trade_no']);
				if ($order)
				{
					if ($order['pay_status'] == 0 || $order['pay_status'] == 1)
					{
						$logtxt = '系统订单查询成功('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
						$logtxt = 'order: ' . $order['id']."\t".$order['sn']."\t".$order['amount']."\r\n";
						
						if (empty($order['pay_id']))
						{
							$pay['pay_name'] = 'wxpay';
							$pay['pay_code'] = $postObj['transaction_id'];
							$pay['pay_fee'] = $postObj['total_fee'];
							$pay['fee_type'] = $postObj['fee_type'];
							$pay['pay_time'] = $postObj['time_end'];
							$pay_id = M('Payment')->add($pay);
						
							$orderModel->pay_id = $pay_id;
						}
						
						$orderModel->pay_name = $pay['pay_name'];
						$orderModel->pay_code = $postObj['transaction_id'];
						$orderModel->pay_fee = $postObj['total_fee'];
						$orderModel->pay_time = $postObj['time_end'];
						
						$or = $orderModel->save();
						if ($or === false)
						{
							$logtxt = '系统订单信息更新失败('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
							$notify->SetReturn_code("FAIL");
							$notify->SetReturn_msg('SYSTEM_ORDER_UPDATE_FAIL');
							$notify->ReplyNotify(false);
						}else {
							$logtxt = '系统订单信息更新成功('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
							$sendMail = true;
							$notify->ReplyNotify(false);
						}
					}else {
						$notify->ReplyNotify(false);
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
						$message .= '支付时间：'.$postObj->time_end.'<br>';
						$message .= '支付方式：微信扫码支付<br>';
						$message .= '此通知为系统自动发送，无需回复<br>--<a href="'.$_SERVER['HTTP_ORIGIN'].'">英虎网络</a>';
						$re=sendmail($order['email'], '商品下单购买通知', $message,$config);
					}
				}else {
					$logtxt = '系统订单查询失败('.date('Y-m-d H:i:s', time()).')：'.$orderModel->_sql() . "\r\n";
					$notify->SetReturn_code("FAIL");
					$notify->SetReturn_msg('SYSTEM_ORDER_QUERY_FAIL');
					$notify->ReplyNotify(false);
				}
			}else {
				$notify->ReplyNotify(false);
			}
			
			file_put_contents($logfile, $logtxt, FILE_APPEND);
		}
		
		public function returnUrl()
		{
			
		}
	}
?>