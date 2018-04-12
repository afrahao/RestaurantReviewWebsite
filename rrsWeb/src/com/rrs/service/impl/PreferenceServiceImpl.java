package com.rrs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.PreferenceDao;
import com.rrs.service.PreferenceService;

@Service
public class PreferenceServiceImpl implements PreferenceService{

	@Autowired
	private PreferenceDao preferenceDao;

	@Override
	public List<Integer> selectPreference(int userId) {
		// TODO Auto-generated method stub
		 return preferenceDao.selectById(userId);
	}

	@Override
	public void insertPreference(int userId,int categoryId) {
		// TODO Auto-generated method stub
		preferenceDao.insertcategory(userId,categoryId);
	}

}
