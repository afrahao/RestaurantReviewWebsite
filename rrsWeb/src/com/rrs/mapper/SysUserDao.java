package com.rrs.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.rrs.pojo.SysUser;

public interface SysUserDao {

	void regesterUser(String id,String name, String email, String password,String ValidateCode);
	SysUser TestUserByEmail(String email);
	void updateUserStatus(String email);
	SysUser checkEmail(String email);
	SysUser checkPassword(String email, String password);
	int checkLoginTime(String email);
	void updateTimes(String email);
	void updateTime(String email);
	void resetTimes(String email);
	int getTimes(String email);
	
	//forget password
	void forgetpwUser(String email, String newpassword, String validateCode);
	void updateValidateCode(String email, String validateCode);
	void updateValidateTime(@Param("email")String email, @Param("valiTime")Date valiTime );
	
	//modify user profile
	void modifyuserprofile(String nickname,String id);
	//modify user password
	void modifypassword(String email,String passwordsignup);
}
