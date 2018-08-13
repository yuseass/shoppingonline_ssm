package com.shxt.modual.employee.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.modual.employee.model.Employee;
import com.shxt.modual.employee.service.EmployeeService;

/**
 * 员工控制层
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {
    //业务层对象
    @Autowired
    private EmployeeService employeeService;
    
    
    /**
     * 注销
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("employee");
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/index/homeShow";
    }

    /**
     * 登录
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request,Employee key) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Employee e = employeeService.check(key.getAccount());
        if(e==null){
            request.getSession().setAttribute("account", key.getAccount());
            request.getSession().setAttribute("m", "此账号信息不存在或状态异常");
            //返回视图解析定位
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/loginShow";
        }else if(e.getAccount().equals(key.getAccount())&&!e.getPassword().equals(key.getPassword())){
            request.getSession().setAttribute("account", key.getAccount());
            request.getSession().setAttribute("m", "账号或密码不正确");
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/loginShow";
        }else if(e.getAccount().equals(key.getAccount())&&e.getPassword().equals(key.getPassword())){
            request.getSession().removeAttribute("account");
            request.getSession().removeAttribute("e");
            request.getSession().setAttribute("employee", e);
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/index/backShow";
        }else{
            return null;
        }
    }
    
    /**
     * 显示登录页面
     */
    @RequestMapping("/loginShow")
    public ModelAndView loginShow() {
        return new ModelAndView("employee/login");
    }

    /**
     * 显示添加页面
     */
    @RequestMapping("/addShow")
    public ModelAndView addShow() {
        return new ModelAndView("employee/add");
    }
    
    /**
     * 添加员工
     */
    @RequestMapping(value="/add")
    public String add(Employee e,MultipartFile photoFile,HttpServletRequest request) {
        //业务层添加员工
        employeeService.add(e,photoFile,request);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/list";
    }
    
    /**
     * 查看隐藏员工
     */
    @RequestMapping("/hiddenList")
    public ModelAndView hiddenList() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/hiddenList");
        //隐藏用户列表
        List<Employee> list = employeeService.hiddenList();
        //添加到MAV
        mav.addObject("list", list);
        
        return mav;
    }
    
    /**
     * 查看员工
     */
    @RequestMapping("/list")
    public ModelAndView list() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/list");
        //员工列表
        List<Employee> list = employeeService.list();
        mav.addObject("list", list);
        return mav;
    }
    
    /**
     * 显示修改页面
     */
    @RequestMapping("/updateShow")
    public ModelAndView updateShow(String e_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/update");
        Employee e = employeeService.get(e_id);
        mav.addObject("e",e);
        
        return mav;
    }
    
    /**
     * 显示头像修改页面
     */
    @RequestMapping("/updatePhotoShow")
    public ModelAndView updatePhotoShow(String e_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/updatePhoto");
        Employee e = employeeService.get(e_id);

        mav.addObject("e",e);
        
        return mav;
    }

    /**
     * 显示密码修改页面
     */
    @RequestMapping("/updatePwdShow")
    public ModelAndView updatePwdShow(String e_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/updatePwd");
        Employee e = employeeService.get(e_id);

        mav.addObject("e",e);

        return mav;
    }
    
    /**
     * 隐藏员工
     */
    @RequestMapping("/hide")
    public String hide(String e_id) {

        employeeService.hide(e_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/list";
    }
    
    /**
     * 恢复员工
     */
    @RequestMapping("/recover")
    public String recover(String e_id) {
        employeeService.recover(e_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/hiddenList";
    }
    
    /**
     * 删除员工
     */
    @RequestMapping("/delete")
    public String delete(String e_id) {
        employeeService.delete(e_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/hiddenList";
    }
    
    /**
     * 修改员工
     */
    @RequestMapping("/update")
    public String update(Employee e,MultipartFile photoFile,HttpServletRequest request) {
        employeeService.update(e,photoFile,request);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/employee/list";
    }
    
    /**
     * 修改员工头像
     */
    @RequestMapping("/updatePhoto")
    public ModelAndView updatePhoto(Employee e,MultipartFile photoFile,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("employee/updatePhoto");
        if(photoFile.isEmpty()){
            mav.addObject("message","没有选择新头像");
        }else{
            
            employeeService.updateInfo(e,photoFile,request);
            
            mav.addObject("message","修改成功");
        }
        e = employeeService.get(e.getE_id());

        mav.addObject("e",e);

        request.getSession().setAttribute("employee", e);
        
        return mav;
    }

    /**
     * 修改员工密码
     */
    @RequestMapping("/updatePwd")
    public ModelAndView updatePwd(Employee e,MultipartFile photoFile,HttpServletRequest request) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("employee/updatePwd");
        employeeService.updateInfo(e,photoFile,request);

        e = employeeService.get(e.getE_id());

        mav.addObject("e",e);
        
        request.getSession().setAttribute("employee", e);
        
        mav.addObject("message","修改成功");

        return mav;
    }

    /**
     *  AJAX获得账号
     */
    @RequestMapping(value="/getAccount")
    @ResponseBody
    public  void getAccount(String name,HttpServletRequest request,HttpServletResponse response) {
        String m = employeeService.getAccount(name);
        response.setContentType("text/json;charset=utf-8");
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        out.print(m);
        
        out.flush();
        out.close();
    }
}
