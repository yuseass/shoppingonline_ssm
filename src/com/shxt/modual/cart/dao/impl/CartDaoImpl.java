package com.shxt.modual.cart.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.address.model.Address;
import com.shxt.modual.cart.dao.CartDao;
import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;

/**
 购物车，数据访问层，实现类
 */
@Repository("cartDao")
public class CartDaoImpl extends BaseDaoImpl implements CartDao {
    
    /**
     添加购物车
     */
    @Override
    public void add(Cart c) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //插入
        session.insert(Cart.class.getName() + ".add", c);
    }
    
    /**
     查看购物车
     */
    @Override
    public List<Goods> list(String c_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //查询
        List<Goods> list = session.selectList(Cart.class.getName() + ".list",c_id);
        return list;
    }

    /**
     查看地址
     */
    @Override
    public List<Address> addressList(String c_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //查询
        List<Address> list = session.selectList(Address.class.getName() + ".list",c_id);
        return list;
    }
    
    /**
     查询购物车
     */
    @Override
    public Cart  get(Cart c) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //查询
        Cart cart = session.selectOne(Cart.class.getName() + ".get", c);
        return cart;
    }
    
    /**
     修改购物车
     */
    @Override
    public void update(Cart c) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //更新
        session.update(Cart.class.getName() + ".update", c);
    }
    
    /**
     清空购物车
     */
    @Override
    public void delete(String c_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //删除全部
        session.delete(Cart.class.getName() + ".deleteAll",c_id);
    }
    
    /**
     删除购物车
     */
    @Override
    public void delete(Cart c) {
        //获得数据库会话
        SqlSession session = getSqlSession();

        //删除
        session.delete(Cart.class.getName() + ".delete",c);
    }
}
