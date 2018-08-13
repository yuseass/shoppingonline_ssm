package com.shxt.modual.indent.service;

import java.util.List;

import com.shxt.base.util.Page;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.indent.model.Indent;
import com.shxt.modual.indent.model.Select;

/**
 * service层。存放业务逻辑处理，一些关于数据库处理的操作
 * 订单，业务层接口
 */
public interface IndentService {
    /**
     * 分页查看订单
     */
    List<Indent> page(Page page,Select s) ;

    /**
     * 查看所有订单
     */
    List<Indent> list() ;

    /**
     * 查看购物车
     */
    List<Goods> cartList(String c_id) ;

    /**
     * 收货
     */
    void shouhuo(Indent i);

    /**
     * 添加订单
     */
    void add(Indent i);

    /**
     * 增加积分
     */
    void addSpend(Indent i);

    /**
     * 增加销量
     */
    void addSelnum(Indent i);
    
    /**
     * 清空购物车
     */
    void deleteCart(String c_id);

    /**
     * 显示评价
     */
    Goods getGoods(String g_id);

    /**
     * 评价
     */
    void pingjia(Indent i);

}
