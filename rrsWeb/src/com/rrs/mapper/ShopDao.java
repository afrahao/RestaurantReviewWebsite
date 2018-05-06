package com.rrs.mapper;

import java.util.List;

import com.rrs.pojo.Business;
import com.rrs.pojo.Restaurant;

public interface ShopDao {

	public List<Restaurant> getRestaurant(int start,int end);
	public List<Restaurant> getRestaurantSearch(String key);
	List<Restaurant> selectBusinessByCate(int category_id);
	public int getRestaurantNum();
	public int getRestaurantSearchNum(String key);
	

}
