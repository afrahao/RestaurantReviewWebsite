package com.rrs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@RequestMapping("/addFavor")  
	public String userAddFavor(HttpServletRequest request, HttpServletResponse response){  
	    return "user_add_favor";  
	}
	
	@RequestMapping("/profile")  
	public String userProfile(HttpServletRequest request, HttpServletResponse response){  
	    return "user_profile";  
	}
}
