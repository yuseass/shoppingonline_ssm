package com.shxt.modual.indent.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.shxt.base.util.DateUtils;
import com.shxt.base.util.Page;
import com.shxt.modual.customer.model.Customer;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.indent.model.Indent;
import com.shxt.modual.indent.model.Select;
import com.shxt.modual.indent.service.IndentService;

/**
 * 导入service层，controller通过接收前端传过来的参数进行业务操作，在返回一个指定的路径或者数据表
 * 订单控制层
 */
@Controller
@RequestMapping("/indent")
public class IndentController {

    //业务层对象
    @Autowired
    private IndentService indentService;
    /**
     * AJAX收货
     */
    @RequestMapping(value="/shouhuo")
    @ResponseBody
    public  void shouhuo(Indent i,HttpServletRequest request,HttpServletResponse response) {

        indentService.shouhuo(i);  //获取数据库连接并将订单i插入

    }

    /**
     * 添加订单
     */
    @RequestMapping(value="/add")
    public String add(String a_id,Integer money,HttpServletRequest request,HttpServletResponse response) {
        Customer c =  (Customer) request.getSession().getAttribute("customer");  //获得session 对象再调用getAttibute方法来获得含有关键字“customer”的对象

        //获取当前时间
        DateUtils du = new DateUtils();
        String date = du.getDateTime();

        Indent i = new Indent();

        i.setDate(date);
        i.setI_id(UUID.randomUUID().toString());
        i.setComment("");
        i.setC_id(c.getC_id());
        i.setA_id(a_id);

        List<Goods> cartList = indentService.cartList(c.getC_id());  //根据c_id将订单信息添加到cartlist泛型类中
        for(Goods g : cartList){  //循环设置cartlist中的商品信息并添加订单以及销量
            i.setG_id(g.getG_id());
            i.setNum(g.getNum());
            indentService.add(i);
            indentService.addSelnum(i);
        }

        //增加积分
        i.setMoney(money);
        indentService.addSpend(i);

        indentService.deleteCart(c.getC_id());

        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/indent/paging";
    }

    /**
     * 分页查看订单
     */
    @RequestMapping("/paging")
    public ModelAndView paging(Page page,Select s,HttpServletRequest request,HttpServletResponse response) {
        Customer c =  (Customer) request.getSession().getAttribute("customer");  //获得session 对象再调用getAttibute方法来获得含有关键字“customer”的对象

        s.setC_id(c.getC_id());

        page.setSize(5);  //设置每页最大行数为5行
        ModelAndView mav = new ModelAndView("indent/list");

        List<Indent> list = indentService.page(page,s);

        mav.addObject("list", list);
        mav.addObject("page", page);
        mav.addObject("select", s);

        return mav;
    }

    /**
     * 查看所有订单
     */
    @RequestMapping("/b_list")
    public ModelAndView b_list(HttpServletRequest request,HttpServletResponse response) {

        ModelAndView mav = new ModelAndView("indent/b_list");

        List<Indent> list = indentService.list();

        mav.addObject("list", list);

        return mav;
    }

    /**
     * 显示评价
     */
    @RequestMapping("/pingjiaShow")
    public ModelAndView pingjiaShow(Indent i) {
        ModelAndView mav = new ModelAndView("indent/pingjia");
        Goods g = indentService.getGoods(i.getG_id());

        mav.addObject("g",g);
        mav.addObject("i",i);

        return mav;
    }

    /**
     * 评价
     */
    @RequestMapping("/pingjia")
    public String pingjia(Indent i) {

        indentService.pingjia(i);  //添加评价

        return InternalResourceViewResolver.REDIRECT_URL_PREFIX +  "/indent/paging";
    }
}
