package com.rrs.service;

import java.text.ParseException;
import java.util.List;

import com.rrs.pojo.SysUser;
import com.rrs.util.ServiceException;

public interface PreferenceService {
	List<Integer> selectPreference(int integer);
	void insertPreference(int userId, int categoryId);
}

