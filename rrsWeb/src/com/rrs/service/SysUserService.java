package com.rrs.service;

import java.text.ParseException;
import com.rrs.pojo.SysUser;
import com.rrs.util.ServiceException;

public interface SysUserService {
	
	 SysUser TestUserByEmail(String email);
     void updateUserStatus(String email);
     public void processregister(String name,String email,String password);
     public void processActivate(String email , String validateCode)throws ServiceException, ParseException;
     public int loginCheck(String email,String password);
     public int waitTime(String email);
     
   //forget password
     public int forgetpwUser(String email, String password, String validateCode);
     public void sendValidate(String email , String validateCode);
}
