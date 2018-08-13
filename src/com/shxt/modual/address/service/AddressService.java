package com.shxt.modual.address.service;

import java.util.List;

import com.shxt.modual.address.model.Address;
import com.shxt.modual.address.model.Place;

/**
 地址，业务层接口
 */
public interface AddressService {

    /**添加地址*/
    void add(Address a);
    /**查看地址*/
    List<Address> list(String c_id) ;
    /**查看省份*/
    List<Place> provinceList() ;
    /**删除地址*/
    void delete(String a_id);
    /**获得二级分类json*/
    String cityList(String p_id) ;
}
