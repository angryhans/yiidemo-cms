<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class BBlog extends CComponent {
    
    public static function getList(){
        return Blog::model()->findAll();
    }
}
