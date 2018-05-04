package com.rrs.service;

import java.util.List;
import com.rrs.pojo.Restaurant;

public interface ShopService {
	
	List<Restaurant> getRestaurant(int start,int end);
	List<Restaurant> getRestaurantSearch(String key);

	int getRestaurantNum();
	
	int getRestaurantSearchNum(String key);
	
}
