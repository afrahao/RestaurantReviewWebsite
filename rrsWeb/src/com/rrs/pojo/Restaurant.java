package com.rrs.pojo;

import java.util.Comparator;
import java.util.List;

public class Restaurant implements Cloneable,Comparable<Restaurant>{

	String id;
	String name;
	String neighborhood;
	String address;
	String city;
	String state;
	float latitude;
	float longitude;
	float stars;
	int review_count;
	int is_open;
	int category_id;
	
	int reviewsRank = 0;
	double distance;
	int price_range = 1;
	String hours;
	
	List<Review> reviewList;
	List<String> category;
	
	List<String> img;
	List<Attribute> attribute;

	
	
	
	
	public List<String> getImg() {
		return img;
	}
	public void setImg(List<String> img) {
		this.img = img;
	}
	public List<Attribute> getAttribute() {
		return attribute;
	}
	public void setAttribute(List<Attribute> attribute) {
		this.attribute = attribute;
	}
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public List<String> getCategory() {
		return category;
	}
	public void setCategory(List<String> category) {
		this.category = category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNeighborhood() {
		return neighborhood;
	}
	public void setNeighborhood(String neighborhood) {
		this.neighborhood = neighborhood;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public float getLatitude() {
		return latitude;
	}
	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
	public float getLongitude() {
		return longitude;
	}
	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}
	public float getStars() {
		return stars;
	}
	public void setStars(float stars) {
		this.stars = stars;
	}
	public int getReview_count() {
		return review_count;
	}
	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}
	public int getIs_open() {
		return is_open;
	}
	public void setIs_open(int is_open) {
		this.is_open = is_open;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	

	public int getReviewsRank() {
		return reviewsRank;
	}
	public void setReviewsRank(int reviewsRank) {
		this.reviewsRank = reviewsRank;
	}
	
	
	public double getDistance() {
		return distance;
	}
	public void setDistance(double distance) {
		this.distance = distance;
	}
	
	public List<Review> getReviewList() {
		return reviewList;
	}
	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}    
	@Override  
    public boolean equals(Object obj) {  
        if (obj instanceof Restaurant) {  
            if (this.getId().equals(((Restaurant) obj).getId())) {  
                return true;  
            }  
            else {  
                return false;  
            }  
        }  
        return false;  
    }  

	@Override
	public Restaurant clone(){    
		Restaurant o=null;    
		try    
		{    
			o=(Restaurant)super.clone();//Object 中的clone()识别出你要复制的是哪一个对象。    
		} catch(CloneNotSupportedException e){    
			System.out.println(e.toString());    
		}    
		return o;    
    }
	
	@Override
	public int compareTo(Restaurant arg0) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int getPrice_range() {
		return price_range;
	}
	public void setPrice_range(int price_range) {
		this.price_range = price_range;
	}
	
	
}


