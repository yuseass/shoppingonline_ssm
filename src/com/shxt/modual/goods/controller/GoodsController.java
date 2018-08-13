package com.shxt.modual.goods.controller;

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

import com.shxt.base.util.Page;
import com.shxt.modual.classes.model.Classes;
import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.goods.model.Select;
import com.shxt.modual.goods.service.GoodsService;
import com.shxt.modual.secondClass.model.SecondClass;

/**
 * 商品控制层
 */
@Controller
@RequestMapping("/goods")
public class GoodsController {
    
    //业务层对象
    @Autowired
    private GoodsService goodsService;
    
    /**
     * 查看商品
     */
    @RequestMapping("/list")
    public ModelAndView list() {
        ModelAndView mav = new ModelAndView("index"); //利用mav存储数据
        
        List<Goods> list = goodsService.list();  //创建泛型类list存放goods集合
        mav.addObject("list", list); //给mav设置model
        return mav;
    }
    
    /**
     * 分页查看商品
     */
    @RequestMapping("/paging")
    public ModelAndView paging(Page page,Select s) {
        page.setSize(8);  //调用page类的方法设置每页的行数为8行
        ModelAndView mav = new ModelAndView("goods/list"); //利用mav存储数据
        
        if(s.getS_id()==null){   //当s_id为空时设其为0
            s.setS_id("0");
        }
        if(s.getMaxPrice()==null){
            s.setMaxPrice("");
        }
        if(s.getMinPrice()==null){
            s.setMinPrice("");
        }
        
        List<Classes> firstClassList =goodsService.firstClassList();  //创建泛型类firstclass存放一级分类
        mav.addObject("firstClassList", firstClassList);//给mav设置model
        
        List<Goods> list = goodsService.page(page,s);//分页查看商品
        
        mav.addObject("s", s);  //给mav设置model
        mav.addObject("list", list);  //给mav设置model
        mav.addObject("page", page);  //给mav设置model
        
        return mav;
    }
    
    /**
     * 根据主键查询
     */
    @RequestMapping("/get")
    public ModelAndView get(String g_id) {
        ModelAndView mav = new ModelAndView("goods/one");//利用mav存储数据
        Goods g = goodsService.get(g_id);  //利用goodsservice类的get方法获取商品id
        
        mav.addObject("g",g);  //给mav设置model
        
        return mav;
    }

    /**
     *  AJAX获得二级分类
     */
    @RequestMapping(value="/secondClassList")
    @ResponseBody
    public  void secondClassList(String f_id,HttpServletRequest request,HttpServletResponse response) {
        String m = goodsService.secondClassList(f_id);   //通过该方法获取数据库连接并查询二级分类
        response.setContentType("text/json;charset=utf-8");  //设置数据类型为json字符集为utf-8
        PrintWriter out = null;
        try {
            out = response.getWriter();  //获取输出流输出的对象是页面
        } catch (IOException e) {
            e.printStackTrace();  //在命令行打印异常信息在程序中出错的位置及原因
        }
        
        out.print(m);
        
        out.flush();
        out.close();
    }
    
    /**
     * 显示添加页面
     */
    @RequestMapping("/addShow")
    public ModelAndView addShow() {
        ModelAndView mav = new ModelAndView("goods/add");  //利用mav存储数据
        
        List<FirstClass> list =goodsService.b_firstClassList();  //用泛型类list存放一级分类
        mav.addObject("list", list);  //设置model
        
        return mav;
    }
    
    /**
     * 添加商品
     */
    @RequestMapping(value="/add")
    public String add(Goods g,MultipartFile photoFile1,MultipartFile photoFile2,MultipartFile photoFile3,HttpServletRequest request) {  //多文件上传
        goodsService.add(g,photoFile1,photoFile2,photoFile3,request);  //添加商品
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/goods/b_list";  //视图解析
    }
    
    /**
     * 查看隐藏商品
     */
    @RequestMapping("/hiddenList")
    public ModelAndView hiddenList() {
        ModelAndView mav = new ModelAndView("goods/hiddenList");  //利用mav存储数据
        
        List<Goods> list = goodsService.hiddenList();  //创建数据库对话并将隐藏商品放入list中
        mav.addObject("list", list);  //设置model
        
        return mav;
    }
    
    /**
     * 查看商品
     */
    @RequestMapping("/b_list")
    public ModelAndView b_list() {
        ModelAndView mav = new ModelAndView("goods/b_list");
        
        List<Goods> list = goodsService.list();  //创建数据库对话并将查看的商品放入list中
        mav.addObject("list", list);  //设置model
        return mav;
    }
    
    /**
     * 显示修改页面
     */
    @RequestMapping("/updateShow")
    public ModelAndView updateShow(String g_id) {
        ModelAndView mav = new ModelAndView("goods/update");  //利用mav存储数据
        Goods g = goodsService.get(g_id);  //根据主键查询商品
        
        mav.addObject("g",g);  //设置model
        mav.addObject("f_id",goodsService.getF_id(g_id));  //设置model
        
        List<FirstClass> firstClassList =goodsService.b_firstClassList();  //创建数据库连接并查询list
        mav.addObject("firstClassList", firstClassList);  //设置model

        List<SecondClass> secondClassList =goodsService.getSecondClassList(goodsService.getF_id(g_id));  //创建数据库连接并查询list
        mav.addObject("secondClassList", secondClassList);  //设置model
        
        return mav;
    }
    
    /**
     * 隐藏商品
     */
    @RequestMapping("/hide")
    public String hide(String g_id) {
        goodsService.hide(g_id);  //创建数据库会话并通过g_id更新为持久化对象并进行更新操作
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/goods/b_list";
    }
    
    /**
     * 恢复商品
     */
    @RequestMapping("/recover")
    public String recover(String g_id) {
        goodsService.recover(g_id);  //创建数据库会话并通过g_id更新为持久化对象并进行更新操作
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/goods/hiddenList";
    }
    
    /**
     * 删除商品
     */
    @RequestMapping("/delete")
    public String delete(String g_id) {
        goodsService.delete(g_id);  //创建数据库会话并通过主键进行删除
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/goods/hiddenList";
    }
    
    /**
     * 修改商品
     */
    @RequestMapping("/update")
    public String update(Goods g,MultipartFile photoFile1,MultipartFile photoFile2,MultipartFile photoFile3,HttpServletRequest request) {
        goodsService.update(g,photoFile1,photoFile2,photoFile3,request);  //创建数据库会话并进行更新操作
        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/goods/b_list";
    }
    
}
