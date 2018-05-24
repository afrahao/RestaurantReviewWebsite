package com.rrs.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rrs.pojo.Attribute;
import com.rrs.pojo.Restaurant;
import com.rrs.pojo.Review;

public interface ShopDao {

	public List<Restaurant> getRestaurant(int start,int end);
	public List<Restaurant> getRestaurantByCate();
	public List<Restaurant> getRestaurantByFavor(@Param("favor")int[] favor);
	public List<Restaurant> getRestaurantSearch(String key);
	public List<String> getRestaurantImg(String shop_id);
	public int getRestaurantNum();
	public int getRestaurantSearchNum(String key);
	public List<Restaurant> getRestaurantByDistance1(double lat,double lon,int distance);
	public List<Restaurant> getRestaurantByDistance2(double lat,double lon,int distance1,int distance2);
	public List<Restaurant> getRestaurantByDistance3(double lat,double lon,int distance);
	public Restaurant getRestaurantById(String business_id);
	

	public List<Attribute> getAttributes(String id);
	public List<String> getCategoryList(String id);
	public String getHourList(String id);
	public List<Review> getReviewList(String id);
	
	public void insertTrack(String userId, String userId2);
	public List<String> getTrackBusiness(String userId);
	public void deleteTrack(String userId, String businessId);
	public void insertReview(String id, String business_id, String user_id,int stars,String text);
	
	public void updateReview(String review_id, String type, int isPick);
	public void insertUserReview(String user_id, String review_id, String updateType, int isPick);
	public void updateUserReview(String user_id, String review_id, String updateType, int isPick);
}
