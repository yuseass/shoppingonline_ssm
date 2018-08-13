package com.shxt.modual.customer.model;

/**
 用户
 */
public class Customer {
    private String c_id;//id
    private String account;//账户
    private String password;//密码
    private String photo;//头像
    private Integer spend;//金额
    
    public Integer getSpend() {
        return this.spend;
    }
    public void setSpend(Integer spend ) {
        this.spend = spend;
    }
    public String getC_id() {
        return c_id;
    }
    public void setC_id(String c_id) {
        this.c_id = c_id;
    }
    public String getAccount() {
        return account;
    }
    public void setAccount(String account) {
        this.account = account;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }
    @Override
    public String toString() {
        return "Customer [c_id=" + c_id + ", account=" + account + ", password=" + password
                + ", photo=" + photo + "]";
    }
    
    
}
