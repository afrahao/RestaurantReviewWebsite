package com.rrs.mapper;

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
    
    //按名字搜索
    public List<Restaurant> getSearchName(String key);
    //按城市搜索
    public List<Restaurant> getSearchCity(String key);
    //按地址搜索
    public List<Restaurant> getSearchAddr(String key);
    //按标签搜索
    public List<Restaurant> getSearchTag(String key);
    
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
    
}
