package com.rrs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.service.BusinessService;


@Controller
public class BusinessController {
	@Autowired
	private BusinessService businessService;

	@RequestMapping(value = "/restaurant_search",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Restaurant_search(HttpServletRequest request, HttpServletResponse response){
		String index = request.getParameter("index");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("restaurant_search");		
		return mav;
	}
	
	@RequestMapping(value = "/restaurant_info",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView Restaurant_info(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("restaurant_info");		
		return mav;
	}
	
}
