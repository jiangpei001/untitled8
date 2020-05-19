package com.jp.dao;

import com.jp.bean.Author;
import java.util.List;

public interface AuthorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Author record);

    Author selectByPrimaryKey(Integer id);

    List<Author> selectAll();

    int updateByPrimaryKey(Author record);
}