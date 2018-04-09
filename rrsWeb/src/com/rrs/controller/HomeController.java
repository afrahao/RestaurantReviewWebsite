package com.rrs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rrs.pojo.SysUser;
import com.rrs.service.SysUserService;

@Controller
public class HomeController {
	@Autowired
	private SysUserService sysUserService;
	@RequestMapping("/index")  
	public String index(HttpServletRequest request, HttpServletResponse response){  
	    return "index";  
	}  
	
	@RequestMapping("/login")  
	public String toLogin(HttpServletRequest request, HttpServletResponse response){  
	    return "login";  
	}  
	
	@RequestMapping("/forgetPassword")  
	public String toForgetPassword(HttpServletRequest request, HttpServletResponse response){  
	    return "forget_password";  
	}  
	
	@RequestMapping("/search")  
	public String search(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_search";  
	}
	
	@RequestMapping("/info")  
	public String restaurantInfo(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_info";  
	}
	
	@RequestMapping("/register") 
	public @ResponseBody
	String regist(SysUser user){
		System.out.println("------------------------------"+user);
		 sysUserService.regist(user);
	        return "success";  
	}
}
