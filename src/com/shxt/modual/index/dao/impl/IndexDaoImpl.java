package com.shxt.modual.index.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.index.dao.IndexDao;
import com.shxt.modual.index.model.Index;

/**
 * 主页，数据访问层，实现类
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:58:55
 * @description
 */
@Repository("indexDao")
public class IndexDaoImpl extends BaseDaoImpl implements IndexDao {

    /**
     * 查看主页
     * @author
     * @date  下午7:50:01
     * @return List<Index>
     */
    @Override
    public List<Goods> list() {
        SqlSession session = getSqlSession();

        List<Goods> list = session.selectList(Index.class.getName() + ".list");
        return list;
    }

    /**
     * 购物车信息
     */
    @Override
    public List<Cart> getCart(String c_id) {
        SqlSession session = getSqlSession();

        List<Cart> list = session.selectList(Index.class.getName() + ".getCart",c_id);
        return list;
    }

    /**
     * 根据主键查询一条数据
     */
    @Override
    public Index get() {
        SqlSession session = getSqlSession();
        Index i = session.selectOne(Index.class.getName() + ".get");
        return i;
    }

}
