<?php

namespace app\admin\model;

use think\Model;

class Index61 extends Model
{
	public function getimagesAttr($value,$data){
		$images = "<img src='/static/picture/{$data['img']}' height='40px'>";
		return $images;
	}
}
