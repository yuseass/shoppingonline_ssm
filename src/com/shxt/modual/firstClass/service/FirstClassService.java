package com.shxt.modual.firstClass.service;

import java.util.List;

import com.shxt.modual.firstClass.model.FirstClass;

/**
 * 一级分类，业务层接口
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:51:03
 * @description
 */
public interface FirstClassService {

    /**添加一级分类*/
    void add(FirstClass f);
    /**查看一级分类*/
    List<FirstClass> list() ;
    /**根据主键查询一级分类*/
    FirstClass get(String f_id) ;
    /**修改一级分类*/
    void update(FirstClass f);
    /**删除一级分类*/
    void delete(String f_id);
    /**验证名称*/
    String checkName(String name);
}
