package com.shxt.modual.indent.model;

/**
 * 订单
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:47:34
 * @description
 */
public class Select {
    private String c_id;
    private String key;
    private String date1;
    private String date2;
    private Integer start;
    private Integer size;
    public String getC_id() {
        return c_id;
    }
    public void setC_id(String c_id) {
        this.c_id = c_id;
    }
    public String getKey() {
        return key;
    }
    public void setKey(String key) {
        this.key = key;
    }
    public String getDate1() {
        return date1;
    }
    public void setDate1(String date1) {
        this.date1 = date1;
    }
    public String getDate2() {
        return date2;
    }
    public void setDate2(String date2) {
        this.date2 = date2;
    }
    public Integer getStart() {
        return start;
    }
    public void setStart(Integer start) {
        this.start = start;
    }
    public Integer getSize() {
        return size;
    }
    public void setSize(Integer size) {
        this.size = size;
    }
    @Override
    public String toString() {
        return "Select [c_id=" + c_id + ", key=" + key + ", date1=" + date1 + ", date2=" + date2 + ", start=" + start
                + ", size=" + size + "]";
    }

}
