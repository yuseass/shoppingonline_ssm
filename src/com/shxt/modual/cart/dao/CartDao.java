package com.shxt.modual.cart.dao;

import java.util.List;

import com.shxt.modual.address.model.Address;
import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;

/**
 购物车，数据访问层,接口
 */
public interface CartDao {
    /**添加购物车*/
    void add(Cart c);
    /**查看购物车*/
    List<Goods> list(String c_id);
    /**查看地址*/
    List<Address> addressList(String c_id);
    /**查询购物车*/
    Cart  get(Cart c) ;
    /**修改购物车*/
    void update(Cart c);
    /**清空购物车*/
    void delete(String  c_id);
    /**删除购物车*/
    void delete(Cart c);
}
