package com.shxt.modual.classes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shxt.modual.classes.model.Classes;
import com.shxt.modual.classes.service.ClassesService;


/**
 分类 ，控制层
 */
@Controller
@RequestMapping("/classes")
public class ClassesController {
    //业务层对象
    @Autowired
    private ClassesService classesService;

    /**
     查看分类
     */
    @RequestMapping("/classesShow")
    public ModelAndView list() {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("classes/classes");

        //业务层获取一级分类
        List<Classes> firstClassList = classesService.firstClassList();
        mav.addObject("firstClassList", firstClassList);

        //业务层获取二级分类
        List<Classes> secondClassList = classesService.secondClassList();
        mav.addObject("secondClassList", secondClassList);

        return mav;
    }

}