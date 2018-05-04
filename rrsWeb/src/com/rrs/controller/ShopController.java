package com.rrs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.pojo.Restaurant;
import com.rrs.pojo.SysUser;
import com.rrs.service.ShopService;
import com.rrs.util.JsonUtils;

@Controller
@RequestMapping(value = "/shop")
public class ShopController {
	
	@Autowired
	ShopService shopService;
	
	//1.打开grid页面
	@RequestMapping(value = "/grid",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView shopGrid(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();		
		
		mav.addObject("current_user", user);
		mav.setViewName("restaurant_search");		
		return mav;
		
	}
	
	//2.加载商家到页面上显示
	@RequestMapping("/showGrid")  
	@ResponseBody
	public String showGrid(int page,int num,HttpServletRequest request, HttpServletResponse response){ 
		
		List<Restaurant> shopList = new ArrayList<Restaurant>();
		int start = (page-1)*num;
		int end = start + num;
		
		shopList = shopService.getRestaurant(start, end);
	
		String str = JsonUtils.ObjectToJson(shopList);
		
	    return str;
	}
	
	//3.搜索商家
	@RequestMapping(value = "/searchGrid",method = { RequestMethod.POST })
	public @ResponseBody
	String searchShop(@RequestParam(value="key") String key,HttpServletRequest request, HttpServletResponse response){ 
		
		List<Restaurant> shopList = new ArrayList<Restaurant>();
		
		//shopList = shopService.getRestaurantSearch(key);
		shopList = shopService.getRestaurant(16,31);

		String str = JsonUtils.ObjectToJson(shopList);
		
	    return str;
	}
	
}
	
	
	



