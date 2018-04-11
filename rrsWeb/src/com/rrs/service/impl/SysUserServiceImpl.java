package com.rrs.service.impl;

import java.text.ParseException;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.SysUserDao;
import com.rrs.pojo.SysUser;

import com.rrs.service.SysUserService;
import com.rrs.util.MD5Util;
import com.rrs.util.SendEmail;
import com.rrs.util.ServiceException;

@Service
public class SysUserServiceImpl implements SysUserService{
	
	@Autowired
    private SysUserDao sysUserDao;

	@Override
	public SysUser TestUserByEmail(String email) {
		
		return sysUserDao.TestUserByEmail(email);
	}

	@Override
	public void updateUserStatus(String email) {
		// TODO Auto-generated method stub
		sysUserDao.updateUserStatus(email);
	}
	
	public void processregister(String name,String email,String password){  
       String validateCode=MD5Util.encode2hex(email);
       sysUserDao.regesterUser(name,email,MD5Util.encode2hex(password),validateCode);  
       
      ///邮件的内容  
        StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");  
        sb.append("<a href=\"http://localhost:8013/rrsWeb/register?action=activate&email=");  
        sb.append(email);   
        sb.append("&validateCode=");
        sb.append(validateCode);  
        sb.append("\">http://localhost:8013/rrsWeb/register?action=activate&email=");   
        sb.append(email);  
        sb.append("&validateCode=");
        sb.append(validateCode);  
        sb.append("</a>");
          
     
        SendEmail.send(email, sb.toString());  
        System.out.println("发送邮件！");  
          
    }  
      
    
    public void processActivate(String email , String validateCode)throws ServiceException, ParseException{    
           
    	SysUser user=sysUserDao.TestUserByEmail(email);  
       
        if(user!=null) {    
             
            if(user.getStatus()==0) {   
               
                Date currentTime = new Date();
           
                currentTime.before(user.getRegisterTime());  
                if(currentTime.before(user.getLastActivateTime())) {    
                      
                    if(validateCode.equals(user.getValidateCode())) {    
                        sysUserDao.updateUserStatus(email);  
                    } else {    
                        throw new ServiceException("激活码不正确");    
                     }    
                 } else { throw new ServiceException("激活码已过期！");    
                 }    
             } else {  
                throw new ServiceException("邮箱已激活，请登录！");    
             }    
         } else {  
             throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");    
         }  
            
    }  
}
