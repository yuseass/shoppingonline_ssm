package com.shxt.modual.employee.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.shxt.modual.employee.model.Employee;

/**
 * 员工，业务层接口
 */
public interface EmployeeService {
    
    /**登录*/
    Employee check(String account);
    /**添加员工*/
     void add(Employee e, MultipartFile photoFile, HttpServletRequest request) ;
    /**查看员工*/
    List<Employee> list() ;
    /**查看隐藏员工*/
    List<Employee> hiddenList() ;
    /**根据主键查询员工*/
     Employee get(String e_id);
    /**修改员工*/
     void update(Employee e, MultipartFile photoFile, HttpServletRequest request);
    /**修改员工信息*/
     void updateInfo(Employee e, MultipartFile photoFile, HttpServletRequest request);
    /**隐藏员工*/
    void hide(String e_id);
    /**恢复员工*/
    void recover(String e_id);
    /**删除员工*/
    void delete(String e_id);
    /**获得账号*/
     String getAccount(String name);
}
