<?php
/* @var $this PostController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'文章列表',
);

$this->menu=array(
	array('label'=>'发表文章', 'url'=>array('create')),
	array('label'=>'管理文章', 'url'=>array('admin')),
);
?>

<h1>文章列表</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
