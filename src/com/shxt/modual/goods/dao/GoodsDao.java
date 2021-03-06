package com.shxt.modual.goods.dao;

import java.util.List;

import com.shxt.base.util.Page;
import com.shxt.modual.classes.model.Classes;
import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.goods.model.Select;
import com.shxt.modual.secondClass.model.SecondClass;

/**
 * 商品，数据访问层,接口
 */
public interface GoodsDao {
    
    /**
     * 查看商品
     */
    List<Goods> list();
    
    /**
     * 分页查看读者
     */
    List<Goods> page(Page page,Select s);
    
    /**
     * 根据主键查询一条数据
     */
    Goods get(String g_id);
    
    /**
     * 查看一级分类
     */
    List<Classes> firstClassList();

    /**
     * 查看二级分类
     */
    List<Classes> secondClassList(String f_id);
    
    /**
     * 查看一级分类
     */
    List<FirstClass> b_firstClassList();
    
    /**
     * 查看二级分类
     */
    List<SecondClass> b_secondClassList(String f_id);
    
    /**
     * 获得f_id
     */
    String getF_id(String g_id);
    
    /**
     * 添加
     */
    void add(Goods g);
    
    /**
     * 查看隐藏商品
     */
    List<Goods> hiddenList();
    
    
    /**
     * 获得id
     */
    Goods getId();
    
    
    /**
     * 修改商品
     */
    void update(Goods g);
    
    /**
     * 隐藏商品
     */
    void hide(String g_id);
    
    /**
     * 恢复商品
     */
    void recover(String g_id);
    
    /**
     * 删除商品
     */
    void delete(String g_id);
}
