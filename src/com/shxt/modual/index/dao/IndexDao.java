package com.shxt.modual.index.dao;

import java.util.List;

import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.index.model.Index;

/**
 * 主页，数据访问层,接口
 */
public interface IndexDao {

    /**
     * 查看主页
     */
    List<Goods> list();

    /**
     * 购物车信息
     */
    List<Cart> getCart(String c_id);


    /**
     * 根据主键查询一条数据
     */
    Index get();

}
