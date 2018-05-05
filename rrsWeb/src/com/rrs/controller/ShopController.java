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
	
	//全局变量
	List<Restaurant> shopList = new ArrayList<Restaurant>();
	
	//1.打开grid页面
	@RequestMapping(value = "/grid",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView shopGrid(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();		
		shopList = shopService.getRestaurant(1, 60);
		mav.addObject("pageNum",shopList.size()/15);
		mav.addObject("current_user", user);
		mav.setViewName("restaurant_search");		
		return mav;
		
	}
	
	//2.加载商家到页面上显示
	@RequestMapping(value = "/showGrid",method = {RequestMethod.POST })
	@ResponseBody
	public String showGrid(@RequestParam(value="page") int page,int num,HttpServletRequest request, HttpServletResponse response){ 
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		
		//暂定每页15个
		num = 15;
		
		partList = pageControl(page,num,shopList);
	
		String str = JsonUtils.ObjectToJson(partList);
		
	    return str;
	}
	
	//3.搜索商家
	@RequestMapping(value = "/searchGrid",method = { RequestMethod.POST })
	public @ResponseBody
	String searchShop(@RequestParam(value="key") String key,HttpServletRequest request, HttpServletResponse response){ 
		
		//List<Restaurant> shopList = new ArrayList<Restaurant>();
		
		
		shopList = shopService.getRestaurant(16,31);

		String str = JsonUtils.ObjectToJson(shopList);
		
	    return str;
	}
	
	//4.按评论排序商家
	@RequestMapping(value = "/sortShop",method = { RequestMethod.POST })
	public @ResponseBody
	String sortShop(@RequestParam(value="sort") String sort,HttpServletRequest request, HttpServletResponse response){ 
		
		//特殊排序过的list
		List<Restaurant> shopListSort = new ArrayList<Restaurant>();
		String str="";
		
		if(sort=="review"){
			//调用按评论数排序
			shopListSort = shopService.getSortByReview(shopList);
			str = JsonUtils.ObjectToJson(shopListSort);
		} else if (sort=="stars"){
			//调用按星级排序
			shopListSort = shopService.getSortByStars(shopList);
			str = JsonUtils.ObjectToJson(shopListSort);
		} else if (sort=="default"){
			//直接返回原来的list
			str = JsonUtils.ObjectToJson(shopList);
		}

	    return str;
	}
	
	//5.翻页
	public List<Restaurant> pageControl(int page,int num,List<Restaurant> allShop){
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		
		int start = (page-1)*num;
		int end = start + num;
		for(int i = start ; i < end ; i ++){
			if(allShop.get(i) == null)
				break;
			else
				partList.add(allShop.get(i));
		}

		return partList;
	}
	
	
}
	
	
	



