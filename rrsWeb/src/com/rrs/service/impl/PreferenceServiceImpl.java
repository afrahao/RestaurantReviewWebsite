package com.rrs.service.impl;

import java.util.ArrayList;
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
	public List<Integer> selectPreference(String userId) {
		// TODO Auto-generated method stub
		List<Integer> list = new ArrayList<Integer>();
		list = preferenceDao.selectById(userId);
		return list;
	}

	@Override
	public void insertPreference(String userId,int categoryId) {
		// TODO Auto-generated method stub
		preferenceDao.insertcategory(userId,categoryId);
	}

	@Override
	public void deletePreference(String userId) {
		// TODO Auto-generated method stub
		preferenceDao.deletecategory(userId);
	}

}
