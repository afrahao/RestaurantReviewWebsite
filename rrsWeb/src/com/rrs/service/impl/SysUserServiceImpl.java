package com.rrs.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.SysUserDao;
import com.rrs.pojo.SysUser;
import com.rrs.service.SysUserService;

@Service
public class SysUserServiceImpl implements SysUserService{
	@Autowired
    private SysUserDao sysUserDao;
	
	@Override
	public void regist(SysUser user) {
		// TODO Auto-generated method stub
		sysUserDao.regesterUser(user);
	}
}
