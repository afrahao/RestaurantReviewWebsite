package com.rrs.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rrs.mapper.ShopDao;
import com.rrs.pojo.Attribute;

import com.rrs.pojo.Restaurant;
import com.rrs.pojo.Review;
import com.rrs.service.ShopService;
import com.rrs.util.JsonUtils;


@Service
public class ShopServiceImpl implements ShopService{
	
	
	@Autowired
    private ShopDao shopDao;
	private List<Restaurant> reviewsList = new ArrayList<Restaurant>();
	private static double EARTH_RADIUS = 6378.137;
	@Override
	public List<Restaurant> getRestaurant(int start,int end) {
		
		List<Restaurant>list = shopDao.getRestaurant(start,end);
		
		for(int i=0; i < list.size(); i++){
			list.get(i).setImg(getRestaurantImg(list.get(i).getId()));
		}
		
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
	public List<String> getRestaurantImg(String shop_id) {
		List<String> imgList = new ArrayList<String>();
		imgList = shopDao.getRestaurantImg(shop_id);
		if(imgList.size() == 0){
			imgList.add("http://47.95.10.11/FilteredPhoto/null.jpg");
		} else {
			for(int i = 0 ; i < imgList.size(); i ++)
				imgList.set(i, "http://47.95.10.11/FilteredPhoto/"+imgList.get(i)+".jpg");
		}
		
		
		return imgList;
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
	
	private List<Review> getReviewList(String id) {
		// TODO Auto-generated method stub
		List<Review> reviewList = new ArrayList<Review>();
		reviewList = shopDao.getReviewList(id);
		return reviewList;
	}
	
	private String getHours(String id){
		
		String hoursString = shopDao.getHourList(id);
		String hours = hoursString.replaceAll("u'", "'");
		String hourStr = hours.replaceAll("\'", "\"");
		
		return hourStr;
	}

	/*private List<Hours> getHoursList(String id) {
		// TODO Auto-generated method stub
		List<Hours> hoursList = new ArrayList<Hours>();
		Hours shopHours = new Hours();
		String hoursString = shopDao.getHourList(id);
		String hours = hoursString.replaceAll("u'", "'");
		String hourStr = hours.replaceAll("\'", "\"");
		System.out.println(hourStr);
		
		//hours = "['Monday': {'close': '17:00', 'open': '06:00'}, 'Tuesday': {'close': '17:00', 'open': '06:00'}, 'Friday': {'close': '17:00', 'open': '06:00'}, 'Wednesday': {'close': '17:00', 'open': '06:00'}, 'Thursday': {'close': '17:00', 'open': '06:00'}, 'Sunday': {'close': '15:00', 'open': '06:00'}, 'Saturday': {'close': '17:00', 'open': '06:00'}]";
		shopHours = JsonUtils.jsonToPojo(hourStr,Hours.class);
	
		
		Hours hour = new Hours();
		hour.setDate("Monday");
		hour.setOpen(hours.substring(44, 49));
		hour.setClose(hours.substring(25, 30));
		hoursList.add(hour); 
		hour.setDate("Tuesday");
		hour.setOpen(hours.substring(97, 102));
		hour.setClose(hours.substring(78, 83));
		hoursList.add(hour); 
		hour.setDate("Friday");//28ge 
		hour.setOpen(hours.substring(149, 154));
		hour.setClose(hours.substring(130, 135));
		hoursList.add(hour); 
		hour.setDate("Wednesday");
		hour.setOpen(hours.substring(204, 209));
		hour.setClose(hours.substring(185, 190));
		hoursList.add(hour); 
		hour.setDate("Thursday");
		hour.setOpen(hours.substring(258, 263));
		hour.setClose(hours.substring(239, 244));
		hoursList.add(hour); 
		hour.setDate("Sunday");
		hour.setOpen(hours.substring(310, 315));
		hour.setClose(hours.substring(291, 296));
		hoursList.add(hour); 
		hour.setDate("Saturday");
		hour.setOpen(hours.substring(364, 369));
		hour.setClose(hours.substring(345, 350));
		hoursList.add(hour); 
		return hoursList;
	}*/

	private List<String> getCategoryList(String id) {
		// TODO Auto-generated method stub
		List<String> categoryList = new ArrayList<String>();
		categoryList = shopDao.getCategoryList(id);
		return categoryList;
	}

	private List<Attribute> getAttributeList(String id) {
		// TODO Auto-generated method stub
		List<Attribute> attributes= new ArrayList<Attribute>();
		attributes = shopDao.getAttributes(id);
		return attributes;
	}

	//通过ID找商店
	@Override
	public Restaurant getRestaurantById(String id) {
		// TODO Auto-generated method stub
		Restaurant restaurant = new Restaurant();
		restaurant = shopDao.getRestaurantById(id);
		
		List<Attribute> attribute = new ArrayList<Attribute>();
		List<String> category = new ArrayList<String>();
		String hours = "";
		List<String> img = new ArrayList<String>();
		List<Review> reviewList = new ArrayList<Review>();
		
		attribute = getAttributeList(id);
		category = getCategoryList(id);
		//hours = getHoursList(id);
		hours = getHours(id);
		img = getRestaurantImg(id);
		reviewList = getReviewList(id);
		
		restaurant.setAttribute(attribute);
		restaurant.setCategory(category);
		restaurant.setHours(hours);
		restaurant.setImg(img);
		restaurant.setReviewList(reviewList);
		return restaurant;
	}
	
	@Override
	public void insertTrack(String userId, String businessId) {
		// TODO Auto-generated method stub
		shopDao.insertTrack(userId,businessId);
	}

	@Override
	public List<String> getTrackBusiness(String userId) {
		// TODO Auto-generated method stub
		List<String> businessIdList = new ArrayList<String>();
		businessIdList = shopDao.getTrackBusiness(userId);
		return businessIdList;
	}

	@Override
	public void deleteTrack(String userId, String businessId) {
		// TODO Auto-generated method stub
		shopDao.deleteTrack(userId,businessId);
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

