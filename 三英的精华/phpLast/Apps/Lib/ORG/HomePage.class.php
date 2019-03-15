<?php
/**
 * 前台分页页码组件
 */

require_once 'Page.class.php';

class HomePage extends Page
{
    /**
     * 定义页码列表的类样式
     * 
     * @example $listClass = 'ct'; => <ul class="ct"></ul>
     * 
     * @var string
     */
    public $listClass = 'ct';
    /**
     * 定义页码标签的样式
     * 
     * @example $itemClass = 'item'; => <li class="item"></li>
     * @var string
     */
    public $itemClass = '';
    /**
     * 设置链接的样式
     * 
     * @example $linkClass = 'link'; => <a class="link" href=""></a>
     * @var string
     */
    public $linkClass = '';
    /**
     * 设置当前页码链接的样式
     * 
     * @example $currentLinkClass = 'cur'; => <a class="cur" href="javascript:void(0);"></a>
     * @var string
     */
    public $currentLinkClass = 'cur';
    public $currentItemClass = '';
    /**
     * 上一页按钮的样式
     * 
     * @example $prevItemClass = 'prev'; => <li class="prev"></li>
     * @var string
     */
    public $prevItemClass = '';
    public $prevLinkClass = '';
    /**
     * 下一页按钮样式
     * 
     * @example $nextItemClass = 'next'; => <li class="next"></li>
     * @var string
     */
    public $nextItemClass = '';
    public $nextLinkClass = '';
    /**
     * 第一页按钮样式
     * 
     * @example $firstItemClass = 'first'; => <li class="first"></li>
     * @var string
     */
    public $firstItemClass = '';
    /**
     * 最后一页按钮样式
     * 
     * @example $lastItemClass = 'last'; => <li class="last"></li>
     * @var string
     */
    public $lastItemClass = '';
    public $firstLinkClass = '';
    public $lastLinkClass = '';
    public $first = false;
    public $last = false;
    /**
     * 省略符号样式
     * @var string
     */
    public $omitClass = 'omit';
    
    /**
     * +----------------------------------------------------------
     * 架构函数
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @param array $totalRows  总的记录数
     * @param array $listRows  每页显示记录数
     * @param int|string $nowPage  当前页码
     * @param array $config     配置
     */
    public function __construct($totalRows, $listRows, $nowPage='', $config = array())
    {
        parent::__construct($totalRows, $listRows, $nowPage);
        
        foreach ($config as $k => $val)
        {
            if (isset($this->$k))
            {
                $this->$k = $val;
            }
        }
    }
    
