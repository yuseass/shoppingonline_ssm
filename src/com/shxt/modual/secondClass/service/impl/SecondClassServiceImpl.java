package com.shxt.modual.secondClass.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shxt.modual.firstClass.model.FirstClass;
import com.shxt.modual.secondClass.dao.SecondClassDao;
import com.shxt.modual.secondClass.model.SecondClass;
import com.shxt.modual.secondClass.service.SecondClassService;

/**
 * 二级分类业务层实现类
 *
 * @author
 * @Version 1.0
 * @Copyright
 * @date  下午6:50:55
 * @description
 */
@Service("secondClassService")
public class SecondClassServiceImpl implements SecondClassService {
    
    /** 数据访问层 */
    @Autowired
    private SecondClassDao secondClassDao;
    
    /**
     * 添加二级分类
     */
    @Override
    public void add(SecondClass s) {
        s.setS_id(secondClassDao.list().get(0).getS_id()+1);
        secondClassDao.add(s);
    }
    
    /**
     * 查看二级分类
     */
    @Override
    public List<SecondClass> list() {
        return secondClassDao.list();
    }
    
    /**
     * 查看一级分类
     */
    @Override
    public List<FirstClass> firstClassList() {
        return secondClassDao.firstClassList();
    }

    /**
     * 根据主键查询二级分类
     */
    @Override
    public SecondClass get(String s_id) {
        return secondClassDao.get(s_id);
    }
    
    /**
     * 修改二级分类
     */
    @Override
    public void update(SecondClass s) {
        secondClassDao.update(s);
    }

    /**
     * 删除二级分类
     */
    @Override
    public void delete(String s_id) {
        secondClassDao.delete(s_id);
    }

    /**
     * AJAX验证名称
     */
    @Override
    public String checkName(String name) {
        if(secondClassDao.checkName(name).isEmpty()){
            return "{\"name\":\""+name+"\",\"m\":\""+1+"\"}";
        }else{
            return "{\"name\":\""+name+"\",\"m\":\""+0+"\"}";
        }
    }
}
