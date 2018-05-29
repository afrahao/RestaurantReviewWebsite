package com.rrs.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rrs.pojo.Attribute;
import com.rrs.pojo.Restaurant;
import com.rrs.pojo.Review;
import com.rrs.pojo.SearHot;

public interface ShopDao {

	public List<Restaurant> getRestaurant(int start,int end);
	public List<Restaurant> getRestaurantByCate();
	public List<Restaurant> getRestaurantByKind(int cateId);
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
	
	public void updateUseful(String review_id, int isPick);
	public void updateCool(String review_id, int isPick);
	public void updateFunny(String review_id, int isPick);
	
	public void insertUserReview(String user_id, String review_id, String updateType, int isPick);
	public void insertUserUseful(String user_id, String review_id, int isPick);
	public void insertUserCool(String user_id, String review_id, int isPick);
	public void insertUserFunny(String user_id, String review_id, int isPick);
	
	
	public void updateUserReview(String user_id, String review_id, String updateType, int isPick);
	public void updateUserUseful(String user_id, String review_id, int isPick);
	public void updateUserCool(String user_id, String review_id, int isPick);
	public void updateUserFunny(String user_id, String review_id, int isPick);
	
	
	
	//历史搜索
	public List<String> getSearchRec(String userid);
	//热门搜索
	public List<String> getSearchHot();
	
	//按名字搜索数目
	public int getSearchNumName(String key);
	//按城市搜索数目
    public int getSearchNumCity(String key);
    //按地址搜索数目
    public int getSearchNumAddr(String key);
    //按标签搜索数目
    public int getSearchNumTag(String key);
    //按default搜索数目test
    public int getSearchNumDefault(String key);
    
    
    
    
    //按名字搜索
    public List<Restaurant> getSearchName(String key);
    //按城市搜索
    public List<Restaurant> getSearchCity(String key);
    //按地址搜索
    public List<Restaurant> getSearchAddr(String key);
    //按标签搜索
    public List<Restaurant> getSearchTag(String key);
    
    //no label 搜索
    public List<Restaurant> getSearchDefault(String Key);
    
    
    //判断搜索记录是否存在于热门搜索表中
    public int isInhot(String key);
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
    
    //获得精选评论
    public List<Review> selectReview();

}
