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
	
}
