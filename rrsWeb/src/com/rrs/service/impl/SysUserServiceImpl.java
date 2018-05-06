package com.rrs.service.impl;

import java.text.ParseException;
import java.util.Date;
import java.util.UUID;

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
       UUID uuid=UUID.randomUUID();
       String str = uuid.toString(); 
       String uuidStr=str.replace("-", "");
       sysUserDao.regesterUser(uuidStr,name,email,MD5Util.encode2hex(password),validateCode);  
       
      
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
        System.out.println("发送邮件");  
          
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
                 } else { throw new ServiceException("激活码已过期");    
                 }    
             } else {  
                throw new ServiceException("邮箱已激活，请登录！");    
             }    
         } else {  
             throw new ServiceException("该邮箱未注册（邮箱地址不存在）！");    
         }  
            
    }
    
    
    public int loginCheck(String email,String password)
    {
    	
    	SysUser user=sysUserDao.checkEmail(email);
    
        if(user != null)
        {
        	int wait = sysUserDao.getTimes(email);
        	
        	if(wait==5 && sysUserDao.checkLoginTime(email) < 60)
        	{
        		return 4;
        	}
        	
        	else if(wait==5 && sysUserDao.checkLoginTime(email) >= 60)
        	{
        		
        		sysUserDao.resetTimes(email);
        	}
        	
        	user=sysUserDao.checkPassword(email,MD5Util.encode2hex(password));
        	
        	if(user != null)
        	{
        		return 2;
        	}
        	else
        	{
        		
        		sysUserDao.updateTimes(email);
        	
        		int time=sysUserDao.checkLoginTime(email);
        
        		if(time<120)
        		{
        		
        			if(sysUserDao.getTimes(email)==5)
        			{
        		
        				sysUserDao.updateTime(email);
        				return 3;
        			}
        		}
        		else
        		{
        			sysUserDao.updateTime(email);
        		}
        	}
        	return 1;
        }
        return 0;
    }

    public int waitTime(String email)
    {
    	return (60-sysUserDao.checkLoginTime(email));
    }
    
  //忘记密码时给用户邮箱发送验证码
    public void sendValidate(String email , String validateCode){
    	
    	System.out.println("进到发送验证码的函数了。");
    	sysUserDao.updateValidateCode(email, validateCode);
        
        
        System.out.println("马上要发送验证码了。");
        //邮件的内容  
         StringBuffer sb=new StringBuffer("验证码为：</br>");  
         sb.append(validateCode);  
         sb.append("\r\n请在5分钟内使用该验证码，5分钟后即失效");     
         sb.append("</a>");
         
         SendEmail.send(email, sb.toString());  
         System.out.println("发送验证码！"); 
         
         //在此处可能需要操作一下数据库中发送验证码的时间，以及在最终点击ok时，需要判断该时间与当前时间的时间差是否为5分钟。
         Date valiDate = new Date();
         sysUserDao.updateValidateTime(email, valiDate);
    }
    
    //忘记密码时修改用户密码
    public int forgetpwUser(String email, String password, String validateCode){
    	
    	SysUser user=sysUserDao.TestUserByEmail(email); //获取当前用户
    	Date currentTime = new Date();
    	long intervals = currentTime.getTime()-user.getValiTime().getTime();
    	long minutes = intervals/60000;
    	int msg = 1;
    	
    	System.out.println("时长是？：" + minutes); 
    	
    	if(minutes <= 10 ){
    		//此时可以修改密码
    		if(user.getValidateCode().equals(validateCode)){	
    			sysUserDao.forgetpwUser(email, MD5Util.encode2hex(password), validateCode);
        		msg = 1;
    		}else{
    			msg = 0;
    		}
    	}else {
    		//此时验证码应过期，需要提醒验证码过期。
    		msg = 2;
    	}
    	
    	return msg;   	
    }
    
  //modify user password
    public int modifypassword(String email,String verification_code,String passwordsignup,String passwordsignup_confirm){
    	SysUser user=sysUserDao.TestUserByEmail(email); //获取当前用户
    	Date currentTime = new Date();
    	long intervals = currentTime.getTime()-user.getValiTime().getTime();
    	long minutes = intervals/60000;
    	int msg = 1;
    	
    	System.out.println("时长是？：" + minutes); 
    	
    	if(minutes <= 10 ){
    		//此时可以修改密码
    		System.out.println("hi there");
    		System.out.println(user.getValidateCode());
    		if(user.getValidateCode().equals(verification_code)){	
    			    System.out.println("hi there again");
    				sysUserDao.modifypassword(email, MD5Util.encode2hex(passwordsignup));
            		msg = 1;		   			
    		}else{
    			msg = 0;
    		}
    	}else {
    		//此时验证码应过期，需要提醒验证码过期。
    		msg = 2;
    	}
    	
    	return msg; 
    }
    
    
    
    
    //modify user profile
    public void modifyuserprofile(String nickname,String id){
	
    	sysUserDao.modifyuserprofile(nickname, id);
    }
    
}
