package com.shxt.modual.employee.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shxt.base.dao.impl.BaseDaoImpl;
import com.shxt.modual.employee.dao.EmployeeDao;
import com.shxt.modual.employee.model.Employee;

/**
 * 员工，数据访问层，实现类
 */
@Repository("employeeDao")
public class EmployeeDaoImpl extends BaseDaoImpl implements EmployeeDao {


    /**
     * 登录
     */
    @Override
    public Employee check(String account) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        Employee e = session.selectOne(Employee.class.getName() + ".login", account);
        return e;
    }


    /**
     * 添加
     */
    @Override
    public void add(Employee e) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        session.insert(Employee.class.getName() + ".add", e);
    }

    /**
     * 查看员工
     */
    @Override
    public List<Employee> list() {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //员工列表
        List<Employee> list = session.selectList(Employee.class.getName() + ".list");
        return list;
    }


    /**
     * 查看隐藏员工
     */
    @Override
    public List<Employee> hiddenList() {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //隐藏员工列表
        List<Employee> list = session.selectList(Employee.class.getName() + ".hiddenList");
        return list;
    }
    

    /**
     * 根据主键查询一条数据
     */
    @Override
    public Employee get(String e_id) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //员工
        Employee e = session.selectOne(Employee.class.getName() + ".get", e_id);
        return e;
    }

    /**
     * 判断账号是否重复
     */
    @Override
    public List<Employee> checkAccount(String account) {
        //获得数据库会话
        SqlSession session = getSqlSession();
        //通过账户获得员工
        List<Employee> list = session.selectList(Employee.class.getName() + ".check",account);
        return list;
    }

    /**
     * 修改员工
     */
    @Override
    public void update(Employee e) {
        SqlSession session = getSqlSession();
        //更新
        session.update(Employee.class.getName() + ".update", e);
    }

    /**
     * 隐藏员工
     */
    @Override
    public void hide(String e_id) {
        SqlSession session = getSqlSession();
        //隐藏
        session.update(Employee.class.getName() + ".hide", e_id);
    }

    /**
     * 恢复员工
     */
    @Override
    public void recover(String e_id) {
        SqlSession session = getSqlSession();
        //恢复
        session.update(Employee.class.getName() + ".recover", e_id);
    }

    /**
     * 删除员工
     */
    @Override
    public void delete(String e_id) {
        SqlSession session = getSqlSession();
        //删除
        session.delete(Employee.class.getName() + ".delete", e_id);
    }
}
