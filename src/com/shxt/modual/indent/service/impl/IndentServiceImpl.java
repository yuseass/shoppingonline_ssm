package com.shxt.modual.indent.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.base.util.Page;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.indent.dao.IndentDao;
import com.shxt.modual.indent.model.Indent;
import com.shxt.modual.indent.model.Select;
import com.shxt.modual.indent.service.IndentService;

/**
 * 订单业务层实现类
 *
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:50:55
 * @description
 */
@Service("indentService")
public class IndentServiceImpl implements IndentService {

    /** 数据访问层 */
    @Autowired
    private IndentDao indentDao;

    /**
     * 分页查看订单
     * @author
     * @date  下午7:50:46
     * @return List<Indent>
     */
    @Override
    public List<Indent> page(Page page,Select s) {
        if(s.getKey()==null){
            s.setKey("");
        }
        if(s.getDate1()==null){
            s.setDate1("");
        }
        if(s.getDate2()==null){
            s.setDate2("");
        }
        return indentDao.page(page,s);
    }

    /**
     * 查看全部订单
     * @author
     * @date  下午7:50:46
     * @return List<Indent>
     */
    @Override
    public List<Indent> list() {
        return indentDao.list();
    }
    
    /**
     * 查看购物车
     *
     * @author
     * @date  下午7:50:46
     * @return List<Goods>
     */
    @Override
    public List<Goods> cartList(String c_id) {
        return indentDao.cartList(c_id);
    }

    /**
     * 确认收货
     *
     * @author
     * @date  下午6:52:28
     * @param i void
     */
    @Override
    public void shouhuo(Indent i) {
        indentDao.shouhuo(i);
    }

    /**
     * 添加订单
     */
    @Override
    public void add(Indent i) {
        indentDao.add(i);
    }

    /**
     * 增加积分
     * @author
     * @date  下午6:52:28
     * @param c void
     */
    @Override
    public void addSpend(Indent i) {
        i.setMoney(indentDao.getSpend(i.getC_id())+i.getMoney());

        indentDao.addSpend(i);
    }

    /**
     * 增加销量
     */
    @Override
    public void addSelnum(Indent i) {
        i.setNum(indentDao.getSelnum(i.getG_id())+i.getNum());

        indentDao.addSelnum(i);
    }
    
    /**
     * 清空购物车
     */
    @Override
    public void deleteCart(String c_id) {
        indentDao.deleteCart(c_id);
    }

    /**
     * 显示评价
     */
    @Override
    public Goods getGoods(String g_id) {
        return indentDao.getGoods(g_id);
    }

    /**
     * 评价
     */
    @Override
    public void pingjia(Indent i) {
        indentDao.pingjia(i);
    }
}
