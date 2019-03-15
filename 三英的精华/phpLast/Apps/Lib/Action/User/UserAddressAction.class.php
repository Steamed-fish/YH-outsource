<?php
/**
 * UserAddressAction.class.php (用户收货地址管理)
*
*/

class UserAddressAction extends BaseAction
{
	function _initialize()
	{
		parent::_initialize();

		$this->dao = M('UserAddress');
	}


	public function add()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$consignee = $_REQUEST['consignee'];
			$email = $_REQUEST['email'];
			$country = intval($_REQUEST['country']);
			$province = intval($_REQUEST['province']);
			$city = intval($_REQUEST['city']);
			$area = intval($_REQUEST['area']);
			$address = $_REQUEST['address'];
			$zipcode = intval($_REQUEST['zipcode']);
			$tel = $_REQUEST['tel'];
			$mobile = $_REQUEST['mobile'];
			$isdefault = intval($_REQUEST['isdefault']);
				
			if (empty($consignee))
			{
				exit(json_encode(array('errno'=>201, 'msg'=>'缺少联系人')));
			}
			if (empty($province) || empty($city))
			{
				exit(json_encode(array('errno'=>202, 'msg'=>'缺少地址信息')));
			}
			if (!preg_match('/^[0-9-()（）]{7,18}$/', $tel) && !preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $mobile))
			{
				exit(json_encode(array('errno'=>203, 'msg'=>'缺少联系方式')));
			}
				
			if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email))
			{
				$email = '';
			}
				
			if (!preg_match('/^[1-9]\d{5}(?!\d)$/', $zipcode))
			{
				$zipcode = '000000';
			}
				
			if ($isdefault)
			{
				$data = array(
						'userid'=>$userid,
						'consignee'=>$consignee,
						'email'=>$email,
						'country'=>$country,
						'province'=>$province,
						'city'=>$city,
						'area'=>$area,
						'address'=>$address,
						'zipcode'=>$zipcode,
						'tel'=>$tel,
						'mobile'=>$mobile,
						'isdefault'=>1
				);
				M()->startTrans();
				$udpate = $this->dao->where(array('userid'=>$userid, 'isdefault'=>1))->save(array('isdefault'=>0));
				$add = $this->dao->add($data);

				if ($update>=0 && $add)
				{
					M()->commit();
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					M()->rollback();
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}else {
				$this->dao->userid = $userid;
				$this->dao->consignee = $consignee;
				$this->dao->email = $email;
				$this->dao->country = $country;
				$this->dao->province = $province;
				$this->dao->city = $city;
				$this->dao->area = $area;
				$this->dao->address = $address;
				$this->dao->zipcode = $zipcode;
				$this->dao->tel = $tel;
				$this->dao->mobile = $mobile;
				$this->dao->isdefault = 0;

				$result = $this->dao->add();
				if ($result)
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
		}
	}

	public function delete()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);

			$this->dao->where(array('userid'=>$userid, 'id'=>$addrid));
			$address = $this->dao->find();

			if ($address)
			{
				$result = $this->dao->delete();
				if ($result)
				{
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					exit(json_encode(array('errno'=>1,'msg'=>'fail')));
				}
			}else {
				exit(json_encode(array('errno'=>2, 'msg'=>'收货地址不存在！')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作')));
		}
	}

	public function detail()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			$select = '`id`,`consignee`,`email`,`address`,`zipcode`,`tel`,`mobile`,`isdefault`';
			$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id=province) as `province`';
			$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`city`) as `city`';
			$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`area`) as `area`';
			$where = 'WHERE `userid`=' . $userid . ' AND `id`=' . $addrid;
			$sql = 'SELECT '.$select.','.$province.','.$city.','.$area.' FROM `mqu_user_address` '.$where;
			$address = $this->dao->query($sql);
			if ($address)
			{
				exit(json_encode(array('errno'=>0, 'msg'=>'success', 'data'=>$address[0])));
			}else {
				exit(json_encode(array('errno'=>1, 'msg'=>'没有数据！')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
		}
	}

	public function index()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			if (isset($_REQUEST['errno']))
			{
				$this->redirect('index');
			}
				
			$this->assign($this->getAddressById($addrid));
			$this->assign('list', $this->getAddressList());
				
			$this->display();
		}else {
			$this->success('请登录后操作', '/User/Login');
		}
	}

	public function info()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			$address = $this->dao->where(array('userid'=>$userid, 'id'=>$addrid))->find();
			if ($address)
			{
				exit(json_encode(array('errno'=>0, 'msg'=>'success', 'data'=>$address)));
			}else {
				exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
		}
	}

	public function lists()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$select = '`id`,`consignee`,`email`,`address`,`zipcode`,`tel`,`mobile`,`isdefault`';
			$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id=province) as `province`';
			$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`city`) as `city`';
			$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`area`) as `area`';
			$where = 'WHERE `userid`=' . $userid;
			$sql = 'SELECT '.$select.','.$province.','.$city.','.$area.' FROM `mqu_user_address` '.$where;
			$address = $this->dao->query($sql);
			if ($address)
			{
				exit(json_encode(array('errno'=>0, 'msg'=>'success', 'data'=>$address)));
			}else {
				exit(json_encode(array('errno'=>1, 'msg'=>'没有数据！')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
		}
	}

	public function modify()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			$consignee = $_REQUEST['consignee'];
			$email = $_REQUEST['email'];
			$country = intval($_REQUEST['country']);
			$province = intval($_REQUEST['province']);
			$city = intval($_REQUEST['city']);
			$area = intval($_REQUEST['area']);
			$address = $_REQUEST['address'];
			$zipcode = $_REQUEST['zipcode'];
			$tel = $_REQUEST['tel'];
			$mobile = $_REQUEST['mobile'];
			$isdefault = $_REQUEST['isdefault'] ? 1 : 0;

			if (empty($consignee))
			{
				exit(json_encode(array('errno'=>201, 'msg'=>'缺少联系人')));
			}
			if (empty($province) || empty($city))
			{
				exit(json_encode(array('errno'=>202, 'msg'=>'缺少地址信息')));
			}
			if (!preg_match('/^[0-9-()（）]{7,18}$/', $mobile) && !preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $tel))
			{
				exit(json_encode(array('errno'=>203, 'msg'=>'缺少联系方式')));
			}

			if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email))
			{
				$email = '';
			}

			if (!preg_match('/^[1-9]\d{5}(?!\d)$/', $zipcode))
			{
				$zipcode = '000000';
			}
				
			$this->dao->where(array('userid'=>$userid, 'id'=>$addrid));
			$address = $this->dao->find();
				
			if ($address)
			{
				M()->startTrans();

				if ($isdefault)
				{
					M('User_address')->where(array('userid'=>$userid,'isdefault'=>1))->save(array('isdefault'=>0));
				}

				$this->dao->userid = $userid;
				$this->dao->consignee = $consignee;
				$this->dao->email = $email;
				$this->dao->country = $country;
				$this->dao->province = $province;
				$this->dao->city = $city;
				$this->dao->area = $area;
				$this->dao->address = $address;
				$this->dao->zipcode = $zipcode;
				$this->dao->tel = $tel;
				$this->dao->mobile = $mobile;
				$this->dao->isdefault = $isdefault ? 1 : 0;

				$result = $this->dao->save();
				if ($result)
				{
					M()->commit();
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					M()->rollback();
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}else {
				exit(json_encode(array('errno'=>3, 'msg'=>'地址信息不存在')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作！')));
		}
	}

	public function modifyAddress()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			$consignee = $_REQUEST['consignee'];
			$email = $_REQUEST['email'];
			$country = intval($_REQUEST['country']);
			$province = intval($_REQUEST['province']);
			$city = intval($_REQUEST['city']);
			$area = intval($_REQUEST['area']);
			$address = $_REQUEST['address'];
			$zipcode = $_REQUEST['zipcode'];
			$tel = $_REQUEST['tel'];
			$mobile = $_REQUEST['mobile'];
			$isdefault = $_REQUEST['isdefault'] ? 1 : 0;
			
			if ($isdefault)
			{
				$this->dao->where(array('userid'=>$this->_userid))->save(array('isdefault'=>0));
			}
				
			$address = $this->dao->where(array('userid'=>intval(cookie('userid'))))->find($addrid);
			if (empty($address))
			{
				// 没有数据存在
				return $this->redirect('/User/UserAddress', array('errno'=>-1, 'msg'=>'数据不存在'), 1, '该地址不存在');
			}

			if (empty($consignee))
			{
				return $this->redirect('/User/UserAddress', array('addrid'=>$addrid,'errno'=>201, 'msg'=>'缺少联系人'), 1, '缺少联系人');
			}
			if (empty($province) || empty($city) || empty($address))
			{
				return $this->redirect('index', array('addrid'=>$addrid,'errno'=>202, 'msg'=>'缺少地址信息'), 1, '缺少地址信息');
			}
			if (!preg_match('/^[0-9-()（）]{7,18}$/', $mobile) && !preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $tel))
			{
				return $this->redirect('/User/UserAddress', array('addrid'=>$addrid,'errno'=>203, 'msg'=>'缺少联系方式'), 1, '缺少联系方式');
			}

			if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email))
			{
				$email = '';
			}

			if (!preg_match('/^[1-9]\d{5}(?!\d)$/', $zipcode))
			{
				$zipcode = '000000';
			}

			$this->dao->consignee = $consignee;
			$this->dao->email = $email;
			$this->dao->country = $country;
			$this->dao->province = $province;
			$this->dao->city = $city;
			$this->dao->area = $area;
			$this->dao->address = $address;
			$this->dao->zipcode = $zipcode;
			$this->dao->tel = $tel;
			$this->dao->mobile = $mobile;
			$this->dao->isdefault = $isdefault ? 1 : 0;
				
			$result = $this->dao->save();
			if ($result>=0)
			{
				return $this->redirect('index', array('errno'=>0, 'msg'=>'success'), 0, '更新成功');
			}else {
				return $this->redirect('index', array('errno'=>1, 'msg'=>'fail'), 0, '更新失败');
			}
		}else {
			$this->success('请登录后操作', 'User/Login');
		}
	}

	public function setDefault()
	{
		$userid = intval(cookie('userid'));
		if ($userid > 0)
		{
			$addrid = intval($_REQUEST['addrid']);
			$address = $this->dao->where(array('id'=>$addrid, 'userid'=>$userid))->find();
			if ($address)
			{
				M()->startTrans();
				$update = $this->dao->where(array('userid'=>$userid))->save(array('isdefault'=>0));
				$set = $this->dao->where(array('id'=>$addrid))->save(array('isdefault'=>1));
				if ($update>=0 && $set)
				{
					M()->commit();
					exit(json_encode(array('errno'=>0, 'msg'=>'success')));
				}else {
					M()->rollback();
					exit(json_encode(array('errno'=>1, 'msg'=>'fail')));
				}
			}else {
				exit(json_encode(array('errno'=>2, 'msg'=>'收货地址不存在！')));
			}
		}else {
			exit(json_encode(array('errno'=>-1, 'msg'=>'请登录后操作!')));
		}
	}

	public function show()
	{
		$this->display();
	}

	public function createAddress()
	{
		$consignee = $_REQUEST['consignee'];
		$email = $_REQUEST['email'];
		$country = intval($_REQUEST['country']);
		$province = intval($_REQUEST['province']);
		$city = intval($_REQUEST['city']);
		$area = intval($_REQUEST['area']);
		$address = $_REQUEST['address'];
		$zipcode = $_REQUEST['zipcode'];
		$tel = $_REQUEST['tel'];
		$mobile = $_REQUEST['mobile'];
		$isdefault = $_REQUEST['isdefault'] ? 1 : 0;

		if ($isdefault)
		{
			$this->dao->where(array('userid'=>intval(cookie('userid'))))->save(array('isdefault'=>0));
		}

		$data = array('userid'=>intval(cookie('userid')));

		if (empty($consignee))
		{
			return $this->redirect('index',array('errno'=>201, 'msg'=>'缺少联系人'));
		}else {
			$data['consignee'] = $consignee;
		}
		if (empty($province) || empty($city) || empty($address) || empty($area))
		{
			return $this->redirect('index',array('errno'=>202, 'msg'=>'缺少地址信息'));
		}else {
			$data['province'] = $province;
			$data['city'] = $city;
			$data['area'] = $area;
			$data['address'] = $address;
		}
		if (!preg_match('/^[0-9-()（）]{7,18}$/', $mobile) && !preg_match('/^0?(13|14|15|18)[0-9]{9}$/', $tel))
		{
			return $this->redirect('index',array('errno'=>203, 'msg'=>'缺少联系方式'));
		}else {
			$data['mobile'] = $mobile;
			$data['tel'] = $tel;
		}

		if (!preg_match('/^\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}$/', $email))
		{
			$email = '';
		}
		$data['email'] = $email;

		if (!preg_match('/^[1-9]\d{5}(?!\d)$/', $zipcode))
		{
			$zipcode = '000000';
		}
		$data['zipcode'] = $zipcode;
		$data['isdefault'] = $isdefault;

		$re = $this->dao->add($data);
		if ($re)
		{
			return $this->redirect('index',array('errno'=>0, 'msg'=>'success'));
		}else {
			return $this->redirect('index',array('errno'=>1, 'msg'=>'fail'));
		}
	}

	/**
	 * 删除收货地址信息
	 * @param int $addrid
	 * @return number
	 */
	public function deleteAddress()
	{
		$userid = intval(cookie('userid'));
		$addrid = intval($_REQUEST['addrid']);
		$address = $this->dao->where(array('userid'=>$userid))->find($addrid);
		if ($address)
		{
			$re = $this->dao->delete();
			if ($re)
			{
				// 删除成功
				return $this->redirect('index',array('errno'=>0, 'msg'=>'success'));
			}else {
				// 删除失败
				return $this->redirect('index',array('errno'=>1, 'msg'=>'fail'));
			}
		}else {
			// 数据不存在
			return $this->redirect('index',array('errno'=>-1, 'msg'=>'数据不存在'));
		}
	}

	private function getAddressById($addrid)
	{
		$address = $this->dao->where(array('userid'=>intval(cookie('userid'))))->find($addrid);

		$areaModel = M('Area');

		$provinces = $areaModel->where(array('parentid'=>0))->field('id,name')->select();
		$cities = array();
		$areas = array();

		if ($address)
		{
			$cities = $areaModel->where(array('parentid'=>$address['province']))->field('id,name')->select();
			$areas = $areaModel->where(array('parentid'=>$address['city']))->field('id,name')->select();
				
			foreach ($provinces as $k => $v)
			{
				if ($v['id'] == $address['province'])
				{
					$provinces[$k]['selected'] = 1;
				}else {
					$provinces[$k]['selected'] = 0;
				}
			}
			foreach ($cities as $k => $v)
			{
				if ($v['id'] == $address['city'])
				{
					$cities[$k]['selected'] = 1;
				}else {
					$cities[$k]['selected'] = 0;
				}
			}
			foreach ($areas as $k => $v)
			{
				if ($v['id'] == $address['area'])
				{
					$areas[$k]['selected'] = 1;
				}else {
					$areas[$k]['selected'] = 0;
				}
			}
		}else {
			foreach ($provinces as $k => $v)
			{
				$provinces[$k]['selected'] = 0;
			}
		}

		return array('provinces'=>$provinces,'cities'=>$cities,'areas'=>$areas,'address'=>$address);
	}

	private function getAddressList()
	{
		$select = '`id`,`consignee`,`email`,`address`,`zipcode`,`tel`,`mobile`,`isdefault`';
		$province = '(SELECT `name` FROM `mqu_area` WHERE mqu_area.id=province) as `province`';
		$city = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`city`) as `city`';
		$area = '(SELECT `name` FROM `mqu_area` WHERE `mqu_area`.`id`=`area`) as `area`';
		$where = 'WHERE `userid`=' . intval(cookie('userid'));
		$sql = 'SELECT '.$select.','.$province.','.$city.','.$area.' FROM `mqu_user_address` '.$where;
		$address = $this->dao->query($sql);

		return $address;
	}

}

?>