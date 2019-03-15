<?php 
/**
 * 
 * CartAction.class.php (购物车管理)
 */

if (!defined("Yourphp")) exit("Access Denied");

class CartAction extends  BaseAction
{
	function _initialize()
	{
		parent::_initialize();
		
		$this->dao = M('Cart');
	}
	
	public function index()
	{
		if (!$this->_userid)
		{
			$this->success('请登录后操作', '/User/Login');
		}else {
			$cartModel = M('Cart');
			$list = $cartModel->where(array('userid'=>intval(cookie('userid'))))->select();
			$this->assign('list',$list);
			$this->display();
		}
	}
	
	function changeNumber()
	{
		$userid = intval(cookie('userid'));
		if($userid > 0)
		{
			$id = intval($_POST['cartid']);
			$num = intval($_POST['number']);
			$num = $num > 0 ? $num : 1;
			
			$cart = $this->dao->where(array('userid'=>$userid))->find($id);
				
			if($cart)
			{
				if ($this->dao->number != $num)
				{
					$this->dao->number = $num;
					$result = $this->dao->save();
					if ($result)
					{
						exit(json_encode(array('errno'=>0, 'msg'=>'success')));
					}else {
						exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
					}
				}else {
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}
			}else {
				exit(json_encode(array('errno'=>2, 'msg'=>'信息不存在！')));
			}
		}else {
			$this->success('请登录后操作', '/User/Login');
		}
	}
	
	function delete()
	{
		$userid = intval(cookie('userid'));
		if($userid > 0)
		{
			$id = $_POST['cartid'];
			$id = is_array($id) ? $id : json_decode($id);
			
			if (is_array($id) && !empty($id))
			{
				$this->dao->where(array('userid'=>$userid, 'id'=>array('in', $id)));
				$result = $this->dao->delete();
				
				if ($result)
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}elseif ($id > 0) {
				$this->dao->where(array('userid'=>$userid, 'id'=>$id));
				$result = $this->dao->delete();
				if ($result)
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}else {
				exit(json_encode(array('errno'=>2, 'msg'=>'参数错误！')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请先登录再操作！')));
		}
	}

	function modify()
	{
		$id = intval($_POST['id']);
		$num = intval($_POST['number']);
		$msg = '';
		if($this->_userid)
		{
			$tempCart = json_decode(json_encode(cookie('cart')), true);
			cookie('cart', NULL);
			// 判断上传的商品id是否大于0，如果是则将其添加至临时购物车中
			if ($id>0)
			{
				if (is_array($tempCart) && array_key_exists($id, $tempCart))
				{
					$tempCart[$id] += $num;
				}else {
					$tempCart[$id] = $num;
				}
			}
			
			if (!$tempCart)
			{
				return ;
			}
			/**
			 * 查询需要操作的商品是否全部或部分存在
			 * 如果否，则返回提示需要操作的商品已下架
			 */ 
			$product = M('product');
			$sessionId = session('id') ? intval(session('id')) : time();
			
			$product->where(array('id'=>array('in',array_keys($tempCart)),'status'=>1));
			$product->field('id,thumb,price,url,title');
			$pro = $product->select();
			
			if ($pro)
			{
				$newProductIds = array();
				$pro_map = array();
				foreach ($pro as $k => $v)
				{
					$newProductIds[] = $v['id'];
					$pro_map[$v['id']] = $k;
				}
				// 将不存在或已下架的商品移出临时购物车
				foreach ($tempCart as $k => $v)
				{
					if (!in_array($k, $newProductIds))
					{
						unset($tempCart[$k]);
					}
				}
				
				$this->dao->where(array('userid'=>$this->_userid,'product_id'=>array('in',$newProductIds)));
				$cart = $this->dao->select();
				
				$cartDao = NULL;
				$tempPro = NULL;
				$updateFlag = true;	// 记录更新操作，如果为false，表示至少有一次更新操作失败
				// 开户事务
				M()->startTrans();
				// 更新已存在的购物车信息
				foreach ($cart as $k => $v)
				{
					$tempPro = $pro[$pro_map[$v['product_id']]];
					$cartDao = M('cart')->where(array('product_id'=>$v['product_id'],'userid'=>$this->_userid));
					$cartDao->find();
					$cartDao->number += $tempCart[$v['product_id']];
					if ($cartDao->number <= 0)
					{
						$cartDao->number = 1;
					}
					$cartDao->sessionid = $sessionId;
					$cartDao->product_thumb = $tempPro['thumb'];
					$cartDao->product_name = $tempPro['title'];
					$cartDao->product_url = $tempPro['url'];
					$cartDao->product_price = $tempPro['price'];
					$cartDao->price = $tempPro['price'];
					
					if ($updateFlag === false)
					{
						$cartDao->save();
					}else {
						$updateFlag = $cartDao->save();
					}
					unset($tempCart[$tempPro['id']]);
				}
				$inserFlag = true;	// 启示购物车新数据写入操作，如果为false，表示至少有一次写入操作失败
				foreach ($tempCart as $k => $v)
				{
					if ($v > 0)
					{
						$tempPro = $pro[$pro_map[$k]];
						$cartDao = M('cart');
						$cartDao->number = $v;
						$cartDao->sessionid = $sessionId;
						$cartDao->userid = $this->_userid;
						$cartDao->product_id = $tempPro['id'];
						$cartDao->product_thumb = $tempPro['thumb'];
						$cartDao->product_name = $tempPro['title'];
						$cartDao->product_url = $tempPro['url'];
						$cartDao->product_price = $tempPro['price'];
						$cartDao->price = $tempPro['price'];
						$inserFlag = $cartDao->add();
						if ($inserFlag === false)
						{
							$cartDao->save();
						}else {
							$inserFlag = $cartDao->save();
						}
					}
				}
				/**
				 * 如果写入操作和更新操作有其一完全成功，则提交事务
				 * 否则执行事务回滚操作
				 */ 
				if ($inserFlag || $updateFlag)
				{
					M()->commit();
					$msg = json_encode(array('errno'=>0, 'msg'=>'success'));
				}else {
					M()->rollback();
					$msg = json_encode(array('errno'=>2, 'msg'=>'fail'));
				}
			}else {
				$msg = json_encode(array('errno'=>3, 'msg'=>'商品已下架，无法操作！'));
			}
		}else {
			if ($id > 0)
			{
				$cart = json_decode(json_encode(cookie('cart')), true);
				if (empty($cart))
				{
					$cart = array($id=>$num);
				}else {
					if (array_key_exists($id, $cart))
					{
						$cart[$id] += $num;
					}else {
						$cart[$id] = $num;
					}
				}
				cookie('cart', $cart);
			}
			$msg = json_encode(array('errno'=>0, 'msg'=>'success'));
// 			exit(json_encode(array('errno'=>4, 'msg'=>'请先登录再操作！')));
		}
		
		if ($id > 0)
		{
			exit($msg);
		}
	}
	
	function show()
	{
		$userid = intval(cookie('userid'));
		if($userid > 0)
		{
			$this->dao->where('userid=%d', $userid);
			$cart = $this->dao->select();
			
			$this->assign('cart', $cart);
			$this->show();
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请先登录再操作！')));
		}
	}
	
}


?>