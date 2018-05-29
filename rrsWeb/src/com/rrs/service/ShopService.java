package com.rrs.service;

import java.util.List;
import com.rrs.pojo.Restaurant;

import com.rrs.pojo.Review;

import com.rrs.pojo.SearHot;
import com.rrs.pojo.SysUser;


public interface ShopService {
	
	List<Restaurant> getRestaurant(int start,int end);
	List<Restaurant> getRestaurantSearch(String key,String way);
    List<String> getRestaurantImg(String shop_id);
	
	int getRestaurantNum();
	
	int getRestaurantSearchNum(String key, String way);
	
	//排序
	List<Restaurant> getSortByReview(List<Restaurant> shopList);
	List<Restaurant> getSortByStars(List<Restaurant> shopList);
	List<Restaurant> getSortByDefault(List<Restaurant> shopList);
	//根据用户喜好标签返回商家
	List<Restaurant> getRestaurantByFavor(String id);
	//根据指定种类返回商家
	List<Restaurant> getRestaurantByCate();
	List<Restaurant> getRestaurantByKind(int cateId);
	
	//筛选距离定位点指定距离的饭店
	List<Restaurant> getRestaurantByDistanceA1(double lat,double lon,int distance);
	List<Restaurant> getRestaurantByDistanceA2(double lat,double lon,int distance1,int distance2);
	List<Restaurant> getRestaurantByDistanceA3(double lat,double lon,int distance);
	
	//筛选距离定位点指定距离的饭店(按照韦嘉琦要求所改)
    void GetDistance(double lat, double lon,List<Restaurant> shopList);
	List<Restaurant> getRestaurantByDistanceB(List<Restaurant> shopList);
	Restaurant getRestaurantById(String business_id);
	
	void insertTrack(String id, String id2);
	List<String> getTrackBusiness(String id);
	void deleteTrack(String id, String id2);
	List<Review> getReviewList(String user_id);
	void addReview(Review review);
	
	void updateReview(String review_id, String type, int isPick);
	void addUserReview(String user_id, String review_id, String updateType, int isPick) throws Exception;
	void updateUserReview(String user_id, String review_id, String updateType, int isPick);
	
	//历史搜索记录
	List<String> getSearRec(SysUser user);
	//热门搜索记录
	List<String> getSearHot();
	
	//判断搜索记录是否存在于热门搜索表中
	int isInhot(String key);
	//更新热门搜索表
    public void insertHot(String key); 
    //热门搜索表count++
    public void modifyHot(String key);
    //用户搜索记录表插入数据
    public void insertRec(String key, String userid);
    
    //判断用户搜索记录
    public int searBefore(String key, String uid);
    
    //在搜索记录表中更新纪录
    public void modifyRec(String key, String uid);
    
}
