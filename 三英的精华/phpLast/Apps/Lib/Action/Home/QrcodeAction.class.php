<?php
error_reporting(E_ERROR);
require_once 'phpqrcode/phpqrcode.php';


class QrcodeAction extends BaseAction
{
	function index()
	{
		$url = urldecode($_GET["data"]);
		QRcode::png($url,FALSE,"L",10);
	}
}

