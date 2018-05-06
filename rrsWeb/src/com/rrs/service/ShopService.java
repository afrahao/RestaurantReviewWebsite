package com.rrs.service;

import java.util.List;
import com.rrs.pojo.Restaurant;

public interface ShopService {
	
	List<Restaurant> getRestaurant(int start,int end);
	List<Restaurant> getRestaurantSearch(String key);

	int getRestaurantNum();
	
	int getRestaurantSearchNum(String key);
	
	//排序
	List<Restaurant> getSortByReview(List<Restaurant> shopList);
	List<Restaurant> getSortByStars(List<Restaurant> shopList);
	
	//筛选距离定位点指定距离的饭店
	List<Restaurant> getRestaurantByDistance1(double lat,double lon,int distance);
	List<Restaurant> getRestaurantByDistance2(double lat,double lon,int distance1,int distance2);
	List<Restaurant> getRestaurantByDistance3(double lat,double lon,int distance);
}
