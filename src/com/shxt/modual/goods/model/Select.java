package com.shxt.modual.goods.model;

/**
 * 商品
 */
public class Select {
    private String s_id;
    private String key;
    private String maxPrice;
    private String minPrice;
    private Integer start;
    private Integer size;

    public String getS_id() {
        return s_id;
    }
    public void setS_id(String s_id) {
        this.s_id = s_id;
    }
    public String getKey() {
        return key;
    }
    public void setKey(String key) {
        this.key = key;
    }
    public String getMaxPrice() {
        return maxPrice;
    }
    public void setMaxPrice(String maxPrice) {
        this.maxPrice = maxPrice;
    }
    public String getMinPrice() {
        return minPrice;
    }
    public void setMinPrice(String minPrice) {
        this.minPrice = minPrice;
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
        return "Select [s_id=" + s_id + ", key=" + key + ", maxPrice=" + maxPrice + ", minPrice=" + minPrice
                + ", start=" + start + ", size=" + size + "]";
    }


}
