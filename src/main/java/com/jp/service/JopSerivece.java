package com.jp.service;


import com.jp.bean.Jop;

import java.util.List;

public interface JopSerivece {
    int deleteByPrimaryKey(Integer id) throws Exception;
    int insert(Jop record) throws Exception;
    List<Jop> selectAll() throws Exception;
    int update(Jop record) throws Exception;
}
