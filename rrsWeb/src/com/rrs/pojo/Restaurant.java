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
	String hours;
	
	String img = "http://47.95.10.11/FilteredPhoto/";
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
	public String getHours() {
		return hours;
	}
	public void setHours(String hours) {
		this.hours = hours;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = this.img + img;
		this.img = this.img + ".jpg";
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
	
	
	
}


