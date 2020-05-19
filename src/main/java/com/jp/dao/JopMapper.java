package com.jp.dao;


import com.jp.bean.Jop;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface JopMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Jop record);

    Jop selectByPrimaryKey(Integer id);

    List<Jop> selectAll();

    int updateByPrimaryKey(Jop record);
    int update(Jop record);
}