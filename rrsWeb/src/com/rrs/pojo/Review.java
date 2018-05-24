package com.rrs.pojo;

import java.util.Date;

public class Review {
	String id;
	String business_id;
	String user_id;
	String user_name;
	int stars;
	Date date;
	String text;
	int useful;
	int funny;
	int cool;
	int useful_status;
	int funny_status;
	int cool_status;

	public int getUseful_status() {
		return useful_status;
	}
	public void setUseful_status(int useful_status) {
		this.useful_status = useful_status;
	}
	public int getFunny_status() {
		return funny_status;
	}
	public void setFunny_status(int funny_status) {
		this.funny_status = funny_status;
	}
	public int getCool_status() {
		return cool_status;
	}
	public void setCool_status(int cool_status) {
		this.cool_status = cool_status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBusiness_id() {
		return business_id;
	}
	public void setBusiness_id(String business_id) {
		this.business_id = business_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getStars() {
		return stars;
	}
	public void setStars(int stars) {
		this.stars = stars;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getUseful() {
		return useful;
	}
	public void setUseful(int useful) {
		this.useful = useful;
	}
	public int getFunny() {
		return funny;
	}
	public void setFunny(int funny) {
		this.funny = funny;
	}
	public int getCool() {
		return cool;
	}
	public void setCool(int cool) {
		this.cool = cool;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

}
