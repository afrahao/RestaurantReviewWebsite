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
	private List<Restaurant> reviewsList = new ArrayList<Restaurant>();
	
	@Override
	public List<Restaurant> getRestaurant(int start,int end) {
		
		List<Restaurant>list = shopDao.getRestaurant(start,end);
		Collections.sort(list, new DescReviewComparator());
		reviewsList = list;
		for(int i = 0 ; i < list.size() ; i ++)
			list.get(i).setReviewsRank(i);
		Collections.sort(list, new DescAllComparator());
		return list;
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

		return reviewsList;
	}

	@Override
	public List<Restaurant> getSortByStars(List<Restaurant> shopList) {
		Collections.sort(shopList, new DescStarsComparator());
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

//综合排序
class DescAllComparator implements Comparator<Restaurant> {
	
	@Override
	public int compare(Restaurant o1, Restaurant o2) {
		float s1 = o1.getStars();
		int r1 = o1.getReviewsRank();
		float s2 = o2.getStars();
		int r2 = o2.getReviewsRank();
		double all1 = (5-s1)*0.5 + r1*0.5;
		double all2 = (5-s2)*0.5 + r2*0.5;
		
		if (all1 < all2) {
			return -1;
		} else if (all1 > all2) {
			return 1;
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

