package com.shxt.modual.secondClass.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.secondClass.dao.SecondClassDao;
import com.shxt.modual.secondClass.model.SecondClass;

/**
 * 二级分类，数据访问层，实现类
 */
@Repository("secondClassDao")
public class SecondClassDaoImpl extends BaseDaoImpl implements SecondClassDao {

    /**
     * 添加
     */
    @Override
    public void add(SecondClass s) {
        SqlSession session = getSqlSession();

        session.insert(SecondClass.class.getName() + ".add", s);
    }

    /**
     * 查看二级分类
     */
    @Override
    public List<SecondClass> list() {
        SqlSession session = getSqlSession();

        List<SecondClass> list = session.selectList(SecondClass.class.getName() + ".list");
        return list;
    }

    /**
     * 查看一级分类
     * @author
     * @date  下午7:50:01
     * @return List<FirstClass>
     */
    @Override
    public List<FirstClass> firstClassList() {
        SqlSession session = getSqlSession();

        List<FirstClass> list = session.selectList(FirstClass.class.getName() + ".list");
        return list;
    }

    /**
     * 根据主键查询一条数据
     * @author
     * @date  下午6:13:42
     * @param id
     * @return SecondClass
     */
    @Override
    public SecondClass get(String s_id) {
        SqlSession session = getSqlSession();
        SecondClass s = session.selectOne(SecondClass.class.getName() + ".get", s_id);
        return s;
    }

    /**
     * 判断账是否重复
     */
    @Override
    public List<SecondClass> checkName(String name) {
        SqlSession session = getSqlSession();

        List<SecondClass> list = session.selectList(SecondClass.class.getName() + ".check",name);
        return list;
    }

    /**
     * 修改二级分类
     */
    @Override
    public void update(SecondClass s) {
        SqlSession session = getSqlSession();

        session.update(SecondClass.class.getName() + ".update", s);
    }

    /**
     * 删除二级分类
     */
    @Override
    public void delete(String s_id) {
        SqlSession session = getSqlSession();
        session.delete(SecondClass.class.getName() + ".delete", s_id);
    }
}
