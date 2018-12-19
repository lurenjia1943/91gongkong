<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Webinfo;
use app\admin\model\Index6;
use app\admin\model\Index61;
use app\admin\model\Article;
use app\admin\model\Course;

class Index extends Controller
{
    public function index()
    {
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //网站基本信息
    public function webinfo(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $webinfo = Webinfo::find();
        $this->assign("webtitle",$webinfo->webtitle);
        $this->assign("webkeywords",$webinfo->webkeywords);
        $this->assign("webdesc",$webinfo->webdesc);
        return view();
    }

    //登陆
    public function login(){
        $username = input('username');
        $password = input('password');

        $arr = db('admin')->where('username',$username)->find();
        
        if ($password == $arr['password']) {
            session('admin_id', $arr['id']);
            echo "OK";
        }else{
            echo "账号或密码错误";
        }
    }

    //退出
    public function loginout(){
        session(null);
        $this->redirect('/admin');
    }

    //修改密码
    public function updatepass(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //修改密码
    public function editpass(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $username = input('username');
        $oldpassword = input('oldpassword');
        $newpassword1 = input('newpassword1');
        $newpassword2 = input('newpassword2');

        if ($newpassword1 != $newpassword2) {
            $this->error('两次密码不一致');
        }

        $rows = db('admin')->where('username',$username)->where('password',$oldpassword)->find();

        if ($rows == null) {
            $this->error('账号或密码错误');
        }

        db('admin')->where('username', $username)->update(['password' => $newpassword1]);
        $this->success('更新成功');
    }

    //网站基本信息修改
    public function webinfoedit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $webinfo = new Webinfo;
        // 过滤post数组中的非数据表字段数据
        $webinfo->save(input(''),['id' => 1]);
        $this->success('更新成功');
    }

    //首页一层
    public function index1()
    {
        if (!session('?admin_id')) {
            return view("login");
        }
        $index1 = db('index1')->where('id',1)->value('desc');
        $this->assign("index1",$index1);
        return view();
    }

    //首页一层信息修改
    public function index1edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        db('index1')->update(['desc' => input('desc'),'id'=>1]);
        $this->success('更新成功');
    }

    public function index2(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //修改logo
    public function index2edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //修改轮播
    public function index3edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        $index4 = db('index4')->select();
        $this->assign("index4",$index4);
        return view();
    }

