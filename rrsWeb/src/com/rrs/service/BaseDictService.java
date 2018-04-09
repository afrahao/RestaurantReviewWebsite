package com.rrs.service;

import java.util.List;

import com.rrs.pojo.BaseDict;

public interface BaseDictService {

	List<BaseDict> queryBaseDictByDictTypeCode(String code);

}
