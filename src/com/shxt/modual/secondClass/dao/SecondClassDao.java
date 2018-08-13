package com.shxt.modual.secondClass.dao;

import java.util.List;

import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.secondClass.model.SecondClass;

/**
 * 二级分类，数据访问层,接口
 */
public interface SecondClassDao {
    /**
     * 添加
     */
    void add(SecondClass s);

    /**
     * 查看二级分类
     */
    List<SecondClass> list();
    
    /**
     * 查看一级分类
     */
    List<FirstClass> firstClassList();
    /**
     * 根据主键查询一条数据
     */
    SecondClass get(String s_id);

    /**
     * 判断名称是否重复
     */
    List<SecondClass> checkName(String name);

    /**
     * 修改二级分类
     */
    void update(SecondClass s);

    /**
     * 删除二级分类
     */
    void delete(String s_id);
}
