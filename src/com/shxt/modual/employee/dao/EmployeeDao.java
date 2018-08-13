package com.shxt.modual.employee.dao;

import java.util.List;

import com.shxt.modual.employee.model.Employee;

/**
 * 员工，数据访问层,接口
 */
public interface EmployeeDao {
    
    /**登录*/
    Employee check(String account);
    /**添加*/
    void add(Employee e);
    /**查看员工*/
    List<Employee> list();
    /**查看隐藏员工*/
    List<Employee> hiddenList();
    /**根据主键查询一条数据*/
    Employee get(String e_id);
    /**判断账号是否重复*/
    List<Employee> checkAccount(String account);
    /**修改员工*/
    void update(Employee e);
    /**隐藏员工*/
    void hide(String e_id);
    /**恢复员工*/
    void recover(String e_id);
    /**删除员工*/
    void delete(String e_id);
}
