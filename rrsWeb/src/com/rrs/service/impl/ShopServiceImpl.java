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
	private static double EARTH_RADIUS = 6378.137;
	@Override
	public List<Restaurant> getRestaurant(int start,int end) {
		
		List<Restaurant>list = shopDao.getRestaurant(start,end);
		System.out.println("数据库取出"+list.size());
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
	public String getRestaurantImg(String shop_id) {
		
		return shopDao.getRestaurantImg(shop_id);
	}
	
	
	//按评论筛选
	@Override
	public List<Restaurant> getSortByReview(List<Restaurant> shopList) {
		List<Restaurant> sortList = new ArrayList<Restaurant>(shopList.size());
		
		for(int i = 0 ; i < shopList.size(); i ++){ 
			sortList.add(shopList.get(i).clone()); 
		}
		Collections.sort(sortList, new DescReviewComparator());
		return sortList;
	}

	//按星级筛选
	@Override
	public List<Restaurant> getSortByStars(List<Restaurant> shopList) {
		List<Restaurant> sortList = new ArrayList<Restaurant>(shopList.size());
		
		for(int i = 0 ; i < shopList.size(); i ++){ 
			sortList.add(shopList.get(i).clone()); 
		}
		Collections.sort(sortList, new DescStarsComparator());
		return sortList;
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistanceA1(double lat,double lon,int distance) {
		
		return shopDao.getRestaurantByDistance1(lat,lon,distance);
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistanceA2(double lat,double lon,int distance1,int distance2) {
		
		return shopDao.getRestaurantByDistance2(lat,lon,distance1,distance2);
	}
	
	//筛选距离定位点指定距离的饭店
	@Override
	public List<Restaurant> getRestaurantByDistanceA3(double lat,double lon,int distance) {
		
		return shopDao.getRestaurantByDistance3(lat,lon,distance);
	}

	//距离筛选
	@Override
	public List<Restaurant> getRestaurantByDistanceB(List<Restaurant> shopList) {
		List<Restaurant> sortList = new ArrayList<Restaurant>(shopList.size());
		
		for(int i = 0 ; i < shopList.size(); i ++){ 
			sortList.add(shopList.get(i).clone()); 
		}
		
		Collections.sort(sortList, new AscDistanceComparator());
		return sortList;
	}

	public void GetDistance(double lat, double lon,List<Restaurant> shopList){
		for(int i=0;i<shopList.size();i++){
			double distance=distance(lat,lon,shopList.get(i).getLatitude(),shopList.get(i).getLongitude());
			shopList.get(i).setDistance(distance);
			System.out.println(distance);
		}
		
	}
	
	
	//计算两个经纬度之间的距离
	private double distance(double lat1, double lng1, float lat2, float lng2){
		double radLat1 = lat1 * Math.PI / 180.0;
        double radLat2 = lat2 * Math.PI / 180.0;
        double difference = radLat1 - radLat2;
        double mdifference = lng1 * Math.PI / 180.0 - lng2 * Math.PI / 180.0;
        double distance = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(difference / 2), 2)
                + Math.cos(radLat1) * Math.cos(radLat2)
                * Math.pow(Math.sin(mdifference / 2), 2)));
        distance = distance * EARTH_RADIUS;
        distance = Math.round(distance)*1000;
        return distance;
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


//按距离升序
class AscDistanceComparator implements Comparator<Restaurant> {
	@Override
	public int compare(Restaurant r1, Restaurant r2) {
		if (r1.getDistance()<r2.getDistance())
			return -1;
		else if(r1.getDistance()>r2.getDistance())
			return 1;
		else
			return 0;
	}
}

