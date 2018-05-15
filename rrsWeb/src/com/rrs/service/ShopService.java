package com.rrs.service;

import java.util.List;
import com.rrs.pojo.Restaurant;

public interface ShopService {
	
	List<Restaurant> getRestaurant(int start,int end);
	List<Restaurant> getRestaurantSearch(String key);
    List<String> getRestaurantImg(String shop_id);
	
	int getRestaurantNum();
	
	int getRestaurantSearchNum(String key);
	
	//排序
	List<Restaurant> getSortByReview(List<Restaurant> shopList);
	List<Restaurant> getSortByStars(List<Restaurant> shopList);
	List<Restaurant> getSortByDefault(List<Restaurant> shopList);
	
	//筛选距离定位点指定距离的饭店
	List<Restaurant> getRestaurantByDistanceA1(double lat,double lon,int distance);
	List<Restaurant> getRestaurantByDistanceA2(double lat,double lon,int distance1,int distance2);
	List<Restaurant> getRestaurantByDistanceA3(double lat,double lon,int distance);
	
	//筛选距离定位点指定距离的饭店(按照韦嘉琦要求所改)
    void GetDistance(double lat, double lon,List<Restaurant> shopList);
	List<Restaurant> getRestaurantByDistanceB(List<Restaurant> shopList);
	Restaurant getRestaurantById(String business_id);
	public List<Restaurant> getRestaurantByCate();
	
	
}
