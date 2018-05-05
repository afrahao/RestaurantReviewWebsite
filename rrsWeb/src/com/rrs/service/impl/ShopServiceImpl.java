package com.rrs.service.impl;

import java.util.ArrayList;
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
		List<Restaurant> list = new ArrayList<Restaurant>();
		
		return list;
	}

	@Override
	public List<Restaurant> getSortByStars(List<Restaurant> shopList) {
		List<Restaurant> list = new ArrayList<Restaurant>();
		
		return list;
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
