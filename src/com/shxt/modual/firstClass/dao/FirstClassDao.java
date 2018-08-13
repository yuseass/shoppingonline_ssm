package com.shxt.modual.firstClass.dao;

import java.util.List;

import com.shxt.modual.firstClass.model.FirstClass;

/**
 * 一级分类，数据访问层,接口
 */
public interface FirstClassDao {
    /**添加*/
    void add(FirstClass f);
    /**查看一级分类*/
    List<FirstClass> list();
    /**根据主键查询一条数据*/
    FirstClass get(String f_id);
    /**判断名称是否重复*/
    List<FirstClass> checkName(String name);
    /**修改一级分类*/
    void update(FirstClass f);
    /**删除一级分类*/
    void delete(String f_id);
}
