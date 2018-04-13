package com.rrs.mapper;

import com.rrs.pojo.SysUser;

public interface SysUserDao {

	void regesterUser(String name, String email, String password,String ValidateCode);
	SysUser TestUserByEmail(String email);
	void updateUserStatus(String email);
	SysUser checkEmail(String email);
	SysUser checkPassword(String email, String password);
	int checkLoginTime(String email);
	void updateTimes(String email);
	void updateTime(String email);
	void resetTimes(String email);
	int getTimes(String email);
}
