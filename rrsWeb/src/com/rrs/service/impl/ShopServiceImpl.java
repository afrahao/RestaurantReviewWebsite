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
	
}
