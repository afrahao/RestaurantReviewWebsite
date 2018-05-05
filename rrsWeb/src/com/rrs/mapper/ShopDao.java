package com.rrs.mapper;

import java.util.List;

import com.rrs.pojo.Restaurant;

public interface ShopDao {

	public List<Restaurant> getRestaurant(int start,int end);
	public List<Restaurant> getRestaurantSearch(String key);
	public int getRestaurantNum();
	public int getRestaurantSearchNum(String key);
	public List<Restaurant> getRestaurantByDistance1(double lat,double lon,int distance);
	public List<Restaurant> getRestaurantByDistance2(double lat,double lon,int distance1,int distance2);
	public List<Restaurant> getRestaurantByDistance3(double lat,double lon,int distance);
}
