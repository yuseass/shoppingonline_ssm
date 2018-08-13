package com.shxt.modual.goods.model;

/**
 * 商品
 */
public class Goods {

    private String g_id;
    private String s_id;
    private String s_name;
    private String title;
    private String brand;
    private String model;
    private String introduction;
    private String photo1;
    private String photo2;
    private String photo3;
    private String stock;
    private String selnum;
    private String price;
    private String promotion;
    private String type;
    private Integer num;

    public String getG_id() {
        return g_id;
    }
    public void setG_id(String g_id) {
        this.g_id = g_id;
    }
    public String getS_id() {
        return s_id;
    }
    public void setS_id(String s_id) {
        this.s_id = s_id;
    }
    public String getTitle() {
        return title;
    }
    public String getS_name() {
        return s_name;
    }
    public void setS_name(String s_name) {
        this.s_name = s_name;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getModel() {
        return model;
    }
    public void setModel(String model) {
        this.model = model;
    }
    public String getIntroduction() {
        return introduction;
    }
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
    public String getPhoto1() {
        return photo1;
    }
    public void setPhoto1(String photo1) {
        this.photo1 = photo1;
    }
    public String getPhoto2() {
        return photo2;
    }
    public void setPhoto2(String photo2) {
        this.photo2 = photo2;
    }
    public String getPhoto3() {
        return photo3;
    }
    public void setPhoto3(String photo3) {
        this.photo3 = photo3;
    }
    public String getStock() {
        return stock;
    }
    public void setStock(String stock) {
        this.stock = stock;
    }
    public String getPrice() {
        return price;
    }
    public String getSelnum() {
        return selnum;
    }
    public void setSelnum(String selnum) {
        this.selnum = selnum;
    }
    public void setPrice(String price) {
        this.price = price;
    }
    public String getPromotion() {
        return promotion;
    }
    public void setPromotion(String promotion) {
        this.promotion = promotion;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public Integer getNum() {
        return num;
    }
    public void setNum(Integer num) {
        this.num = num;
    }
    @Override
    public String toString() {
        return "Goods [g_id=" + g_id + ", s_id=" + s_id + ", s_name=" + s_name + ", title=" + title + ", brand=" + brand
                + ", model=" + model + ", introduction=" + introduction + ", photo1=" + photo1 + ", photo2=" + photo2
                + ", photo3=" + photo3 + ", stock=" + stock + ", selnum=" + selnum + ", price=" + price + ", promotion="
                + promotion + ", type=" + type + "]";
    }

}
