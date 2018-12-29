<?php

namespace app\admin\model;

use think\Model;

class Article extends Model
{
	public function gettextAttr($value,$data){
		$text = strip_tags($data['editorValue']);
		return $text;
	}
}
