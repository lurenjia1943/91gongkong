<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Webinfo;
use app\admin\model\Index6;

class Index extends Controller
{
    public function index()
    {
        return view();
    }

    //网站基本信息
    public function webinfo(){
    	$webinfo = Webinfo::find();
    	$this->assign("webtitle",$webinfo->webtitle);
    	$this->assign("webkeywords",$webinfo->webkeywords);
    	$this->assign("webdesc",$webinfo->webdesc);
    	return view();
    }

    //网站基本信息修改
    public function webinfoedit(){
    	$webinfo = new Webinfo;
		// 过滤post数组中的非数据表字段数据
		$webinfo->save(input(''),['id' => 1]);
		$this->success('更新成功');
    }

    //首页一层
    public function index1()
    {
    	$index1 = db('index1')->where('id',1)->value('desc');
    	$this->assign("index1",$index1);
        return view();
    }

    //首页一层信息修改
    public function index1edit(){
    	db('index1')->update(['desc' => input('desc'),'id'=>1]);
		$this->success('更新成功');
    }

    public function index2(){
    	return view();
    }

    //修改logo
    public function index2edit(){
    	// 获取表单上传文件 例如上传了001.jpg
		$file = request()->file('logo');
		// 移动到框架应用根目录/uploads/ 目录下
		$info = $file->move( './static/picture');
		if($info){
			$getSaveName = str_replace("\\", "/",$info->getSaveName());
			// 成功上传后 获取上传信息
			db('index2')->update(['logopath' => $getSaveName,'id'=>1]);
			// 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
			//echo $info->getSaveName();
			// 输出 42a79759f284b767dfcb2a0197904287.jpg
			//echo $info->getFilename();
			$this->success('更新成功');
		}else{
			// 上传失败获取错误信息
			echo $file->getError();
		}
    }

    public function index3(){
    	return view();
    }

    //修改轮播
    public function index3edit(){
    	//分别是哪个ban图
    	$name = input('name');
    	// 获取表单上传文件 例如上传了001.jpg
		$file = request()->file($name);
		// 移动到框架应用根目录/uploads/ 目录下
		$info = $file->move( './static/picture');
		if($info){
			$getSaveName = str_replace("\\", "/",$info->getSaveName());
			// 成功上传后 获取上传信息
			db('index3')->update([$name => $getSaveName,'id'=>1]);
			// 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
			//echo $info->getSaveName();
			// 输出 42a79759f284b767dfcb2a0197904287.jpg
			//echo $info->getFilename();
			$this->success('更新成功');
		}else{
			// 上传失败获取错误信息
			echo $file->getError();
		}
    }

    //开班信息
    public function index4(){
        $index4 = db('index4')->select();
        $this->assign("index4",$index4);
        return view();
    }

    //开班信息修改
    public function index4edit(){
        db('index4')->update(input(''));
        $this->success('更新成功');
    }

    //师资力量
    public function index5(){
        $index5 = db('index5')->select();
        $this->assign("index5",$index5);
        return view();
    }

    //修改教师头像
    public function index5edit($id){
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            db('index5')->update(['img' => $getSaveName,'id'=>$id]);
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getFilename();
            $str = <<<EOF
        {
          "code": 0
          ,"msg": ""
          ,"data": {
            "src": "http://cdn.layui.com/123.jpg"
          }
        } 
EOF;
            echo $str;
        }
    }

    //老师信息修改
    public function index5edit1(){
        db('index5')->update(['name' => input('name'),'desc' => input('desc'),'id'=>input('id')]);
        $this->success('更新成功');
    }

    //就业学员
    public function index6view(){
        $students = Index6::select();
        $rows = Index6::count();
        $students = json_encode($students);
        $students = '{"code": 0,"msg": "","count": '.$rows.',"data":'.$students.'}';
        echo $students;
    }

    public function index6(){
        return view();
    }

    //删除学员
    public function index6del(){
        Index6::destroy(input('id'));
    }
    
    //学员单元格编辑
    public function index6edit(){
        $id = input('id');
        $field = input('field');
        $value = input('value');

        $user = new index6;
        $oldvalue = $user ->find($id)->$field;
        //过滤post数组中的非数据表字段数据
        $m = $user->save([$field=>$value], ['id' => $id]);

        if ($m) {
            echo "更新成功";
        }else{
            echo "更新失败";
        }
        
    }

    //新增学员
    public function index6add(){
        return view();
    }
    //新增学员
    public function index6insert(){
        $user = new Index6;
        // 过滤post数组中的非数据表字段数据
        $user->save(input(''));
        $this->success('新增成功',"/admin/index/index6");
    }

    //合作企业
    public function index7(){
        $index7 = db('index7')->find();
        $this->assign("index7",$index7);
        return view();
    }

    //合作企业图片
    public function index7edit($id){
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            db('index7')->update(['img' => $getSaveName,'id'=>$id]);
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getFilename();
            $str = <<<EOF
        {
          "code": 0
          ,"msg": ""
          ,"data": {
            "src": "http://cdn.layui.com/123.jpg"
          }
        } 
EOF;
            echo $str;
        }
    }

    //合作企业信息修改
    public function index7edit1(){
        db('index7')->update(['desc' => input('desc'),'id'=>1]);
        $this->success('更新成功');
    }

    //底部信息
    public function index8(){
        $index8 = db('index8')->find();
        $this->assign("index8",$index8);
        return view();
    }

    //二维码
    public function index8edit($id){
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('file');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            db('index8')->update(['img' => $getSaveName,'id'=>$id]);
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
            //echo $info->getFilename();
            $str = <<<EOF
        {
          "code": 0
          ,"msg": ""
          ,"data": {
            "src": "http://cdn.layui.com/123.jpg"
          }
        } 
EOF;
            echo $str;
        }
    }

    //底部信息修改
    public function index8edit1(){
        db('index8')->update(['address' => input('address'),'beian' => input('beian'),'id'=>1]);
        $this->success('更新成功');
    }
}
