package com.shxt.modual.employee.model;

/**
 * 员工
 */
public class Employee {
    private String e_id;
    private String name;
    private String account;
    private String password;
    private String photo;
    private String idcard;
    private String ren;//人员管理
    private String lei;//类别管理
    private String huo;//货物管理
    private String xin;//信息管理


    public String getE_id() {
        return e_id;
    }
    public void setE_id(String e_id) {
        this.e_id = e_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
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
    public String getIdcard() {
        return idcard;
    }
    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }
    public String getRen() {
        return ren;
    }
    public void setRen(String ren) {
        this.ren = ren;
    }
    public String getLei() {
        return lei;
    }
    public void setLei(String lei) {
        this.lei = lei;
    }
    public String getHuo() {
        return huo;
    }
    public void setHuo(String huo) {
        this.huo = huo;
    }
    public String getXin() {
        return xin;
    }
    public void setXin(String xin) {
        this.xin = xin;
    }
    @Override
    public String toString() {
        return "Employee [e_id=" + e_id + ", name=" + name + ", account=" + account + ", password=" + password
                + ", photo=" + photo + ", idcard=" + idcard + ", ren=" + ren + ", lei=" + lei + ", huo=" + huo
                + ", xin=" + xin + "]";
    }

}
