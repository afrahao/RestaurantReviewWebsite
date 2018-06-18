package com.rrs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rrs.pojo.Restaurant;

import com.rrs.pojo.Review;

import com.rrs.pojo.SearHot;

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
	List<Restaurant> DistanceshopList = new ArrayList<Restaurant>();
	Restaurant curShop = new Restaurant();

	
	//1.打开grid页面
	@RequestMapping(value = "/grid",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView shopGrid(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();	
		SysUser user = null;
		
		try{
			
			user= (SysUser)request.getSession().getAttribute("currentuser"); 
			
			
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

			//历史搜索记录
			List<String> historySearchList= new ArrayList<String>();
			historySearchList = shopService.getSearRec(user);
		
			//热门搜索记录
			List<String> hotSearchList= new ArrayList<String>();		
			hotSearchList = shopService.getSearHot();
			
			mav.addObject("pageNum",calPageNum(shopList,15));
			mav.addObject("current_user", user);
			mav.addObject("historySearchList", historySearchList);
			mav.addObject("hotSearchList", hotSearchList);
			mav.setViewName("restaurant_search");	
			
			System.out.println("一共有"+originShopList.size());
			return mav;
		}catch(Exception e){
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
		
			//热门搜索记录
			List<String> hotSearchList= new ArrayList<String>();		
			hotSearchList = shopService.getSearHot();
			
			mav.addObject("pageNum",calPageNum(shopList,15));
			mav.addObject("hotSearchList", hotSearchList);
			mav.setViewName("restaurant_search");	
			mav.addObject("current_user", user);
			System.out.println("一共有"+originShopList.size());
			
			return mav;
		}
		
	}
	

	//按种类搜索

	@RequestMapping(value = "/kindGrid",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView kindGrid(@RequestParam(value="cateId") int cateId,HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		
		SysUser user = null;
		
		try{
			user= (SysUser)request.getSession().getAttribute("currentuser"); 
			shopList = shopService.getRestaurantByKind(cateId);

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

			//历史搜索记录
			List<String> historySearchList= new ArrayList<String>();
			historySearchList = shopService.getSearRec(user);

			//热门搜索记录
			List<String> hotSearchList= new ArrayList<String>();		
			hotSearchList = shopService.getSearHot();
			
			
			mav.addObject("pageNum",calPageNum(shopList,15));
			mav.addObject("current_user", user);
			mav.addObject("historySearchList", historySearchList);
			mav.addObject("hotSearchList", hotSearchList);
			mav.setViewName("restaurant_search");	
			
			System.out.println("一共有"+originShopList.size());
			return mav;
			
		
		}catch (Exception e){
			shopList = shopService.getRestaurantByKind(cateId);

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

		
			//热门搜索记录
			List<String> hotSearchList= new ArrayList<String>();		
			hotSearchList = shopService.getSearHot();
			mav.addObject("current_user", user);
			mav.addObject("pageNum",calPageNum(shopList,15));
			mav.addObject("hotSearchList", hotSearchList);
			mav.setViewName("restaurant_search");	
			
			System.out.println("一共有"+originShopList.size());
			return mav;

			
		}
	}
		
		//猜你喜欢
		@RequestMapping(value = "/guessLike",method = { RequestMethod.GET, RequestMethod.POST })
		public ModelAndView guessLike(HttpServletRequest request, HttpServletResponse response){
			
			SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
			
			ModelAndView mav = new ModelAndView();	
			
			shopList = shopService.getGuessLike(user.getId());
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

			//历史搜索记录
			List<String> historySearchList= new ArrayList<String>();
			historySearchList = shopService.getSearRec(user);
		
		
			//热门搜索记录
			List<String> hotSearchList= new ArrayList<String>();		
			hotSearchList = shopService.getSearHot();
			
			
			mav.addObject("pageNum",calPageNum(shopList,15));
			mav.addObject("current_user", user);
			mav.addObject("historySearchList", historySearchList);
			mav.addObject("hotSearchList", hotSearchList);
			mav.setViewName("restaurant_search");	
			
			System.out.println("一共有"+originShopList.size());
			return mav;
			
		}
	
	//2.加载商家到页面上显示
	@RequestMapping(value = "/showGrid",method = {RequestMethod.POST })
	@ResponseBody
	public String showGrid(@RequestParam(value="page") int page,int num,HttpServletRequest request, HttpServletResponse response){ 
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		
		//暂定每页15个
		num = 15;
		
		partList = pageControl(page,num);
	
		String str = JsonUtils.ObjectToJson(partList);
		
	    return str;
	}
	
	//3.搜索商家
	@RequestMapping(value = "/searchGrid",method = { RequestMethod.POST })
	public @ResponseBody
	int searchShop(@RequestParam(value="key") String key,@RequestParam(value="way") String way,HttpServletRequest request, HttpServletResponse response){ 
		
		SysUser user = null;
		
		try{
			
			user = (SysUser)request.getSession().getAttribute("currentuser"); 
			
			//把当前list改成搜索到的list
			//=========搜索就修改这里就可以了=============
			//shopList = shopService.getRestaurant(50,100);
			if(key==""){
				shopList = shopService.getRestaurant(61, 100);
				
				System.out.println("一共有"+shopList.size());
				
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
				
			} else {
				
				if(shopService.isInhot(key)==0){
					//此时在热门搜索表中，没有这一条关键字的记录，因此要做插入操作。
					
					int searchNum = shopService.getRestaurantSearchNum(key,way);
					if(searchNum == 0){
						
						//虽然查出来的记录是0，但是也是搜索记录啊
						shopService.insertHot(key);//将新纪录插入热门搜索表中
						shopService.insertRec(key, user.getId());//将新纪录插入用户历史搜索记录表中
						return 0;
					} else {
						
						//将新纪录插入热门搜索表中
						shopService.insertHot(key);
						//将新纪录插入用户历史搜索记录表中
						shopService.insertRec(key, user.getId());
						
						shopList = shopService.getRestaurantSearch(key,way);
						shopList = shopService.getSortByDefault(shopList);
						for(int i=0;i<shopList.size();i++){
							String shop_id = shopList.get(i).getId();
							List<String> img = shopService.getRestaurantImg(shop_id);
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
					
				}else{
					//此时改关键字已经存在于热门表中了，只需要将该条记录的count++
					int searchNum = shopService.getRestaurantSearchNum(key,way);
					if(searchNum == 0){
						
						//将热门搜索中的count++
						shopService.modifyHot(key);
						
						//判断在历史纪录表中，是否是当前用户搜索的
						if(shopService.searBefore(key, user.getId())==0){
							//当前用户没有搜索过这条记录
							//在其中插入一条新纪录
							shopService.insertRec(key, user.getId());
							
						}else{
							//当前用户搜索过这条记录
							shopService.modifyRec(key, user.getId());
						}
						
						return 0;
					} else {
						
						//将热门搜索中的count++
						shopService.modifyHot(key);
						//判断在历史纪录表中，是否是当前用户搜索的
						if(shopService.searBefore(key, user.getId())==0){
							//当前用户没有搜索过这条记录
							//在其中插入一条新纪录
							shopService.insertRec(key, user.getId());
							
						}else{
							//当前用户搜索过这条记录
							shopService.modifyRec(key, user.getId());
						}
						
						shopList = shopService.getRestaurantSearch(key,way);
						//没有标签的  可以设置传入的参数是已经分次过的keys 写一个与上面相对应的函数

						shopList = shopService.getSortByDefault(shopList);
						for(int i=0;i<shopList.size();i++){
							String shop_id = shopList.get(i).getId();
							List<String> img = shopService.getRestaurantImg(shop_id);
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
				}
				
							
			}
			
		}catch(Exception e){
			
			
			//把当前list改成搜索到的list
			//=========搜索就修改这里就可以了=============
			//shopList = shopService.getRestaurant(50,100);
			if(key==""){
				shopList = shopService.getRestaurant(61, 100);
				
				System.out.println("一共有"+shopList.size());
				
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
				
			} else {
				
				if(shopService.isInhot(key)==0){
					//此时在热门搜索表中，没有这一条关键字的记录，因此要做插入操作。
					
					int searchNum = shopService.getRestaurantSearchNum(key,way);
					if(searchNum == 0){
						
						//虽然查出来的记录是0，但是也是搜索记录啊
						shopService.insertHot(key);//将新纪录插入热门搜索表中
						return 0;
					} else {
						
						//将新纪录插入热门搜索表中
						shopService.insertHot(key);
						
						shopList = shopService.getRestaurantSearch(key,way);
						shopList = shopService.getSortByDefault(shopList);
						for(int i=0;i<shopList.size();i++){
							String shop_id = shopList.get(i).getId();
							List<String> img = shopService.getRestaurantImg(shop_id);
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
					
				}else{
					//此时改关键字已经存在于热门表中了，只需要将该条记录的count++
					int searchNum = shopService.getRestaurantSearchNum(key,way);
					if(searchNum == 0){
						
						//将热门搜索中的count++
						shopService.modifyHot(key);
						
						return 0;
					} else {
						
						//将热门搜索中的count++
						shopService.modifyHot(key);
						
						shopList = shopService.getRestaurantSearch(key,way);
						//没有标签的  可以设置传入的参数是已经分次过的keys 写一个与上面相对应的函数

						shopList = shopService.getSortByDefault(shopList);
						for(int i=0;i<shopList.size();i++){
							String shop_id = shopList.get(i).getId();
							List<String> img = shopService.getRestaurantImg(shop_id);
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
				}
				
							
			}
			
			
			
		}
		
	}
	
	//4.按评论排序商家
	@RequestMapping(value = "/sortShop",method = { RequestMethod.POST })
	public @ResponseBody
	int sortShop(@RequestParam(value="sort")String sort, double lat,double lng,HttpServletRequest request, HttpServletResponse response){ 
		//特殊排序过的list
		
		String str="";
		System.out.println("============"+sort);
		
		if(originShopList.size()%15 != 0){
			for(int i = 0 ; i < originShopList.size()%15 ; i ++){
				Restaurant r = new Restaurant();
				originShopList.add(r);
			}
		}
		
		if(sort.equals("1")){
			//调用按评论数排序

			if(shopList.size()!=originShopList.size()){
				shopList = new ArrayList<Restaurant>(originShopList.size()) ;
			
				for(int i = 0 ; i < originShopList.size(); i ++){ 
					shopList.add(originShopList.get(i).clone()); 
				}
			}
			
			shopList = shopService.getSortByReview(shopList);
			
		
		} else if (sort.equals("2")){
			//调用按星级排序
			if(shopList.size()!=originShopList.size()){
				shopList = new ArrayList<Restaurant>(originShopList.size()) ;
			
				for(int i = 0 ; i < originShopList.size(); i ++){ 
					shopList.add(originShopList.get(i).clone()); 
				}
			}
			
			shopList = shopService.getSortByStars(shopList);
			
			
		} else if (sort.equals("3")){
			//距离小于等于3km
			//从数据库直接查询
			//shopList = shopService.getRestaurantByDistanceA1(lat, lng, 3000);
			
			/*初始化列表有问题！！没有问题后下面两行可注释*/
			//originShopList = shopService.getRestaurant(61, 100);
			//重新计算距离
			//shopService.GetDistance(lat, lng, originShopList);
			
			
			
			
			shopService.GetDistance(lat, lng, originShopList);
			/*************/
			
			DistanceshopList.clear();
			System.out.println("排序前有o"+originShopList.size());
			shopList = shopService.getRestaurantByDistanceB(originShopList);
			System.out.println("排序后有"+shopList.size());
			
			
			for(int i=0;i<shopList.size();i++){
				System.out.println(shopList.get(i).getDistance());
				DistanceshopList.add(shopList.get(i));
				if(shopList.get(i).getDistance()>3000)
					break;
			}
			System.out.println("3000距离有"+DistanceshopList.size());
			shopList.clear();
			shopList.addAll(DistanceshopList);
			
			System.out.println("----------------------------"+shopList.size());
			
			if(shopList.size()%15 != 0){
				for(int i = 0 ; i < shopList.size()%15 ; i ++){
					Restaurant r = new Restaurant();
				shopList.add(r);
				}
			}
			
			System.out.println("----------------------------"+shopList.size());
		} else if (sort.equals("4")){
			//3-5km
			//从数据库直接查询
			//shopList = shopService.getRestaurantByDistanceA2(lat, lng, 3000,5000);
			
			/*初始化列表有问题！！没有问题后下面两行可注释*/
//			originShopList = shopService.getRestaurant(61, 100);
//			//重新计算距离
			shopService.GetDistance(lat, lng, originShopList);
//			shopService.GetDistance(lat, lng, shopList);
			/***********************/
			
			DistanceshopList.clear();
			System.out.println("排序前有o"+originShopList.size());
			shopList = shopService.getRestaurantByDistanceB(originShopList);
			System.out.println("排序后有"+shopList.size());
			
			
			System.out.println("----------------------------"+shopList.size());
			for(int i=0;i<shopList.size();i++){
				System.out.println(shopList.get(i).getDistance());
				if(shopList.get(i).getDistance()>=3000 && shopList.get(i).getDistance()<=5000)
					DistanceshopList.add(shopList.get(i));
				if(shopList.get(i).getDistance()>=5000)
					break;
			}
			System.out.println("3000-5000距离有"+DistanceshopList.size());
			shopList.clear();
			shopList.addAll(DistanceshopList);
			
			if(shopList.size()%15 != 0){
				for(int i = 0 ; i < shopList.size()%15 ; i ++){
					Restaurant r = new Restaurant();
				shopList.add(r);
				}
			}
			
		} else if (sort.equals("5")){
			//5km以上
			//从数据库直接查询
			//shopList = shopService.getRestaurantByDistanceA3(lat, lng, 5000);
			
			/*初始化列表有问题！！没有问题后下面两行可注释*/
//			originShopList = shopService.getRestaurant(61, 100);
//			//重新计算距离
			shopService.GetDistance(lat, lng, originShopList);
//			shopService.GetDistance(lat, lng, shopList);
			/*************/
			
			DistanceshopList.clear();
			
			System.out.println("排序前有o"+originShopList.size());
			shopList = shopService.getRestaurantByDistanceB(originShopList);
			System.out.println("排序后有"+shopList.size());
			
			for(int i=0;i<shopList.size();i++){
				System.out.println(shopList.get(i).getDistance());
				if(shopList.get(i).getDistance()>5000)
					DistanceshopList.add(shopList.get(i));
			}
			shopList.clear();
			shopList.addAll(DistanceshopList);
			System.out.println("5000距离有"+DistanceshopList.size());
			System.out.println("----------------------------"+shopList.size());
			
			if(shopList.size()%15 != 0){
				for(int i = 0 ; i < shopList.size()%15 ; i ++){
					Restaurant r = new Restaurant();
				shopList.add(r);
				}
			}
		} else if (sort.equals("0")){
			//用之前的default商店列表
			shopList = new ArrayList<Restaurant>(originShopList.size()) ;
			
			for(int i = 0 ; i < originShopList.size(); i ++){ 
				shopList.add(originShopList.get(i).clone()); 
			}
			
			shopList = shopService.getSortByDefault(shopList);
		}
		
		return calPageNum(shopList,15);
	}
	
	//5.翻页
	public List<Restaurant> pageControl(int page,int num){
		
		List<Restaurant> partList = new ArrayList<Restaurant>();
		
		int start = (page-1)*num;
		int end = start + num;
		
		if(shopList.size() != 0){
			for(int i = start ; i < end ; i ++){
			
				if(shopList.get(i).getId() == null)
					break;
				else
					partList.add(shopList.get(i));	
			}	
		} 
		return partList;
	}

	
	//6.计算页码
	public int calPageNum(List<Restaurant> list,int size){

		return (int)Math.ceil((double)list.size()/(double)size);
	}
	
	//7.根据定位对饭店进行距离计算
	@RequestMapping(value = "/distance",method = {RequestMethod.POST })
	@ResponseBody
	public String distance(double lat,double lng,HttpServletRequest request, HttpServletResponse response){ 
		originShopList = shopService.getRestaurant(61, 100);
		System.out.println("排序前"+originShopList.size());
		shopService.GetDistance(lat, lng, originShopList);
	    return "OK";
	}
	
	//=======================================商店详情================================================
	//1.打开detail页面
	@RequestMapping(value = "/goToDetail",method = {RequestMethod.GET,RequestMethod.POST })
	public ModelAndView shopDetail(@RequestParam(value="business_id") String business_id, HttpServletRequest request, HttpServletResponse response){
		
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
			
		
		//Restaurant shop = new Restaurant();
		
		System.out.println("!!!!!!!!!!"+business_id);
		
		curShop = shopService.getRestaurantById(business_id);
		
		System.out.println("!!!!!!!!!!"+curShop.getAddress());
		
		
//		for(int i = 0 ; i < shopList.size(); i ++ ){
//			if(shopList.get(i).getId().equals(business_id))
//				shop = shopList.get(i);
//		}
//		
//		request.getSession().setAttribute("curShop", shop);
		
		ModelAndView mav = new ModelAndView();
		//ModelAndView mav = new ModelAndView("redirect:/detail？shopItem="+shop);
		
		mav.addObject("current_user", user);
		mav.addObject("current_shop", curShop);
		mav.setViewName("shop_info");
		
		
		return mav;
		
	}
	
	
	
	

	//2.加载shop详细信息
	@RequestMapping(value = "/detail",method = {RequestMethod.GET,RequestMethod.POST })
	@ResponseBody
	public ModelAndView initDetail(HttpServletRequest request, HttpServletResponse response){
		
		ModelAndView mav = new ModelAndView();
		SysUser user = null;
		
		try{
			
		    user= (SysUser)request.getSession().getAttribute("currentuser"); 
		    shopService.deleteTrack(user.getId(),curShop.getId());
			shopService.insertTrack(user.getId(),curShop.getId());
			mav.addObject("current_user", user);
			mav.addObject("shopItem",curShop);
			String attributeStr = JsonUtils.ObjectToJson(curShop.getAttribute());
			mav.addObject("shopAttr",attributeStr);
			System.out.println("!!!!!!!!!!name="+curShop.getName());
			mav.setViewName("shop_info");
			return mav;
		}catch(Exception e){
			
			String attributeStr = JsonUtils.ObjectToJson(curShop.getAttribute());
			
			mav.addObject("current_user", user);
			mav.addObject("shopItem",curShop);
			mav.addObject("shopAttr",attributeStr);
			System.out.println("!!!!!!!!!!name="+curShop.getName());
			mav.setViewName("shop_info");
			return mav;
		}	
	}
	
	//3.添加评论
	@RequestMapping(value = "/makeReview",method = {RequestMethod.GET ,RequestMethod.POST })
	@ResponseBody
	public List<Review> makeReview(@RequestParam(value="business_id") String business_id,
							@RequestParam(value="user_id")String user_id,
							@RequestParam(value="user_name")String user_name,
							@RequestParam(value="stars") int stars,
							@RequestParam(value="text") String text,
							HttpServletRequest request, HttpServletResponse response){ 
		
		System.out.println("user是"+user_id);
		
		Review review = new Review();
		review.setId(UUID.randomUUID().toString());
		review.setBusiness_id(business_id);
		review.setUser_id(user_id);
		review.setStars(stars);
		review.setText(text);
		review.setUser_name(user_name);
		
		shopService.addReview(review);
		List<Review> newReviewList = new ArrayList<Review>();
		newReviewList = shopService.getReviewList(business_id);
		
	    return newReviewList;
	}
	
	//4.给评论点赞
	@RequestMapping(value = "/changeReviewClick",method = {RequestMethod.GET ,RequestMethod.POST })
	@ResponseBody
	public boolean changeReviewClick(String type,
								 String user_id,
								 String review_id,
								 String business_id,
								 int isPick,
								 HttpServletRequest request, HttpServletResponse response){
		
		boolean curValue = true;
			
		shopService.updateReview(review_id,type,isPick);
		
		try{	
			shopService.addUserReview(user_id,review_id,type,isPick);
		}catch(Exception e){
			shopService.updateUserReview(user_id,review_id,type,isPick);
			
		}

	    return curValue;
	}
	
	
	
	//========================================================================
	//特别餐厅
	@RequestMapping(value = "/special",method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView specialShopGrid(HttpServletRequest request, HttpServletResponse response){
		SysUser user= (SysUser)request.getSession().getAttribute("currentuser"); 
		ModelAndView mav = new ModelAndView();	
		shopList = shopService.getRestaurant(61, 100);
		
		System.out.println("一共有"+shopList.size());
		
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
		mav.setViewName("restaurant_special");	
		
		System.out.println("一共有"+originShopList.size());
		return mav;
		
	}

}
	
