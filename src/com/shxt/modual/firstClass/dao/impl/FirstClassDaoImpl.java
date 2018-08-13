package com.shxt.modual.firstClass.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.firstClass.dao.FirstClassDao;
import com.shxt.modual.firstClass.model.FirstClass;

/**
 * 一级分类，数据访问层，实现类
 */
@Repository("firstClassDao")
public class FirstClassDaoImpl extends BaseDaoImpl implements FirstClassDao {

    /**
     * 添加
     */
    @Override
    public void add(FirstClass f) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //插入
        session.insert(FirstClass.class.getName() + ".add", f);
    }

    /**
     * 查看一级分类
     */
    @Override
    public List<FirstClass> list() {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //获得一级分类列表
        List<FirstClass> list = session.selectList(FirstClass.class.getName() + ".list");
        return list;
    }

    /**
     * 根据主键查询一条数据
     */
    @Override
    public FirstClass get(String f_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //查找一级分类
        FirstClass f = session.selectOne(FirstClass.class.getName() + ".get", f_id);
        return f;
    }

    /**
     * 判断账是否重复
     */
    @Override
    public List<FirstClass> checkName(String name) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //按分类名查找
        List<FirstClass> list = session.selectList(FirstClass.class.getName() + ".check",name);
        return list;
    }

    /**
     * 修改一级分类
     */
    @Override
    public void update(FirstClass f) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //更新
        session.update(FirstClass.class.getName() + ".update", f);
    }

    /**
     * 删除一级分类
     */
    @Override
    public void delete(String f_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //删除
        session.delete(FirstClass.class.getName() + ".delete", f_id);
    }
}
