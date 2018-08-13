package com.shxt.modual.cart.model;

/**
 购物车
 */
public class Cart {
    private String c_id;
    private String g_id;
    private Integer num;
    public String getC_id() {
        return c_id;
    }
    public void setC_id(String c_id) {
        this.c_id = c_id;
    }
    public String getG_id() {
        return g_id;
    }
    public void setG_id(String g_id) {
        this.g_id = g_id;
    }
    public Integer getNum() {
        return num;
    }
    public void setNum(Integer num) {
        this.num = num;
    }


}
