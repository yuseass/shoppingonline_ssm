package com.shxt.modual.employee.service.impl;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shxt.base.util.ChineseToPhoneticize;
import com.shxt.base.util.FileUpload;
import com.shxt.modual.employee.dao.EmployeeDao;
import com.shxt.modual.employee.model.Employee;
import com.shxt.modual.employee.service.EmployeeService;

/**
 * 员工业务层实现类
 */
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

    /** 数据访问层 */
    @Autowired
    private EmployeeDao employeeDao;
    /**登录*/
    @Override
    public Employee check(String account) {
        return employeeDao.check(account);
    }
    /**添加员工*/


    @Override
    public void add(Employee e, MultipartFile photoFile, HttpServletRequest request) {
        // id
        e.setE_id(UUID.randomUUID().toString());
        // photo
        FileUpload fu = new FileUpload();
        String newFileName = fu.uploadFile(photoFile, request);
        e.setPhoto(newFileName);
        if (e.getRen() == null) {
            e.setRen("0");
        }
        if (e.getLei() == null) {
            e.setLei("0");
        }
        if (e.getHuo() == null) {
            e.setHuo("0");
        }
        if (e.getXin() == null) {
            e.setXin("0");
        }
        employeeDao.add(e);
    }

    /**查看员工*/
    @Override
    public List<Employee> list() {
        return employeeDao.list();
    }
    /**查看隐藏员工*/
    @Override
    public List<Employee> hiddenList() {
        return employeeDao.hiddenList();
    }
    /**根据主键查询员工*/
    @Override
    public Employee get(String e_id) {
        return employeeDao.get(e_id);
    }

    /**修改员工*/
    @Override
    public void update(Employee e, MultipartFile photoFile, HttpServletRequest request) {
        // photo
        FileUpload fu = new FileUpload();
        String newFileName = fu.uploadFile(photoFile, request);
        e.setPhoto(newFileName);
        
        if (e.getRen() == null) {
            e.setRen("0");
        }
        if (e.getLei() == null) {
            e.setLei("0");
        }
        if (e.getHuo() == null) {
            e.setHuo("0");
        }
        if (e.getXin() == null) {
            e.setXin("0");
        }
        employeeDao.update(e);
    }
    /**修改员工信息*/
    @Override
    public void updateInfo(Employee e, MultipartFile photoFile, HttpServletRequest request) {
        // photo
        FileUpload fu = new FileUpload();
        String newFileName = fu.uploadFile(photoFile, request);
        e.setPhoto(newFileName);
        employeeDao.update(e);
    }
    
    /**隐藏员工*/
    @Override
    public void hide(String e_id) {
        employeeDao.hide(e_id);
    }
    /**恢复员工*/
    @Override
    public void recover(String e_id) {
        employeeDao.recover(e_id);
    }
    /**删除员工*/
    @Override
    public void delete(String e_id) {
        employeeDao.delete(e_id);
    }


    /**获得账号*/
    @Override
    public String getAccount(String name) {
        ChineseToPhoneticize ctp = new ChineseToPhoneticize();
        String account = ctp.getPhoneticize(name);
        if(employeeDao.checkAccount(account).isEmpty()){
            return "{\"account\":\""+account+"\",\"m\":\""+1+"\"}";
        }else{
            while(true){
                String radom = String.valueOf((int)(Math.random()*10000));
                account = account + radom;
                if(employeeDao.checkAccount(account).isEmpty()){
                    return "{\"account\":\""+account+"\",\"m\":\""+0+"\"}";
                }
            }
        }
    }
}
