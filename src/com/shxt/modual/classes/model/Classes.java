package com.shxt.modual.classes.model;

/**
 分类
 */
public class Classes {
    private Integer s_id;//二级分类
    private Integer f_id;//一级分类
    private String name;
    private String f_name;
    public Integer getS_id() {
        return s_id;
    }
    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }
    public Integer getF_id() {
        return f_id;
    }
    public void setF_id(Integer f_id) {
        this.f_id = f_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getF_name() {
        return f_name;
    }
    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

}
