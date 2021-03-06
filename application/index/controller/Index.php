<?php
namespace app\index\controller;
use think\Controller;
use app\admin\model\Webinfo;
use app\admin\model\Article;

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
        $index61 = db('index61')->order('time desc')->select();
        $index7 = db('index7')->find();
        $index8 = db('index8')->find();
        $article = Article::order('time desc')->limit(4)->select();
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
        $this->assign("index61",$index61);
        $this->assign("index7",$index7);
        $this->assign("index8",$index8);
        $this->assign("article",$article);
        return view();
    }

    //文章页面
    //首页呈现
    public function article()
    {
        $webinfo = Webinfo::find();
        $index1 = db('index1')->where('id',1)->value('desc');
        $index2 = db('index2')->where('id',1)->value('logopath');
        $navimg = db('index2')->where('id',2)->value('logopath');
        $index3 = db('index3')->where('id',1)->find();
        $index8 = db('index8')->find();
        $article = Article::order('time desc')->paginate(5);
        $list = Article::order('time desc')->limit(8)->select();
        //基本信息
        $this->assign("webtitle",$webinfo->webtitle);
        $this->assign("webkeywords",$webinfo->webkeywords);
        $this->assign("webdesc",$webinfo->webdesc);
        //首页一层
        $this->assign("index1",$index1);
        $this->assign("index2",$index2);
        $this->assign("navimg",$navimg);
        $this->assign("banner1",$index3['banner1']);
        $this->assign("banner2",$index3['banner2']);
        $this->assign("banner3",$index3['banner3']);
        $this->assign("banner4",$index3['banner4']);
        $this->assign("index8",$index8);
        $this->assign("article",$article);
        $this->assign("list",$list);
        return view();
    }

    public function articlelist($id){
        $webinfo = Webinfo::find();
        $index1 = db('index1')->where('id',1)->value('desc');
        $index2 = db('index2')->where('id',1)->value('logopath');
        $index3 = db('index3')->where('id',1)->find();
        $index8 = db('index8')->find();
        $list = db('article')->order('time desc')->limit(8)->select();
        $article = db('article')->where('id',$id)->find();
        $navimg = db('index2')->where('id',2)->value('logopath');
        $this->assign("navimg",$navimg);
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
        $this->assign("index8",$index8);
        $this->assign("article",$article);
        $this->assign("list",$list);
        return view();
    }

    //课程介绍
    public function course(){
    	$webinfo = Webinfo::find();
        $index1 = db('index1')->where('id',1)->value('desc');
        $index2 = db('index2')->where('id',1)->value('logopath');
        $index3 = db('index3')->where('id',1)->find();
        $index8 = db('index8')->find();
        $course = db('course')->paginate(10);
        $list = db('article')->order('time desc')->limit(8)->select();
        $navimg = db('index2')->where('id',2)->value('logopath');
        $this->assign("navimg",$navimg);
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
        $this->assign("index8",$index8);
        $this->assign("course",$course);
        $this->assign("list",$list);
        return view();
    }


    public function courselist($id){
        $webinfo = Webinfo::find();
        $index1 = db('index1')->where('id',1)->value('desc');
        $index2 = db('index2')->where('id',1)->value('logopath');
        $index3 = db('index3')->where('id',1)->find();
        $index8 = db('index8')->find();
        $list = db('article')->order('time desc')->limit(8)->select();
        $course = db('course')->where('id',$id)->find();
        $navimg = db('index2')->where('id',2)->value('logopath');
        $this->assign("navimg",$navimg);
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
        $this->assign("index8",$index8);
        $this->assign("course",$course);
        $this->assign("list",$list);
        return view();
    }
}
