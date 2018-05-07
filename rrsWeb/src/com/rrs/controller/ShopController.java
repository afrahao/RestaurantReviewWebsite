package com.rrs.controller;

import java.util.ArrayList;
import java.util.Iterator;
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
	List<Restaurant> originShopList;

	
	//1.打开grid页面
	@RequestMapping(value = "/grid",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView shopGrid(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();	
		shopList = shopService.getRestaurant(61, 100);
		
		if(shopList.size()%15 != 0){
			for(int i = 0 ; i < shopList.size()%15 ; i ++){
				Restaurant r = new Restaurant();
			shopList.add(r);
			}
		}
		
		originShopList = new ArrayList<Restaurant>(shopList.size());

		for(int i = 0 ; i < shopList.size(); i ++){ 
			originShopList.add(shopList.get(i).clone()); 
		}
		
		mav.addObject("pageNum",calPageNum(shopList,15));
		mav.addObject("current_user", user);
		mav.setViewName("restaurant_search");		
		return mav;
		
	}
	
	//2.加载商家到页面上显示
	@RequestMapping(value = "/showGrid",method = {RequestMethod.POST })
	@ResponseBody
	public String showGrid(@RequestParam(value="page") int page,int num,HttpServletRequest request, HttpServletResponse response){ 
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		System.out.println(page);
		//暂定每页15个
		num = 15;
		
		
		partList = pageControl(page,num);
	
		String str = JsonUtils.ObjectToJson(partList);
		
	    return str;
	}
	
	//3.搜索商家
	@RequestMapping(value = "/searchGrid",method = { RequestMethod.POST })
	public @ResponseBody
	int searchShop(@RequestParam(value="key") String key,HttpServletRequest request, HttpServletResponse response){ 
		
		//把当前list改成搜索到的list
		//=========搜索就修改这里就可以了=============
		//shopList = shopService.getRestaurant(50,100);
		shopList = shopService.getRestaurantSearch(key);
		for(int i=0;i<shopList.size();i++){
			String shop_id = shopList.get(i).getId();
			String img = shopService.getRestaurantImg(shop_id);
			shopList.get(i).setImg(img);
		}
		//=========================================
		
		if(shopList.size()%15 != 0){
			for(int i = 0 ; i < shopList.size()%15 ; i ++){
				Restaurant r = new Restaurant();
			shopList.add(r);
			}
		}
		originShopList = new ArrayList<Restaurant>(shopList.size());
		
		for(int i = 0 ; i < shopList.size(); i ++){ 
			originShopList.add(shopList.get(i).clone()); 
		}

	    return calPageNum(shopList,15);
	}
	
	//4.按评论排序商家
	@RequestMapping(value = "/sortShop",method = { RequestMethod.POST })
	public @ResponseBody
	int sortShop(@RequestParam(value="sort")String sort, double lat,double lng,HttpServletRequest request, HttpServletResponse response){ 
		//特殊排序过的list
		
		String str="";
		System.out.println("============"+sort);
		
		if(sort.equals("1")){
			//调用按评论数排序
			shopList = shopService.getSortByReview(shopList);
			
		
		} else if (sort.equals("2")){
			//调用按星级排序
			shopList = shopService.getSortByStars(shopList);
			
			
		} else if (sort.equals("3")){
			//距离小于等于3km
			shopList = shopService.getRestaurantByDistance1(lat, lng, 3000);
			System.out.println("----------------------------"+shopList.size());
		} else if (sort.equals("4")){
			//3-10km
			shopList = shopService.getRestaurantByDistance2(lat, lng, 3000,5000);
			System.out.println("----------------------------"+shopList.size());
			
		} else if (sort.equals("5")){
			//10km以上
			shopList = shopService.getRestaurantByDistance3(lat, lng, 5000);
			System.out.println("----------------------------"+shopList.size());
		} else if (sort.equals("0")){
			//用之前的default商店列表
			shopList = originShopList;
		}
		
		return calPageNum(shopList,15);
	}
	
	//5.翻页
	public List<Restaurant> pageControl(int page,int num){
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		
		int start = (page-1)*num;
		int end = start + num;
		for(int i = start ; i < end ; i ++){
			if(shopList.get(i).getId() == null)
				break;
			else
				partList.add(shopList.get(i));
			
		}
		
//		Iterator<Restaurant> it = shopList.iterator();
//		while (it.hasNext()) {
//			partList.add(it.next());
//		}
		
		return partList;
	}
	
	//6.计算页码
	public int calPageNum(List<Restaurant> list,int size){

		return (int)Math.ceil((double)list.size()/(double)size);
	}
	
	//=======================================商店详情================================================
	//1.打开grid页面
	@RequestMapping(value = "/detail",method = {RequestMethod.GET,RequestMethod.POST })
	public ModelAndView shopDetail(String business_id, HttpServletRequest request, HttpServletResponse response){
		
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();	
		
		Restaurant shop = new Restaurant();
		
		for(int i = 0 ; i < shopList.size(); i ++ ){
			if(shopList.get(i).getId().equals(business_id))
				shop = shopList.get(i);
		}
		
		request.getSession().setAttribute("curShop", shop);
		
		
		mav.addObject("current_user", user);
		mav.setViewName("shop_info");
		return mav;
		
	}
	

	//2.加载shop详细信息
	@RequestMapping(value = "/initDetail",method = {RequestMethod.GET,RequestMethod.POST })
	@ResponseBody
	public String initDetail(String business_id, HttpServletRequest request, HttpServletResponse response){
		
		
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		
		
		Restaurant curShop = (Restaurant)request.getSession().getAttribute("curshop");
		
		String str = JsonUtils.ObjectToJson(curShop);
		System.out.println(str);
		
		return str;
		
	}

}
	
