package com.shxt.modual.address.controller;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.modual.address.model.Address;
import com.shxt.modual.address.model.Place;
import com.shxt.modual.address.service.AddressService;
import com.shxt.modual.customer.model.Customer;

/**
 地址控制层
*/
@Controller
@RequestMapping("/address")
public class AddressController {
    //业务层对象
    @Autowired
    private AddressService addressService;


    /**
     显示添加页面
     */
    @RequestMapping("/addShow")
    public ModelAndView addShow() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("address/add");

        List<Place> list = addressService.provinceList();

        //添加返回数据
        mav.addObject("list", list);

        return mav;
    }

    /**
     添加地址
     */
    @RequestMapping(value="/add")
    public String add(Address a,HttpServletRequest request) {
        addressService.add(a);
        Customer c = (Customer) request.getSession().getAttribute("customer");
        String c_id = c.getC_id();

        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/address/list?c_id="+c_id;
    }

    /**
     查看地址
     */
    @RequestMapping("/list")
    public ModelAndView list(String c_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("customer/info");

        List<Address> list = addressService.list(c_id);
        //添加返回数据
        mav.addObject("list", list);

        return mav;
    }


    /**
     删除地址
     */
    @RequestMapping("/delete")
    public String delete(String a_id,HttpServletRequest request) {
        addressService.delete(a_id);
        Customer c = (Customer) request.getSession().getAttribute("customer");
        String c_id = c.getC_id();

        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/address/list?c_id="+c_id;
    }

    /**
      AJAX获得城市
     */
    @RequestMapping(value="/cityList")
    @ResponseBody
    public  void cityList(String p_id,HttpServletRequest request,HttpServletResponse response) {
        String m = addressService.cityList(p_id);
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
