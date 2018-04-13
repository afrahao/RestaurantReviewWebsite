package com.rrs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rrs.service.PreferenceService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private PreferenceService preferenceService;
	//-------------------------------------个人信息 Info-----------------------------------------
	
	//1.打开个人信息页面
	@RequestMapping("/profile")  
	public String userProfile(HttpServletRequest request, HttpServletResponse response){  
	    return "user_profile";  
	}
		
	
	//-------------------------------------个人喜好 Favor-----------------------------------------
	
	//1.打开账户安全页面
		@RequestMapping("/security")  
		public String userSecurity(HttpServletRequest request, HttpServletResponse response){  
		    return "user_security";  
		}
		
		
	//-------------------------------------个人喜好 Favor-----------------------------------------
	
	//1.打开喜好标签页面
	@RequestMapping("/favor")  
	public String toFavor(HttpServletRequest request, HttpServletResponse response){  
	    return "user_favor";  
	}		
	
	//2.加载用户的喜好标签到页面上显示
	@RequestMapping("/initFavor")  
	public @ResponseBody
	List<Integer> InitialFavor(Integer userId){ 
		
		System.out.println("-----r----" + userId);
		List<Integer> categoryIdList = preferenceService.selectPreference(userId);
	    return categoryIdList;
	}
	
	//3.更新用户的喜好标签到后台数据库
	@RequestMapping("/updateFavor")  
	public @ResponseBody void updateFavor(Integer userId,int[] curUserFavor){ 
		
     preferenceService.deletePreference(userId);
		for(int i=0;i<curUserFavor.length;i++){
			preferenceService.insertPreference(userId,curUserFavor[i]);
		}
		
	}
	
	
}
