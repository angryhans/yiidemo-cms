<?php
/* @var $this PostController */
/* @var $data Post */
?>

<div class="view">

    <?php echo CHtml::link(CHtml::encode($data->subject), array('view', 'id' => $data->post_id)); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('username')); ?>:</b>
    <?php echo CHtml::encode($data->username); ?>
    <br />

    <b><?php echo CHtml::encode($data->getAttributeLabel('date_created')); ?>:</b>
    <?php echo CHtml::encode($data->date_created); ?>
    <br />	

    <b><?php echo CHtml::encode($data->getAttributeLabel('content')); ?>:</b>
    <?php echo CHtml::encode($data->content); ?>
    <br />

</div>