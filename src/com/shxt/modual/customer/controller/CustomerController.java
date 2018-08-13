package com.shxt.modual.customer.controller;

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

import com.shxt.modual.customer.model.Customer;
import com.shxt.modual.customer.service.CustomerService;

/**
 *用户控制层
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    //业务层对象
    @Autowired
    private CustomerService customerService;

    /**
     *注销
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("customer");
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/index/homeShow";
    }

    /**
     * 登录
     */
    @RequestMapping("/login")
    public String login(HttpServletRequest request,Customer key) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Customer c = customerService.check(key.getAccount());

        if(c==null){
            request.getSession().setAttribute("account", key.getAccount());
            request.getSession().setAttribute("m", "此账号信息不存在或状态异常");
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/loginShow";
        }else if(c.getAccount().equals(key.getAccount())&&!c.getPassword().equals(key.getPassword())){
            request.getSession().setAttribute("account", key.getAccount());
            request.getSession().setAttribute("m", "账号或密码不正确");
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/loginShow";
        }else if(c.getAccount().equals(key.getAccount())&&c.getPassword().equals(key.getPassword())){
            request.getSession().removeAttribute("account");
            request.getSession().removeAttribute("m");
            request.getSession().setAttribute("customer", c);
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/index/homeShow";
        }else{
            return null;
        }
    }

    /**
     * 显示登录页面
     */
    @RequestMapping("/loginShow")
    public ModelAndView loginShow() {
        return new ModelAndView("customer/login");
    }

    /**
     * 显示注册页面
     */
    @RequestMapping("/registerShow")
    public ModelAndView registerShow() {
        return new ModelAndView("customer/register");
    }

    /**
     * 用户注册
     */
    @RequestMapping(value="/register")
    public String add(Customer c,MultipartFile photoFile,HttpServletRequest request) {
        customerService.add(c,photoFile,request);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/loginShow";
    }

    /**
     * 修改用户
     */
    @RequestMapping("/update")
    public String update(Customer c,MultipartFile photoFile,HttpServletRequest request) {
        customerService.update(c,photoFile,request);
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/logout";
    }

    /**
     * 修改密码
     */
    @RequestMapping("/pswUpdate")
    public String pswUpdate(Customer key,HttpServletRequest request,String psw) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        Customer c = customerService.get(key.getC_id());
        if(!c.getPassword().equals(psw)){
            request.getSession().setAttribute("m", "密码不正确");
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/address/list";
        }else if(c.getPassword().equals(psw)){
            request.getSession().setAttribute("m", "修改成功，请重新登录");
            request.getSession().setAttribute("customer", c);
            customerService.pswUpdate(key);
            return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/loginShow";
        }else{
            return null;
        }
    }

    
    /**
     * AJAX验证账号
     */
    @RequestMapping(value="/checkAccount")
    @ResponseBody
    public  void checkAccount(String account,HttpServletRequest request,HttpServletResponse response) {
        String m = customerService.checkAccount(account);
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

    /**
     * 查看用户
     */
    @RequestMapping("/list")
    public ModelAndView list() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("customer/list");
        //获得用户列表
        List<Customer> list = customerService.list();
        mav.addObject("list", list);
        return mav;
    }
    
    /**
     * 查看隐藏用户
     */
    @RequestMapping("/hiddenList")
    public ModelAndView hiddenList() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("customer/hiddenList");

        //业务层查看隐藏用户
        List<Customer> list = customerService.hiddenList();
        mav.addObject("list", list);

        return mav;
    }

    /**
     * 隐藏用户
     */
    @RequestMapping("/hide")
    public String hide(String c_id) {
        //业务层隐藏用户
        customerService.hide(c_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/list";
    }

    /**
     * 恢复用户
     */
    @RequestMapping("/recover")
    public String recover(String c_id) {
        customerService.recover(c_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/hiddenList";
    }

    /**
     * 删除用户
     */
    @RequestMapping("/delete")
    public String delete(String c_id) {
        customerService.delete(c_id);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/customer/hiddenList";
    }
}
