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
      
    /** 
     * 处理�?�? 
     * @throws ParseException  
     */  
    public void processActivate(String email , String validateCode)throws ServiceException, ParseException{    
           
    	SysUser user=sysUserDao.TestUserByEmail(email);  
       
        if(user!=null) {    
            //验证用户�?活状�?    
            if(user.getStatus()==0) {   
                ///没激�?  
                Date currentTime = new Date();//获取当前时间    
                //验证链接是否过期   
                currentTime.before(user.getRegisterTime());  
                if(currentTime.before(user.getLastActivateTime())) {    
                    //验证�?活码是否正确    
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
}
