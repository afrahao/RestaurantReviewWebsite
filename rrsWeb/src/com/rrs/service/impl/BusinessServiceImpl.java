package com.rrs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.BusinessDao;
import com.rrs.mapper.PreferenceDao;
import com.rrs.service.BusinessService;

@Service
public class BusinessServiceImpl implements BusinessService{
	@Autowired
	private BusinessDao businessDao;

}
