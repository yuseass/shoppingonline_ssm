package com.shxt.modual.address.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.address.dao.AddressDao;
import com.shxt.modual.address.model.Address;
import com.shxt.modual.address.model.Place;

/**
 地址，数据访问层，实现类
 */
@Repository("addressDao")
public class AddressDaoImpl extends BaseDaoImpl implements AddressDao {

    /**添加 */
    @Override
    public void add(Address a) {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //插入操作
        session.insert(Address.class.getName() + ".add", a);
    }

    /**
     查看地址
     */
    @Override
    public List<Address> list(String c_id) {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //查找
        List<Address> list = session.selectList(Address.class.getName() + ".list",c_id);
        return list;
    }

    /**
     查看省份
     */
    @Override
    public List<Place> provinceList() {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //查找
        List<Place> list = session.selectList(Address.class.getName() + ".provinceList");
        return list;
    }

    /**
     查看省份
     */
    @Override
    public List<Place> cityList(String p_id) {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //查找
        List<Place> list = session.selectList(Address.class.getName() + ".cityList",p_id);
        return list;
    }

    /**
     获得id
     */
    @Override
    public List<Address> getId() {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //查找
        List<Address> list = session.selectList(Address.class.getName() + ".getId");
        return list;
    }

    /**
      删除地址
     */
    @Override
    public void delete(String a_id) {
        //mybatis获取数据库会话
        SqlSession session = getSqlSession();
        //查找
        session.delete(Address.class.getName() + ".delete", a_id);
    }
}
