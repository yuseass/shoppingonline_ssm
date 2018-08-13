package com.shxt.modual.customer.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.shxt.modual.customer.model.Customer;

/**
 *用户，业务层接口
 */
public interface CustomerService {
    
    /**登录*/
    Customer check(String account);
    /**添加用户*/
    void add(Customer c,MultipartFile photoFile,HttpServletRequest request);
    /**根据主键查询用户*/
    Customer get(String c_id) ;
    /**修改用户*/
    void update(Customer c,MultipartFile photoFile,HttpServletRequest request);
    /**修改密码*/
    void pswUpdate(Customer c);
    /**验证账号*/
    String checkAccount(String account);
    /**查看用户*/
    List<Customer> list() ;
    /**查看隐藏用户*/
    List<Customer> hiddenList() ;
    /**隐藏用户*/
    void hide(String c_id);
    /**恢复用户*/
    void recover(String c_id);
    /**删除用户*/
    void delete(String c_id);
}
