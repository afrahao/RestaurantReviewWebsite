package com.rrs.service.impl;

import java.text.ParseException;
import java.util.Date;
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
       
      ///锟绞硷拷锟斤拷锟斤拷锟斤拷  
        StringBuffer sb=new StringBuffer("锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷蛹锟斤拷锟斤拷撕牛锟�48小时锟斤拷效锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷注锟斤拷锟剿号ｏ拷锟斤拷锟斤拷只锟斤拷使锟斤拷一锟轿ｏ拷锟诫尽锟届激锟筋！</br>");  
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
        System.out.println("锟斤拷锟斤拷锟绞硷拷锟斤拷");  
          
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
                        throw new ServiceException("锟斤拷锟斤拷锟诫不锟斤拷确");    
                     }    
                 } else { throw new ServiceException("锟斤拷锟斤拷锟斤拷锟窖癸拷锟节ｏ拷");    
                 }    
             } else {  
                throw new ServiceException("锟斤拷锟斤拷锟窖硷拷锟筋，锟斤拷锟铰硷拷锟�");    
             }    
         } else {  
             throw new ServiceException("锟斤拷锟斤拷锟斤拷未注锟结（锟斤拷锟斤拷锟街凤拷锟斤拷锟斤拷冢锟斤拷锟�");    
         }  
            
    }
    
    //鐢ㄦ埛鍚嶄笉瀛樺湪杩斿洖0锛屽瘑鐮佽緭鍏ラ敊璇繑鍥�1锛岀敤鎴峰悕瀵嗙爜鍖归厤杩斿洖2锛岃緭鍏ユ鏁拌繃澶氳繑鍥�3,绛夊緟鏃堕棿涓嶅4
    public int loginCheck(String email,String password)
    {
    	//鏌ョ湅鏄惁鐢ㄦ埛瀛樺湪
    	SysUser user=sysUserDao.checkEmail(email);
    	//鐢ㄦ埛瀛樺湪
        if(user != null)
        {
        	int wait = sysUserDao.getTimes(email);
        	//杈撻敊瀵嗙爜娆℃暟瓒呰繃浜旀骞朵笖绛夊緟鏃堕棿涓嶈秴杩囦竴鍒嗛挓
        	if(wait==5 && sysUserDao.checkLoginTime(email) < 60)
        	{
        		return 4;
        	}
        	//绛夊緟鏃堕棿宸插埌
        	else if(wait==5 && sysUserDao.checkLoginTime(email) >= 60)
        	{
        		//閲嶇疆杈撻敊娆℃暟涓�0
        		sysUserDao.resetTimes(email);
        	}
        	//鏌ョ湅鐢ㄦ埛瀵嗙爜涓庤处鍙峰尮閰嶆儏鍐�
        	user=sysUserDao.checkPassword(email,MD5Util.encode2hex(password));
        	//瀵嗙爜姝ｇ‘
        	if(user != null)
        	{
        		return 2;
        	}
        	else
        	{
        		//澧炲姞瀵嗙爜杈撻敊娆℃暟
        		sysUserDao.updateTimes(email);
        		//鏌ョ湅绗竴娆¤緭閿欏瘑鐮佹椂闂�
        		int time=sysUserDao.checkLoginTime(email);
        		//濡傛灉璇ユ椂闂磋窛绂荤幇鍦ㄤ笉鍒颁袱鍒嗛挓
        		if(time<120)
        		{
        			//濡傛灉杩欐槸绗簲娆¤緭閿欏瘑鐮�
        			if(sysUserDao.getTimes(email)==5)
        			{
        				//鏇存柊杈撻敊瀵嗙爜鏃堕棿
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
    //杩斿洖杩橀渶瑕佺瓑寰呯殑鏃堕棿
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
    
}
