package com.shxt.modual.firstClass.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.modual.firstClass.dao.FirstClassDao;
import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.firstClass.service.FirstClassService;

/**
 * 一级分类业务层实现类
 */
@Service("firstClassService")
public class FirstClassServiceImpl implements FirstClassService {
    
    /** 数据访问层 */
    @Autowired
    private FirstClassDao firstClassDao;

    /**添加一级分类*/
    @Override
    public void add(FirstClass f) {
        f.setF_id(firstClassDao.list().get(0).getF_id()+1);
        firstClassDao.add(f);
    }
    
    /**查看一级分类*/
    @Override
    public List<FirstClass> list() {
        return firstClassDao.list();
    }
    /**根据主键查询一级分类*/
    @Override
    public FirstClass get(String f_id) {
        return firstClassDao.get(f_id);
    }
    /**修改一级分类*/
    @Override
    public void update(FirstClass f) {
        firstClassDao.update(f);
    }
    /**删除一级分类*/
    @Override
    public void delete(String f_id) {
        firstClassDao.delete(f_id);
    }

    /**AJAX验证名称*/
    @Override
    public String checkName(String name) {
        if(firstClassDao.checkName(name).isEmpty()){
            return "{\"name\":\""+name+"\",\"m\":\""+1+"\"}";
        }else{
            return "{\"name\":\""+name+"\",\"m\":\""+0+"\"}";
        }
    }
}
