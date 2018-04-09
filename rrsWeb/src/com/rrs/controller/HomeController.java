package com.rrs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/index")  
	public String index(HttpServletRequest request, HttpServletResponse response){  
	    return "index";  
	}  
	
	@RequestMapping("/login")  
	public String toLogin(HttpServletRequest request, HttpServletResponse response){  
	    return "login";  
	}  
	
	@RequestMapping("/search")  
	public String search(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_search";  
	}
	
	@RequestMapping("/info")  
	public String restaurantInfo(HttpServletRequest request, HttpServletResponse response){  
	    return "restaurant_info";  
	}
}
