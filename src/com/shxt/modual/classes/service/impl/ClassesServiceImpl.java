package com.shxt.modual.classes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.modual.classes.dao.ClassesDao;
import com.shxt.modual.classes.model.Classes;
import com.shxt.modual.classes.service.ClassesService;

/**
 二级分类业务层实现类
 */
@Service("classesService")
public class ClassesServiceImpl implements ClassesService {
    
    /** 数据访问层 */
    @Autowired
    private ClassesDao classesDao;

    /**
     查看二级分类
     */
    @Override
    public List<Classes> secondClassList() {
        return classesDao.secondClassList();
    }
    /**
     查看一级分类
     */
    @Override
    public List<Classes> firstClassList() {
        return classesDao.firstClassList();
    }

}
