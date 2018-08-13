package com.shxt.modual.firstClass.controller;

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

import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.firstClass.service.FirstClassService;

/**
 * 一级分类控制层
 */
@Controller
@RequestMapping("/firstClass")
public class FirstClassController {
    //业务层对象
    @Autowired
    private FirstClassService firstClassService;


    /**
     * 显示添加页面
     */
    @RequestMapping("/addShow")
    public ModelAndView addShow() {
        return new ModelAndView("firstClass/add");
    }

    /**
     * 添加一级分类
     */
    @RequestMapping(value="/add")
    public String add(FirstClass f) {
        //业务层添加
        firstClassService.add(f);
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/firstClass/list";
    }

    /**
     * 查看一级分类
     */
    @RequestMapping("/list")
    public ModelAndView list() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("firstClass/list");
        //一级分类列表
        List<FirstClass> list = firstClassService.list();
        mav.addObject("list", list);

        return mav;
    }

    /**
     * 显示修改页面
     */
    @RequestMapping("/updateShow")
    public ModelAndView updateShow(String f_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("firstClass/update");
        //按id一级分类
        FirstClass f = firstClassService.get(f_id);
        mav.addObject("f",f);

        return mav;
    }

    /**
     * 删除一级分类
     */
    @RequestMapping("/delete")
    public String delete(String f_id) {
        firstClassService.delete(f_id);
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/firstClass/list";
    }

    /**
     * 修改一级分类
     */
    @RequestMapping("/update")
    public String update(FirstClass f) {
        //更新一级分类
        firstClassService.update(f);
        //返回视图解析定位
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/firstClass/list";
    }

    /**
     * AJAX验证名称
     */
    @RequestMapping(value="/checkName")
    @ResponseBody
    public  void checkName(String name,HttpServletRequest request,HttpServletResponse response) {
        String m = firstClassService.checkName(name);
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
