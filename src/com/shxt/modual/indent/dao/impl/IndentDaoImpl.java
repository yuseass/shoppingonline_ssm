package com.shxt.modual.indent.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.base.util.Page;
import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.indent.dao.IndentDao;
import com.shxt.modual.indent.model.Indent;
import com.shxt.modual.indent.model.Select;

/**
 * 订单，数据访问层，实现类
 */
@Repository("indentDao")
public class IndentDaoImpl extends BaseDaoImpl implements IndentDao {
    
    
    /**
     * 分页查看订单
     */
    @Override
    public List<Indent> page(Page page,Select s) {
        SqlSession session = getSqlSession();
        
        //每页显示的行数
        int size = page.getSize();
        
        //总记录数
        Integer count = session.selectOne(Indent.class.getName() + ".paging_count",s);
        page.setCount(count);
        
        //总页数
        page.setAll(count % size == 0 ? count / size : count / size + 1);
        
        if(page.getIndex() < 1) {
            page.setIndex(1);
        }
        
        if(page.getIndex() > page.getAll()) {
            page.setIndex(page.getAll());
        }
        
        //起始记录数
        int start = (page.getIndex() - 1) * page.getSize();
        
        s.setStart(start);
        s.setSize(size);
        List<Indent> list = session.selectList(Indent.class.getName() + ".paging", s);
        
        return list;
    }
    
    /**
     * 查看全部订单
     */
    @Override
    public List<Indent> list() {
        SqlSession session = getSqlSession();
        List<Indent> list = session.selectList(Indent.class.getName() + ".list");
        
        return list;
    }
    
    /**
     * 查看购物车
     */
    @Override
    public List<Goods> cartList(String c_id) {
        SqlSession session = getSqlSession();
        
        List<Goods> list = session.selectList(Cart.class.getName() + ".list",c_id);
        return list;
    }
    
    /**
     * 收货
     */
    @Override
    public void shouhuo(Indent i) {
        SqlSession session = getSqlSession();
        session.insert(Indent.class.getName() + ".shouhuo", i);
    }
    
    /**
     * 添加
     */
    @Override
    public void add(Indent i) {
        SqlSession session = getSqlSession();
        session.insert(Indent.class.getName() + ".add", i);
    }
    
    /**
     * 查看积分
     */
    @Override
    public Integer getSpend(String c_id){
        SqlSession session = getSqlSession();
        
        return session.selectOne(Indent.class.getName() + ".getSpend",c_id);
    }
    
    /**
     * 增加积分
     * @author
     * @date  下午6:52:28
     */
    @Override
    public void addSpend(Indent i) {
        SqlSession session = getSqlSession();
        
        session.update(Indent.class.getName()+ ".addSpend", i);
    }
    
    /**
     * 查看销量
     */
    @Override
    public Integer getSelnum(String g_id){
        SqlSession session = getSqlSession();
        
        return session.selectOne(Indent.class.getName() + ".getSelnum",g_id);
    }
    /**
     * 增加销量
     */
    @Override
    public void addSelnum(Indent i) {
        SqlSession session = getSqlSession();
        
        session.update(Indent.class.getName()+ ".addSelnum", i);
    }

    /**
     * 清空购物车
     */
    @Override
    public void deleteCart(String c_id) {
        SqlSession session = getSqlSession();
        session.delete(Cart.class.getName() + ".deleteAll",c_id);
    }
    
    /**
     * 显示评价
     */
    @Override
    public Goods getGoods(String g_id) {
        SqlSession session = getSqlSession();
        Goods g = session.selectOne(Goods.class.getName() + ".get", g_id);
        return g;
    }
    
    /**
     * 评价
     */
    @Override
    public void pingjia(Indent i) {
        SqlSession session = getSqlSession();
        
        session.update(Indent.class.getName()+ ".pingjia", i);
    }
}
