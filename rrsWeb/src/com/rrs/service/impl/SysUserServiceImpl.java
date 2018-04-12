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
       
      ///�ʼ�������  
        StringBuffer sb=new StringBuffer("����������Ӽ����˺ţ�48Сʱ��Ч����������ע���˺ţ�����ֻ��ʹ��һ�Σ��뾡�켤�</br>");  
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
        System.out.println("�����ʼ���");  
          
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
                        throw new ServiceException("�����벻��ȷ");    
                     }    
                 } else { throw new ServiceException("�������ѹ��ڣ�");    
                 }    
             } else {  
                throw new ServiceException("�����Ѽ�����¼��");    
             }    
         } else {  
             throw new ServiceException("������δע�ᣨ�����ַ�����ڣ���");    
         }  
            
    }
    
    //用户名不存在返回0，密码输入错误返回1，用户名密码匹配返回2，输入次数过多返回3,等待时间不够4
    public int loginCheck(String email,String password)
    {
    	//查看是否用户存在
    	SysUser user=sysUserDao.checkEmail(email);
    	//用户存在
        if(user != null)
        {
        	int wait = sysUserDao.getTimes(email);
        	//输错密码次数超过五次并且等待时间不超过一分钟
        	if(wait==5 && sysUserDao.checkLoginTime(email) < 60)
        	{
        		return 4;
        	}
        	//等待时间已到
        	else if(wait==5 && sysUserDao.checkLoginTime(email) >= 60)
        	{
        		//重置输错次数为0
        		sysUserDao.resetTimes(email);
        	}
        	//查看用户密码与账号匹配情况
        	user=sysUserDao.checkPassword(email,MD5Util.encode2hex(password));
        	//密码正确
        	if(user != null)
        	{
        		return 2;
        	}
        	else
        	{
        		//增加密码输错次数
        		sysUserDao.updateTimes(email);
        		//查看第一次输错密码时间
        		int time=sysUserDao.checkLoginTime(email);
        		//如果该时间距离现在不到两分钟
        		if(time<120)
        		{
        			//如果这是第五次输错密码
        			if(sysUserDao.getTimes(email)==5)
        			{
        				//更新输错密码时间
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
    //返回还需要等待的时间
    public int waitTime(String email)
    {
    	return (60-sysUserDao.checkLoginTime(email));
    }
}
