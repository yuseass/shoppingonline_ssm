package com.shxt.modual.cart.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shxt.modual.address.model.Address;
import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.cart.service.CartService;
import com.shxt.modual.customer.model.Customer;
import com.shxt.modual.goods.model.Goods;

/**
 购物车控制层
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    //业务层对象
    @Autowired
    private CartService cartService;
    
    /**
     显示购物车
     */
    @RequestMapping("/list")
    public ModelAndView list(String c_id) {
        //使用MAV存储数据
        ModelAndView mav = new ModelAndView("cart/list");

        //业务层获得地址
        List<Address> addressList = cartService.addressList(c_id);
        //存储到MAV
        mav.addObject("addressList", addressList);

        //业务层获得货物列表
        List<Goods> list = cartService.list(c_id);
        //存储到MAV
        mav.addObject("list", list);
        
        return mav;
    }
    
    /**
     AJAX删除
     */
    @RequestMapping(value="/delete")
    @ResponseBody
    public  void delete(String g_id,HttpServletRequest request,HttpServletResponse response) {
       //当前顾客
        Customer c =  (Customer) request.getSession().getAttribute("customer");
        
        Cart cart = new Cart();
        cart.setC_id(c.getC_id());
        cart.setG_id(g_id);

        //业务层删除购物车
        cartService.delete(cart);
    }
    
    
    /**
     AJAX清空
     */
    @RequestMapping(value="/empty")
    @ResponseBody
    public  void empty(HttpServletRequest request,HttpServletResponse response) {
        Customer c =  (Customer) request.getSession().getAttribute("customer");

        //业务层清空购物车
        cartService.delete(c.getC_id());
    }
    
    /**
     AJAX添加
     */
    @RequestMapping(value="/add")
    @ResponseBody
    public  void add(String g_id,HttpServletRequest request,HttpServletResponse response) {
        Customer c =  (Customer) request.getSession().getAttribute("customer");
        
        Cart cart = new Cart();
        cart.setC_id(c.getC_id());
        cart.setG_id(g_id);


        //购物车是否为空检测
        Cart checkCart = cartService.get(cart);
        if(checkCart==null){
            cartService.add(cart);
        }else{
            cart.setNum(checkCart.getNum()+1);
            cartService.update(cart);
        }
    }
    
    /**
     AJAX减少
     */
    @RequestMapping(value="/subtract")
    @ResponseBody
    public  void subtract(String g_id,HttpServletRequest request,HttpServletResponse response) {
        Customer c =  (Customer) request.getSession().getAttribute("customer");
        
        Cart cart = new Cart();
        cart.setC_id(c.getC_id());
        cart.setG_id(g_id);

        //购物车是否为空检测
        Cart checkCart = cartService.get(cart);
        if(checkCart.getNum()==1){
            cartService.delete(cart);
        }else{
            cart.setNum(checkCart.getNum()-1);
            cartService.update(cart);
        }
    }
}
