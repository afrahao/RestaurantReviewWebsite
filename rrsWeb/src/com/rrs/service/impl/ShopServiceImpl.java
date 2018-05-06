package com.rrs.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.ShopDao;
import com.rrs.pojo.Restaurant;
import com.rrs.service.ShopService;


@Service
public class ShopServiceImpl implements ShopService{

	@Autowired
    private ShopDao shopDao;
	
	@Override
	public List<Restaurant> getRestaurant(int start,int end) {
		
		return shopDao.getRestaurant(start,end);
	}
	
	@Override
	public int getRestaurantNum(){
		return shopDao.getRestaurantNum();
	}

	@Override
	public int getRestaurantSearchNum(String key) {
		
		return shopDao.getRestaurantSearchNum(key);
	}

	@Override
	public List<Restaurant> getRestaurantSearch(String key) {
		
		return shopDao.getRestaurantSearch(key);
	}

	@Override
	public List<Restaurant> getSortByReview(List<Restaurant> shopList) {
		
//		Collections.sort(shopList, reviewComparator);
		
		
		Collections.sort(shopList, new DescReviewComparator());
		for(int i = 0 ; i < shopList.size() ; i ++)
			System.out.println(shopList.get(i).getReview_count());
		
		return shopList;
	}

	@Override
	public List<Restaurant> getSortByStars(List<Restaurant> shopList) {
//		Collections.sort(shopList, starsComparator);
		
		Collections.sort(shopList, new DescStarsComparator());
		for(int i = 0 ; i < shopList.size() ; i ++)
			System.out.println(shopList.get(i).getStars());
		return shopList;
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistance1(double lat,double lon,int distance) {
		
		return shopDao.getRestaurantByDistance1(lat,lon,distance);
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistance2(double lat,double lon,int distance1,int distance2) {
		
		return shopDao.getRestaurantByDistance2(lat,lon,distance1,distance2);
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistance3(double lat,double lon,int distance) {
		
		return shopDao.getRestaurantByDistance3(lat,lon,distance);
	}

}

//按星级降序
class DescStarsComparator implements Comparator<Restaurant> {
	
	@Override
	public int compare(Restaurant o1, Restaurant o2) {
		float s1 = o1.getStars();
		float s2 = o2.getStars();
		
		if (s1 < s2) {
			return 1;
		} else if (s1 > s2) {
			return -1;
		} else {
			return 0;
		}
	}
	
	
}
//按评论数降序
class DescReviewComparator implements Comparator<Restaurant> {
	@Override
	public int compare(Restaurant r1, Restaurant r2) {
		return r2.getReview_count() - r1.getReview_count();
	}
}

