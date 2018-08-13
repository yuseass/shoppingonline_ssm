package com.shxt.modual.index.service;

import java.util.List;

import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.index.model.Index;

/**
 * 主页，业务层接口
 */
public interface IndexService {
    
    /**
     * 主页商品
     */
    List<Goods> list() ;

    /**
     * 购物车信息
     */
    List<Cart> getCart(String c_id) ;

    /**
     * 主页布局
     */
    Index get();

}
