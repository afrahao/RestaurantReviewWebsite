package com.rrs.service;

import java.util.List;

import com.rrs.pojo.BaseDict;

public interface UserService {
	List<BaseDict> queryBaseDictByDictTypeCode(String code);
}
