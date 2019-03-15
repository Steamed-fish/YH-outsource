<?php
/**
 *
 * OrderAction.class.php (分类)
 *
 * @package      	YOURPHP
 * @author          liuxun QQ:147613338 <admin@yourphp.cn>
 * @copyright     	Copyright (c) 2008-2011  (http://www.yourphp.cn)
 * @license         http://www.yourphp.cn/license.txt
 * @version        	YourPHP企业网站管理系统 v2.1 2011-03-01 yourphp.cn $
 */
if(!defined("Yourphp")) exit("Access Denied");
class CategoryAction extends BaseAction
{
	protected $dao = NULL;
	
	function _initialize()
	{
		parent::_initialize();
		
		$this->dao = M('Category');
	}
	
	/**
	 * 获取分类列表信息
	 * 
	 * @declare API
	 */
	public function getList()
	{
		$tempCat = $this->dao->field('id,catname,catdir,parentid')
					->order('listorder asc,id asc')
					->select();
		$category = array();
		$catMap = array();
		if ($tempCat)
		{
			foreach ($tempCat as $k => $v)
			{
				if ($v['parentid'])
				{
					if (isset($catMap[$v['parentid']]))
					{
						$category[$catMap[$v['parentid']]]['children'][] = $v;
					}
				}else {
					$category[] = $v;
					$catMap[$v['id']] = count($category);
				}
			}
		}
		
		if (count($category))
		{
			exit(json_encode(array('errno'=>0, 'msg'=>'ok', 'data'=>$category)));
		}else {
			exit(json_encode(array('errno'=>1, 'msg'=>'nodata', 'data'=>array())));
		}
	}
	
}