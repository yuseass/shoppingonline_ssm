package com.shxt.modual.address.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.modual.address.dao.AddressDao;
import com.shxt.modual.address.model.Address;
import com.shxt.modual.address.model.Place;
import com.shxt.modual.address.service.AddressService;

/**
 地址业务层实现类
 */
@Service("addressService")
public class AddressServiceImpl implements AddressService {
    
    /** 数据访问层 */
    @Autowired
    private AddressDao addressDao;
    
    /**
      添加地址
     */
    @Override
    public void add(Address a) {
        a.setA_id(addressDao.getId().get(0).getA_id()+1);
        addressDao.add(a);
    }
    
    /**
      查看地址
     */
    @Override
    public List<Address> list(String c_id) {
        return addressDao.list(c_id);
    }

    /**
     查看省份
     */
    @Override
    public List<Place> provinceList() {
        return addressDao.provinceList();
    }
    
    /**
     删除地址
     */
    @Override
    public void delete(String a_id) {
        addressDao.delete(a_id);
    }

    /**
      获得二级分类
     */
    @Override
    public String cityList(String p_id) {
        List<Place> list= addressDao.cityList(p_id);
        String s = "[";
        if(list.isEmpty()){
            s+="{\"s_id\":\"0\",\"name\":\"该省份下没有城市\"}";
        }else{
            for (int i = 0; i < list.size(); i++) {
                if(i!=0){
                    s+=",";
                }
                s+="{\"p_id\":\""+list.get(i).getP_id()+"\",\"name\":\""+list.get(i).getName()+"\"}";
            }
        }
        s+="]";
        return s;
    }
}
