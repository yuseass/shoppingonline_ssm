package com.shxt.modual.classes.dao;

import java.util.List;

import com.shxt.modual.classes.model.Classes;

/**
 分类，数据访问层,接口
 */
public interface ClassesDao {

    /**查看二级分类*/
    List<Classes> secondClassList();
    /**查看一级分类*/
    List<Classes> firstClassList();
}
