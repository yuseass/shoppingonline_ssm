package com.shxt.modual.indent.model;

/**
 * 订单
 * @author
 * @Version 1.0
 * @Copyright 
 * @date  下午6:47:34
 * @description
 */
public class Indent {
    private String i_id;
    private String c_id;
    private String a_id;
    private String g_id;
    private String date;
    private Integer num;
    private Integer money;
    private String evaluation;
    private String comment;
    private Integer type;
    private String title;
    private String photo1;
    private String name;
    private String phone;
    private String account;
    
    public String getAccount() {
        return this.account;
    }
    public void setAccount(String account ) {
        this.account = account;
    }
    public String getI_id() {
        return i_id;
    }
    public void setI_id(String i_id) {
        this.i_id = i_id;
    }
    public String getC_id() {
        return c_id;
    }
    public void setC_id(String c_id) {
        this.c_id = c_id;
    }
    public String getG_id() {
        return g_id;
    }
    public String getA_id() {
        return a_id;
    }
    public void setA_id(String a_id) {
        this.a_id = a_id;
    }
    public void setG_id(String g_id) {
        this.g_id = g_id;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    public Integer getNum() {
        return num;
    }
    public void setNum(Integer num) {
        this.num = num;
    }
    public Integer getMoney() {
        return money;
    }
    public void setMoney(Integer money) {
        this.money = money;
    }
    public String getEvaluation() {
        return evaluation;
    }
    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation;
    }
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    public Integer getType() {
        return type;
    }
    public void setType(Integer type) {
        this.type = type;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getPhoto1() {
        return photo1;
    }
    public void setPhoto1(String photo1) {
        this.photo1 = photo1;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Override
    public String toString() {
        return "Indent [i_id=" + i_id + ", c_id=" + c_id + ", a_id=" + a_id + ", g_id=" + g_id + ", date=" + date
                + ", num=" + num + ", money=" + money + ", evaluation=" + evaluation + ", comment=" + comment
                + ", type=" + type + ", title=" + title + ", photo1=" + photo1 + "]";
    }
    
}
