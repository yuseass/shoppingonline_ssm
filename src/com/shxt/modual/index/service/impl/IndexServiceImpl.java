package com.shxt.modual.index.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.index.dao.IndexDao;
import com.shxt.modual.index.model.Index;
import com.shxt.modual.index.service.IndexService;

/**
 * 主页业务层实现类
 */
@Service("indexService")
public class IndexServiceImpl implements IndexService {
    //数据访问层
    @Autowired
    private IndexDao indexDao;
    
    /**
     * 查看主页
     */
    @Override
    public List<Goods> list() {
        return indexDao.list();
    }

    /**
     * 购物车信息
     */
    @Override
    public List<Cart> getCart(String c_id) {
        return indexDao.getCart(c_id);
    }
    
    /**
     * 根据主键查询主页
     */
    @Override
    public Index get() {
        return indexDao.get();
    }
    
}
