<?php


class ResponseHandler  {

	/** 密钥 */
	var $key;

	/** 应答的参数 */
	var $parameters;

	/** debug信息 */
	var $debugInfo;

	function __construct() {
		$this->ResponseHandler();
	}

	function ResponseHandler() {
		$this->key = "";
		$this->parameters = array();
		$this->debugInfo = "";

		/* GET */
		foreach($_GET as $k => $v) {
			$this->setParameter($k, $v);
		}
		/* POST */
		foreach($_POST as $k => $v) {
			$this->setParameter($k, $v);
		}
	}

	/**
	 *获取密钥
	 */
	function getKey() {
		return $this->key;
	}

	/**
	 *设置密钥
	 */
	function setKey($key) {
		$this->key = $key;
	}

	/**
	 *获取参数值
	 */
	function getParameter($parameter) {
		return $this->parameters[$parameter];
	}

	/**
	 *设置参数值
	 */
	function setParameter($parameter, $parameterValue) {
		$this->parameters[$parameter] = $parameterValue;
	}

	/**
	 *获取所有请求的参数
	 *@return array
	 */
	function getAllParameters() {
		return $this->parameters;
	}

	/**
	 *是否财付通签名,规则是:按参数名称a-z排序,遇到空值的参数不参加签名。
	 *true:是
	 *false:否
	 */
	function isTenpaySign() {
		$signPars = "";
		ksort($this->parameters);
		foreach($this->parameters as $k => $v) {
			if("sign" != $k && "" != $v && $k!='_URL_') {
				$signPars .= $k . "=" . $v . "&";
			}
		}
		$signPars .= "key=" . $this->getKey();
		$this->log(array('signPars'=>$signPars));
		$sign = strtolower(md5($signPars));
		$this->log(array('sign'=>$sign));
		$tenpaySign = strtolower($this->getParameter("sign"));
		
		//debug信息
		$this->_setDebugInfo($signPars . " => sign:" . $sign .
				" tenpaySign:" . $this->getParameter("sign"));
		
		return $sign == $tenpaySign;

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
		 
		/*$logtxt .= ($success?'success':'error').":".$data['msg']."\r\n";
		 $logtxt .= "sn:" . $data['out_trade_no'] . "\r\n";
		 $logtxt .= 'trade_mode' . $data['trade_mode'] . "\r\n";
		 $logtxt .= "transaction_id:" . $data['transaction_id'] . "\r\n";
		 $logtxt .= "total_fee:" . $data['total_fee'] . "\r\n";
		 $logtxt .= "amount:" . $data['amount'] . "\r\n";
		 $logtxt .= "time_end:" . $data['time_end'] . "\r\n";
		 */
		//file_put_contents($logfile, $logtxt, FILE_APPEND);
	}
	
	/**
	 *获取debug信息
	 */
	function getDebugInfo() {
		return $this->debugInfo;
	}

	/**
	 *显示处理结果。
	 *@param $show_url 显示处理结果的url地址,绝对url地址的形式(http://www.xxx.com/xxx.php)。
	 */
	function doShow($show_url) {
		$strHtml = "<html><head>\r\n" .
				"<meta name=\"TENCENT_ONLINE_PAYMENT\" content=\"China TENCENT\">" .
				"<script language=\"javascript\">\r\n" .
				"window.location.href='" . $show_url . "';\r\n" .
				"</script>\r\n" .
				"</head><body></body></html>";
			
		echo $strHtml;

		exit;
	}

	/**
	 * 是否财付通签名
	 * @param signParameterArray 签名的参数数组
	 * @return boolean
	 */
	function _isTenpaySign($signParameterArray) {

		$signPars = "";
		foreach($signParameterArray as $k) {
			$v = $this->getParameter($k);
			if("sign" != $k && "" != $v) {
				$signPars .= $k . "=" . $v . "&";
			}
		}
		$signPars .= "key=" . $this->getKey();

		$sign = strtolower(md5($signPars));

		$tenpaySign = strtolower($this->getParameter("sign"));

		//debug信息
		$this->_setDebugInfo($signPars . " => sign:" . $sign .
				" tenpaySign:" . $this->getParameter("sign"));

		return $sign == $tenpaySign;


	}

	/**
	 *设置debug信息
	 */
	function _setDebugInfo($debugInfo) {
		$this->debugInfo = $debugInfo;
	}

}


?>