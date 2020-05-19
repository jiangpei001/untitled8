package com.jp.service.impl;


import com.jp.bean.Jop;
import com.jp.dao.JopMapper;

import com.jp.service.JopSerivece;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service("JopService")
@Transactional(isolation= Isolation.SERIALIZABLE)
public class JopServiceImpl implements JopSerivece {
    @Autowired
    private JopMapper jopMapper;

    @Override
//   <!--增删改的注解 @Transactional(rollbackFor=Exception.class)-->
//<!--查询的注解(由于查询不需要提交事务,可以设置为只读的,提高性能)
//    @Transactional(rollbackFor=Exception.class,readOnly = true)-->
    @Transactional(rollbackFor=Exception.class)
    public int deleteByPrimaryKey(Integer id) throws Exception {
     int row =   jopMapper.deleteByPrimaryKey(id);
     if (row>0) {
         return row;
     }else {
         throw new Exception("主动抛出异常并回滚事务");
     }
    }

    @Override
    @Transactional(rollbackFor=Exception.class)
    public int insert(Jop record) throws Exception {
        int row =   jopMapper.insert(record);
        if (row>0) {
            return row;
        }else {
            throw new Exception("主动抛出异常并回滚事务");
        }

    }

    @Override
    @Transactional(rollbackFor=Exception.class,readOnly = true)
    public List<Jop> selectAll() throws Exception {
        List<Jop> jops  =  jopMapper.selectAll();
        if (jops == null) {
            throw new Exception("主动抛出异常并回滚事务");
        }else {
            return  jops;
        }

    }

    @Override
    @Transactional(rollbackFor=Exception.class)
    public int update(Jop record) throws Exception {
        int row =   jopMapper.update(record);
        if (row>0) {
            return row;
        }else {
            throw new Exception("主动抛出异常并回滚事务");
        }

    }
}