package com.shxt.modual.secondClass.service;

import java.util.List;

import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.secondClass.model.SecondClass;

/**
 * 二级分类，业务层接口
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:51:03
 * @description
 */
public interface SecondClassService {

    /**
     * 添加二级分类
     * @author
     * @date  下午6:52:28
     * @param e void
     */
    void add(SecondClass s);

    /**
     * 查看二级分类
     * @author
     * @date  下午7:50:46
     * @return List<SecondClass>
     */
    List<SecondClass> list() ;

    /**
     * 根据主键查询二级分类
     * @author
     * @date  下午6:14:37
     * @param id
     * @return SecondClass
     */
    SecondClass get(String s_id) ;

    /**
     * 查看一级分类
     * @author
     * @date  下午7:50:46
     * @return List<FirstClass>
     */
    List<FirstClass> firstClassList() ;

    /**
     * 修改二级分类
     * @author
     * @date  下午6:30:42
     * @param e void
     */
    void update(SecondClass s);

    /**
     * 删除二级分类
     * @author
     * @date  下午6:30:42
     * @param e void
     */
    void delete(String s_id);

    /**
     * 验证名称
     * @author
     * @date  下午6:30:42
     * @param e void
     */
    String checkName(String name);
}
