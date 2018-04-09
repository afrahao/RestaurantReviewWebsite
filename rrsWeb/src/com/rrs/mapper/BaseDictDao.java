package com.rrs.mapper;

import java.util.List;


import com.rrs.pojo.BaseDict;

public interface BaseDictDao {

    List<BaseDict> selectByCode(String code);
}
