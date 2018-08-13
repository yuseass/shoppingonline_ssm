package com.shxt.modual.classes.service;

import java.util.List;

import com.shxt.modual.classes.model.Classes;

/**
 二级分类，业务层接口
 */
public interface ClassesService {

    /**查看二级分类*/
    List<Classes> secondClassList() ;
    /**查看一级分类*/
    List<Classes> firstClassList() ;

}
