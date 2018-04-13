package com.rrs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	
	//-------------------------------------个人信息 Info-----------------------------------------
	
	//1.打开个人信息页面
	@RequestMapping("/profile")  
	public String userProfile(HttpServletRequest request, HttpServletResponse response){  
	    return "user_profile";  
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
	List InitialFavor(Integer userId){ 
		
		System.out.println("-----r----" + userId);
		
		
		List<Integer> categoryIdList = new ArrayList<Integer>();
		categoryIdList.add(3);
		categoryIdList.add(4);
		categoryIdList.add(10);
		
	    return categoryIdList;
	}
	
	//3.更新用户的喜好标签到后台数据库
	@RequestMapping("/updateFavor")  
	public void updateFavor(HttpServletRequest request,@RequestParam("curUserFavor") Integer[] categoryList){ 
		
		for(int i = 0 ; i < categoryList.length ; i++){
			System.out.println("-----r----" + categoryList[i]);
		}
		//System.out.println("-----r----" + categoryList);
		
//		for(int i=0;i<categoryList.length;i++){
//			preferenceService.insertPreference(userId,categoryList[i]);
//		}
		
	}
	
	
}
