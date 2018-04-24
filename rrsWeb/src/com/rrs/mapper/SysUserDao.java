package com.rrs.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.rrs.pojo.SysUser;

public interface SysUserDao {

	void regesterUser(String name, String email, String password,String ValidateCode);
	SysUser TestUserByEmail(String email);
	void updateUserStatus(String email);
	SysUser checkEmail(String email);
	
	//核对密码
	SysUser checkPassword(String email, String password);
	int checkLoginTime(String email);
	//增加输入密码错误次数
	void updateTimes(String email);
	//更新登陆时间
	void updateTime(String email);
	//重置输入密码错误次数
	void resetTimes(String email);
	//获取密码输入错误次数
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