    /**
     * 生成分页的页码列表的html
     * 
     * {@inheritDoc}
     * @see Page::show()
     */
    public function show()
    {
        if($this->totalRows == 0 OR $this->listRows == 0 OR $this->totalPages <= 1){
            return '';
        }
        $urlrule =  str_replace('%7B%24page%7D','{$page}',$this->urlrule); //urldecode
        if(!$urlrule){
            $p = C('VAR_PAGE');
            $nowCoolPage      = ceil($this->nowPage/$this->rollPage);
            $url  =  $_SERVER['REQUEST_URI'].(strpos($_SERVER['REQUEST_URI'],'?')?'':"?").$this->parameter;
            $parse = parse_url($url);
            if(isset($parse['query'])) {
                parse_str($parse['query'],$params);
                unset($params[$p]);
                $urlrule   =  $parse['path'].'?'.http_build_query($params);
            }
            $urlrule = $urlrule."&".$p.'={$page}';
        }
        
        // 上一页页码数
        $pre_page = $this->nowPage-1;
        // 下一页页码数
        $next_page = $this->nowPage +1;
        
        if($this->nowPage >=$this->totalPages){
            /**
             * 若当前页码数大于或等于最后页码数
             * 则将最大页码数置为当前页码数和下一页的页码数
             */ 
            $next_page =  $this->nowPage = $this->totalPages;
        }
        if($this->nowPage <= 1){
            $pre_page =  $this->nowPage = 1;
        }
        
        // 初始化
        $output = '<ul class="' . $this->listClass . '">';
        /*$output .= '<a class="a1">'.$this->totalRows.L('page_item').'</a>';*/
        if ($this->first)
        {
            $output .= '<li class="'. $this->firstItemClass .'"><a class="'. $this->firstLinkClass .'" href="'.$this->pageurl($urlrule, 1,$this->parameter).'">第一页</a></li>';
        }
        $output .= '<li class="'. $this->prevItemClass .'"><a class="'. $this->prevLinkClass .'" href="'.$this->pageurl($urlrule, $pre_page,$this->parameter).'">上一页</a></li>';
        $show_nums = $this->rollPage*2+1;// 显示页码的个数
        
        if($this->totalPages <= $show_nums){
            for($i = 1;$i<=$this->totalPages;$i++){
                if($i == $this->nowPage){
                    $output .= '<li class="'. $this->currentItemClass .'"><a class="'. $this->currentLinkClass .'" href="javascript:void(0);" pageCur="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                }else{
                    $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                }
            }
        }else{
            if($this->nowPage < (1+$this->rollPage)){
                for($i = 1;$i<=$show_nums;$i++){
                    if($i == $this->nowPage){
                        $output .=  '<li class="'. $this->currentItemClass .'"><a class="'. $this->currentLinkClass .'" href="javascript:void(0);" pageCur="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }else{
                        $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }
                }
                // 最后一页
                $output .= '<li class="'. $this->omitClass .'">...</li>';
                $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$this->totalPages,$this->parameter).'">'.$this->totalPages.'</a></li>';
            }else if($this->nowPage >= ($this->totalPages - $this->rollPage)){
                // 第一页
                $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,1,$this->parameter).'">1</a></li>';
                $output .= '<li class="'. $this->omitClass .'">...</li>';
                // 中间部分页码
                for($i = $this->totalPages - $show_nums ; $i <= $this->totalPages ; $i++){
                    if($i == $this->nowPage){
                        $output .=  '<li class="'. $this->currentItemClass .'"><a class="'. $this->currentLinkClass .'" href="javascript:void(0);;" pageCur="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }else{
                        $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }
                }
            }else{
                $start_page = $this->nowPage - $this->rollPage;
                $end_page = $this->nowPage + $this->rollPage;
                
                if ($start_page != 1)
                {
                    // 第一页
                    $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,1,$this->parameter).'">1</a></li>';
                    if ($start_page > 2)
                    {
                        $output .= '<li class="'. $this->omitClass .'">...</li>';
                    }
                }
                // 中间部分页码
                for($i = $start_page ; $i<=$end_page ; $i++){
                    if($i == $this->nowPage){
                        $output .=  '<li class="'. $this->currentItemClass .'"><a class="'. $this->currentLinkClass .'" href="javascript:void(0);;" pageCur="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }else{
                        $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$i,$this->parameter).'">'.$i.'</a></li>';
                    }
                }
                // 最后一页
                if ($end_page < $this->totalPages-1)
                {
                    $output .= '<li class="'. $this->omitClass .'">...</li>';
                }
                $output .= '<li class="'. $this->itemClass .'"><a class="'. $this->linkClass .'" href="'.$this->pageurl($urlrule,$this->totalPages,$this->parameter).'">'.$this->totalPages.'</a></li>';
            }
        }
        
        $output .='<li class="'. $this->nextItemClass .'"><a class="'. $this->nextLinkClass .'" href="'.$this->pageurl($urlrule,$next_page,$this->parameter).'">下一页</a></li>';
        if ($this->last)
        {
            $output .='<li class="'. $this->lastItemClass .'"><a class="'. $this->lastLinkClass .'" href="'.$this->pageurl($urlrule,$this->totalPages,$this->parameter).'">最后一页</a></li>';
        }
        
        $output .= '</ul>';
            
        return $output;
    }
}

?>