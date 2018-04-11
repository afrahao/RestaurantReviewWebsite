package com.rrs.mapper;

import java.util.Map;

import com.rrs.pojo.SysUser;

public interface SysUserDao {

	void regesterUser(String name, String email, String password,String ValidateCode);
	SysUser TestUserByEmail(String email);
	void updateUserStatus(String email);
}
