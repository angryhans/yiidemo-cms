<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'文章列表'=>array('index'),
	'发表文章',
);

$this->menu=array(
	array('label'=>'文章列表', 'url'=>array('index')),
	array('label'=>'管理文章', 'url'=>array('admin')),
);
?>

<h1>发表文章</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>