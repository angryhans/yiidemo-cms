<?php
/* @var $this PostController */
/* @var $model Post */

$this->breadcrumbs=array(
	'文章列表'=>array('index'),
	'ID#'.$model->post_id,
);

$this->menu=array(
	array('label'=>'查看列表', 'url'=>array('index')),
	array('label'=>'发表文章', 'url'=>array('create')),
	array('label'=>'修改文章', 'url'=>array('update', 'id'=>$model->post_id)),
	array('label'=>'删除文章', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->post_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'管理文章', 'url'=>array('admin')),
);
?>


<!--<h1>View Post #<?php echo $model->post_id; ?></h1>-->
<?php /*$this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'post_id',
		'subject',
		'content',
		'user_id',
		'username',
		'date_created',
		'date_updated',
	),
));*/ ?>

<h2><?php echo $model->subject;?></h2>
<p>本文由<b><?php echo $model->username;?></b> 发表于 <?php echo $model->date_created;?></p>
<hr/>
<p style="font-size: 20px;color:blue;"><?php echo $model->content;?></p>
