package com.shxt.modual.customer.dao;

import java.util.List;

import com.shxt.modual.customer.model.Customer;

/**
 * 用户，数据访问层,接口
 */
public interface CustomerDao {
    /**添加*/
    void add(Customer c);
    /**登录*/
    Customer check(String account);
    /**根据主键查询一条数据*/
    Customer get(String c_id);
    /**判断账号是否重复*/
    List<Customer> checkAccount(String account);
    /**修改用户*/
    void update(Customer c);
    /**修改密码*/
    void pswUpdate(Customer c);
    /**查看用户*/
    List<Customer> list();
    /**查看隐藏用户*/
    List<Customer> hiddenList();
    /**隐藏用户*/
    void hide(String c_id);
    /**恢复用户*/
    void recover(String c_id);
    /**删除用户*/
    void delete(String c_id);
}
