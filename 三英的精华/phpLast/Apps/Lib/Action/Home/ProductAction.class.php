<?php

/**
 *
 * ProductAction.class.php (商品信息)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	YourPHP企业网站管理系统 v2.1 2011-03-01 yourphp.cn $
 */
if(!defined("Yourphp")) exit("Access Denied");
class ProductAction extends BaseAction
{
	protected $dao = NULL;
	
	function _initialize()
	{
		parent::_initialize();
		
		$this->dao = M('Product');
	}
	
	/**
	 * 根据一个产品的id获取产品的详细信息
	 * 
	 * @declare API
	 * @param int id	需要获取详细信息产品的id，必传参数
	 */
	public function getDetail()
	{
		$pid = intval($_POST['id']);
		
		if ($pid)
		{
			$product = $this->dao->where(array('status'=>1))->find($pid);
			if ($product)
			{
				exit(json_encode(array('errno'=>0,'msg'=>'ok','data'=>$product)));
			}else {
				exit(json_encode(array('errno'=>1, 'msg'=>'nodata')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'invalid parameter')));
		}
	}
	
	/**
	 * 获取产品列表
	 * 
	 * @declare API
	 * @param int page	获取数据的指定页数，默认为1，选传参数
	 * @param int num	定义每页 数据的行数（条数），默认为10，选传参数
	 * @param int category	获取指定分类下的产品列表，默认不指定获所有，选传参数
	 * @param int priceOrder	 对获取的产品列表进行排序，'a'表示按价格从小到大排序，'d'表示从大到小排序，默认为不进行排序处理，选传参数
	 */
	public function getList()
	{
		$page = intval($_POST['page']);
		$num = intval($_POST['num']);
		$category = intval($_POST['cat']);
		$priceOrder = get_safe_replace($_POST['priceOrder']);
		$priceOrder = $priceOrder=='a' ? 'price asc' : ($priceOrder == 'd' ? 'price desc' : '');
		$page = $page > 0 ? $page : 1;
		$num = $num > 0 ? $num : 10;
		$category = $category > 0 ? $category : 0;
		
		$where = array('status'=>1);
		if ($category)
		{
			$where['catid'] = $category;
		}
		
		$count = $this->dao->where($where)->count('id');
		
		$this->dao->field('id,title,thumb,hits')
			->where($where)->page($page, $num);
		if ($priceOrder)
		{
			$this->dao->order($priceOrder);
		}
		$product = $this->dao->select();
		
		if (count($product))
		{
			exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$product, 'count'=>$count)));
		}else {
			exit(json_encode(array('errno'=>1, 'msg'=>'nodata', 'data'=>array(), 'count'=>$count)));
		}
	}
}
