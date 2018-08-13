package com.shxt.modual.classes.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.classes.dao.ClassesDao;
import com.shxt.modual.classes.model.Classes;

/**
 分类，数据访问层，实现类
 */
@Repository("classesDao")
public class ClassesDaoImpl extends BaseDaoImpl implements ClassesDao {

    /**
     查看二级分类
     */
    @Override
    public List<Classes> secondClassList() {
        //获取数据库会话
        SqlSession session = getSqlSession();
        //查询
        List<Classes> list = session.selectList(Classes.class.getName() + ".secondClassList");
        return list;
    }

    /**
     查看一级分类
     */
    @Override
    public List<Classes> firstClassList() {
        //获得数据库会话
        SqlSession session = getSqlSession();

        //查询
        List<Classes> list = session.selectList(Classes.class.getName() + ".firstClassList");
        return list;
    }

}
