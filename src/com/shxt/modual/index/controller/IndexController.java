package com.shxt.modual.index.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shxt.modual.cart.model.Cart;
import com.shxt.modual.customer.model.Customer;
import com.shxt.modual.goods.model.Goods;
import com.shxt.modual.index.model.Index;
import com.shxt.modual.index.service.IndexService;

/**
 * 主页控制层
 */
@Controller
@RequestMapping("/index")
public class IndexController {
    //业务层对象
    @Autowired
    private IndexService indexService;
    /**
     * 主页商品
     */
    @RequestMapping("/homeShow")
    public ModelAndView homeShow(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("index"); //利用mav存储数据

        Customer c =  (Customer) request.getSession().getAttribute("customer");  //获得session 对象再调用getAttibute方法来获得含有关键字“customer”的对象
        if(c!=null){
            List<Cart> cartList =  indexService.getCart(c.getC_id());  //获取购物车信息并存放到cartlist泛型类中
            mav.addObject("cartList", cartList); //给mav设置model
        }

        Index i = indexService.get();
        List<Goods> list = indexService.list();
        mav.addObject("list", list); //给mav设置model


        for (int j = 0; j < list.size(); j++) {
            if(list.get(j).getG_id().equals(i.getTop1())){
                mav.addObject("top1", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getTop2())){
                mav.addObject("top2", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getTop3())){
                mav.addObject("top3", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMid1())){
                mav.addObject("mid1", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMid2())){
                mav.addObject("mid2", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMid3())){
                mav.addObject("mid3", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMid4())){
                mav.addObject("mid4", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getWoman1())){
                mav.addObject("woman1", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getWoman2())){
                mav.addObject("woman2", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getWoman3())){
                mav.addObject("woman3", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMan1())){
                mav.addObject("man1", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMan2())){
                mav.addObject("man2", list.get(j));
            }else if(list.get(j).getG_id().equals(i.getMan3())){
                mav.addObject("man3", list.get(j));
            }
        }


        return mav;
    }

    /**
     * 后台主页
     */
    @RequestMapping("/backShow")
    public ModelAndView backShow(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("employee/index");

        return mav;
    }

}