    //开班信息修改
    public function index4edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        db('index4')->update(input(''));
        $this->success('更新成功');
    }

    //师资力量
    public function index5(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $index5 = db('index5')->select();
        $this->assign("index5",$index5);
        return view();
    }

    //修改教师头像
    public function index5edit($id){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        db('index5')->update(['name' => input('name'),'desc' => input('desc'),'id'=>input('id')]);
        $this->success('更新成功');
    }

    //教学风采
    public function index61view($page=1,$limit=10){
        if (!session('?admin_id')) {
            return view("login");
        }
        $jxfc = Index61::limit(($page-1)*$limit,$limit)->order('time desc')->select();
        $jxfc = json_encode($jxfc);
        $rows = Index61::count();
        $jxfc = '{"code": 0,"msg": "","count": '.$rows.',"data":'.$jxfc.'}';
        echo $jxfc;
    }

    public function index61(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //新增教学风采
    public function index61add(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //新增教学风采
    public function index61insert(){
        if (!session('?admin_id')) {
            return view("login");
        }
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('img');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            $data = ['img' => $getSaveName,'beizhu' => input('beizhu'),'time'=>date("Y-m-d"),'id'=>input('id')];
            db('index61')->insert($data);
            $this->success('新增成功',"/admin/index/index61");
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }

    //删除教学风采
    public function index61del(){
        if (!session('?admin_id')) {
            return view("login");
        }
        Index61::destroy(input('id'));
    }

    //学员单元格编辑
    public function index61edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $id = input('id');
        $field = input('field');
        $value = input('value');

        $user = new index61;
        $oldvalue = $user ->find($id)->$field;
        //过滤post数组中的非数据表字段数据
        $m = $user->save([$field=>$value], ['id' => $id]);

        if ($m) {
            echo "更新成功";
        }else{
            echo "更新失败";
        }
    }

    //就业学员
    public function index6view($page=1,$limit=10){
        if (!session('?admin_id')) {
            return view("login");
        }
        $students = Index6::limit(($page-1)*$limit,$limit)->select();
        $rows = Index6::count();
        $students = json_encode($students);
        $students = '{"code": 0,"msg": "","count": '.$rows.',"data":'.$students.'}';
        echo $students;
    }

    public function index6(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //删除学员
    public function index6del(){
        if (!session('?admin_id')) {
            return view("login");
        }
        Index6::destroy(input('id'));
    }
    
    //学员单元格编辑
    public function index6edit(){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //新增学员
    public function index6insert(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $user = new Index6;
        // 过滤post数组中的非数据表字段数据
        $user->save(input(''));
        $this->success('新增成功',"/admin/index/index6");
    }

    //合作企业
    public function index7(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $index7 = db('index7')->find();
        $this->assign("index7",$index7);
        return view();
    }

    //合作企业图片
    public function index7edit($id){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        db('index7')->update(['desc' => input('desc'),'id'=>1]);
        $this->success('更新成功');
    }

    //底部信息
    public function index8(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $index8 = db('index8')->find();
        $this->assign("index8",$index8);
        return view();
    }

    //二维码
    public function index8edit($id){
        if (!session('?admin_id')) {
            return view("login");
        }
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
        if (!session('?admin_id')) {
            return view("login");
        }
        db('index8')->update(['address' => input('address'),'beian' => input('beian'),'id'=>1]);
        $this->success('更新成功');
    }

    //添加文章
    public function articleadd(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //添加文章
    public function articleedit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('poster');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            $data = ['poster' => $getSaveName,'title' => input('title'), 'editorValue' => input('editorValue'),'time'=>date("Y-m-d")];
            db('article')->insert($data);
            $this->success('新增成功',"/admin/index/articlelist");
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }

    //文章列表
    public function articlelistview($page=1,$limit=10){
        if (!session('?admin_id')) {
            return view("login");
        }
        $articlelist = Article::limit(($page-1)*$limit,$limit)->order('time desc')->select();
        $rows = Article::count();
        $articlelist = json_encode($articlelist);
        $articlelist = '{"code": 0,"msg": "","count": '.$rows.',"data":'.$articlelist.'}';
        echo $articlelist;
    }

    //删除文章
    public function articledel(){
        if (!session('?admin_id')) {
            return view("login");
        }
        Article::destroy(input('id'));
    }

    //文章单元格编辑
    public function articleedit1(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $id = input('id');
        $field = input('field');
        $value = input('value');

        $user = new Article;
        $oldvalue = $user ->find($id)->$field;
        //过滤post数组中的非数据表字段数据
        $m = $user->save([$field=>$value], ['id' => $id]);

        if ($m) {
            echo "更新成功";
        }else{
            echo "更新失败";
        }
    }

    public function articlelist(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //文章更新
    public function articleupdate($id){
        if (!session('?admin_id')) {
            return view("login");
        }
        $article = db('article')->find($id);
        $this->assign("article",$article);
        return view();
    }

    //文章更新
    public function articleupdate1(){
        if (!session('?admin_id')) {
            return view("login");
        }
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('poster');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            $data = ['poster' => $getSaveName,'title' => input('title'), 'editorValue' => input('editorValue'),'time'=>date("Y-m-d"),'id'=>input('id')];
            db('article')->update($data);
            $this->success('更新成功',"/admin/index/articlelist");
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }

    //添加课程
    public function courseadd(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //添加课程
    public function courseedit(){
        if (!session('?admin_id')) {
            return view("login");
        }
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('poster');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            $data = ['poster' => $getSaveName,'title' => input('title'), 'editorValue' => input('editorValue'),'time'=>date("Y-m-d")];
            db('course')->insert($data);
            $this->success('新增成功',"/admin/index/courselist");
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }

    //课程列表
    public function courselistview($page=1,$limit=10){
        if (!session('?admin_id')) {
            return view("login");
        }
        $courselist = Course::limit(($page-1)*$limit,$limit)->order('time desc')->select();
        $rows = Course::count();
        $courselist = json_encode($courselist);
        $courselist = '{"code": 0,"msg": "","count": '.$rows.',"data":'.$courselist.'}';
        echo $courselist;
    }

    //删除课程
    public function coursedel(){
        if (!session('?admin_id')) {
            return view("login");
        }
        Course::destroy(input('id'));
    }

    //文章单元格编辑
    public function courseedit1(){
        if (!session('?admin_id')) {
            return view("login");
        }
        $id = input('id');
        $field = input('field');
        $value = input('value');

        $user = new Course;
        $oldvalue = $user ->find($id)->$field;
        //过滤post数组中的非数据表字段数据
        $m = $user->save([$field=>$value], ['id' => $id]);

        if ($m) {
            echo "更新成功";
        }else{
            echo "更新失败";
        }
    }

    public function courselist(){
        if (!session('?admin_id')) {
            return view("login");
        }
        return view();
    }

    //课程更新
    public function courseupdate($id){
        if (!session('?admin_id')) {
            return view("login");
        }
        $course = db('course')->find($id);
        $this->assign("course",$course);
        return view();
    }

    //课程更新
    public function courseupdate1(){
        if (!session('?admin_id')) {
            return view("login");
        }
        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('poster');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move( './static/picture');
        if($info){
            $getSaveName = str_replace("\\", "/",$info->getSaveName());
            // 成功上传后 获取上传信息
            $data = ['poster' => $getSaveName,'title' => input('title'), 'editorValue' => input('editorValue'),'time'=>date("Y-m-d"),'id'=>input('id')];
            db('course')->update($data);
            $this->success('更新成功',"/admin/index/courselist");
        }else{
            // 上传失败获取错误信息
            echo $file->getError();
        }
    }
}
