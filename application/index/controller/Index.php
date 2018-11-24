<?php
namespace app\index\controller;
use think\Controller;
use app\admin\model\Webinfo;

class Index extends Controller
{
	//首页呈现
    public function index()
    {
    	$webinfo = Webinfo::find();
    	$index1 = db('index1')->where('id',1)->value('desc');
    	$index2 = db('index2')->where('id',1)->value('logopath');
    	$index3 = db('index3')->where('id',1)->find();
        $index4 = db('index4')->select();
        $index5 = db('index5')->select();
        $index6 = db('index6')->select();
        $index7 = db('index7')->find();
        $index8 = db('index8')->find();
    	//基本信息
    	$this->assign("webtitle",$webinfo->webtitle);
    	$this->assign("webkeywords",$webinfo->webkeywords);
    	$this->assign("webdesc",$webinfo->webdesc);
    	//首页一层
    	$this->assign("index1",$index1);
    	$this->assign("index2",$index2);
    	$this->assign("banner1",$index3['banner1']);
    	$this->assign("banner2",$index3['banner2']);
    	$this->assign("banner3",$index3['banner3']);
    	$this->assign("banner4",$index3['banner4']);
        $this->assign("index4",$index4);
        $this->assign("index5",$index5);
        $this->assign("index6",$index6);
        $this->assign("index7",$index7);
        $this->assign("index8",$index8);
        return view();
    }
}
