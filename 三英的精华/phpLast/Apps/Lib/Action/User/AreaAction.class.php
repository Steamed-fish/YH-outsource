<?php 
/**
 * AreaAction.class.php (地址信息)
 *
 */

class AreaAction extends BaseAction
{
	function _initialize()
	{
		parent::_initialize();
	
		$this->dao = M('Area');
	}
	
	public function getArea()
	{
		$areaid = intval($_POST['areaid']);
		$area = $this->dao->where(array('parentid'=>$areaid))->field('id,name')->select();
		
		if ($area)
		{
			exit(json_encode(array('errno'=>0, 'msg'=>'success', 'data'=>$area)));
		}else {
			exit(json_encode(array('errno'=>1, 'msg'=>'没有数据')));
		}
	}
	
}


?>