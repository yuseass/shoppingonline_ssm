package com.shxt.modual.address.dao;

import java.util.List;

import com.shxt.modual.address.model.Address;
import com.shxt.modual.address.model.Place;

/**
 地址，数据访问层,接口
 */
public interface AddressDao {
    /**添加*/
    void add(Address a);
    /**查看地址*/
    List<Address> list(String c_id);
    /**查看省份列表*/
    List<Place> provinceList() ;
    /**查看省份*/
    List<Place> cityList(String p_id) ;
    /**获得id*/
    List<Address> getId();
    /**删除地址*/
    void delete(String a_id);
}
