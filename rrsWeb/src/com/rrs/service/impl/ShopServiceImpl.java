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
import com.rrs.pojo.SearHot;
import com.rrs.pojo.SysUser;
import com.rrs.service.PreferenceService;
import com.rrs.service.ShopService;
import com.rrs.util.JsonUtils;


@Service
public class ShopServiceImpl implements ShopService{
	
	
	@Autowired
    private ShopDao shopDao;
	@Autowired
	private PreferenceService preferenceService;
	
	private static double EARTH_RADIUS = 6378.137;
	@Override
	public List<Restaurant> getRestaurant(int start,int end) {
		
		List<Restaurant>list = shopDao.getRestaurant(start,end);
		
		for(int i=0; i < list.size(); i++){
			list.get(i).setImg(getRestaurantImg(list.get(i).getId()));
		}
		Collections.sort(list, new DescReviewComparator());
		for(int i = 0 ; i < list.size() ; i ++)
			list.get(i).setReviewsRank(i);
		Collections.sort(list, new DescAllComparator());
		return list;
	}
	
	//根据喜好标签取出商家
	public List<Restaurant> getRestaurantByFavor(String id) {
		//获取用户喜好标签
		List<Integer>  f = preferenceService.selectPreference(id);
		if(f.size()!=0)
		{
			int[] favor = new int[f.size()];
			for(int i = 0;i < f.size();i++)
			{
				favor[i]=f.get(i);
			}
			//获取对应标签的商家列表
			List<Restaurant>list = shopDao.getRestaurantByFavor(favor);
			//综合排序
			return getSortByDefault(list);
		}
		return getRestaurant(0, 200);
	}
	
	//取出首页指定种类的商家列表
	public List<Restaurant> getRestaurantByCate() {	
		List<Restaurant>list = shopDao.getRestaurantByCate();
		return getSortByDefault(list);
	}
		
	//取出首页指定种类的商家列表
	public List<Restaurant> getRestaurantByKind(int cateId) {	
		List<Restaurant>list = shopDao.getRestaurantByKind(cateId);
		return getSortByDefault(list);
	}
	
	@Override
	public int getRestaurantNum(){
		return shopDao.getRestaurantNum();
	}

	@Override
	public int getRestaurantSearchNum(String key, String way) {
		
		int sum = 0;
		
		switch(way){
		case "0":
			//search by name
			sum = shopDao.getSearchNumName(key);
			break;
		case "1":
			//search by city
			sum = shopDao.getSearchNumCity(key);
			break;
		case "2":
			//search by address
			sum = shopDao.getSearchNumAddr(key);
			break;
		case "3":
			//search by tag
			sum = shopDao.getSearchNumTag(key);
			break;
		default:
			break;	
		}
		
		return sum;
		
	}

	@Override
	public List<Restaurant> getRestaurantSearch(String key, String way) {
		
		List<Restaurant> shopList = new ArrayList<Restaurant>();
		
		switch(way){
		case "0":
			//search by name
			shopList = shopDao.getSearchName(key);
			break;
		case "1":
			//search by city
			shopList = shopDao.getSearchCity(key);
			break;
		case "2":
			//search by address
			shopList = shopDao.getSearchAddr(key);
			break;
		case "3":
			//search by tag
			shopList = shopDao.getSearchTag(key);
			break;
		default:
			break;	
		}
		
		return shopList;
	}
	
	
	@Override
	public List<String> getRestaurantImg(String shop_id) {
		List<String> imgList = new ArrayList<String>();
		imgList = shopDao.getRestaurantImg(shop_id);
		if(imgList.size() == 0){
			imgList.add("http://47.95.10.11/FilteredPhoto/null.jpg");
		} else {
			for(int i = 0 ; i < imgList.size(); i ++)
			{
				String path = imgList.get(i);
				String check = path.substring(path.length()-4,path.length());
				if(!check.equals(".jpg"))
					imgList.set(i, "http://47.95.10.11/FilteredPhoto/"+path+".jpg");
			}
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
	
	//综合排序
	public List<Restaurant> getSortByDefault(List<Restaurant> shopList) {
		List<Restaurant> list = new ArrayList<Restaurant>(shopList.size());
		
		for(int i = 0 ; i < shopList.size(); i ++){ 
			list.add(shopList.get(i).clone()); 
		}
		for(int i=0; i < list.size(); i++){
			list.get(i).setImg(getRestaurantImg(list.get(i).getId()));
		}
		Collections.sort(list, new DescReviewComparator());
		for(int i = 0 ; i < list.size() ; i ++)
			list.get(i).setReviewsRank(i);
		Collections.sort(list, new DescAllComparator());
		return list;
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
	
	
	//获得用户历史搜索记录
	public List<String> getSearRec(SysUser user) {
		// TODO Auto-generated method stub
		List<String> searRec = new ArrayList<String>();
		searRec = shopDao.getSearchRec(user.getId());
		
		return searRec;
	}
	
	//获得热门搜索记录
	public List<String> getSearHot(){
		List<String> searhot = new ArrayList<String>();
		searhot = shopDao.getSearchHot();
		
		return searhot;
	}

	
	//判断搜索记录是否存在于热门搜索表中
	@Override
	public int isInhot(String key) {
		// TODO Auto-generated method stub
		return shopDao.isInhot(key);
	}

	//更新热门搜索表
	@Override
	public void insertHot(String key) {
		// TODO Auto-generated method stub
		shopDao.insertHot(key);
	}


	//热门搜索表count++
	@Override
	public void modifyHot(String key) {
		// TODO Auto-generated method stub
		shopDao.modifyHot(key);
	}

	//用户搜索记录表插入数据
	@Override
	public void insertRec(String key, String userid) {
		// TODO Auto-generated method stub
		shopDao.insertRec(key, userid);
	}

	//判断用户搜索记录
	@Override
	public int searBefore(String key, String uid) {
		// TODO Auto-generated method stub
		return shopDao.searBefore(key, uid);
	}


	//在搜索记录表中更新纪录
	@Override
	public void modifyRec(String key, String uid) {
		// TODO Auto-generated method stub
		shopDao.modifyRec(key, uid);
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
		double all1 = (5-s1)*2 + r1*0.5;
		double all2 = (5-s2)*2 + r2*0.5;
		
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

