package com.rrs.pojo;

public class Statics {
	private int networkNum;
	private int phoneNum;
	private int educationNum;
	private int eBusinessNum;
	private int globalMarketingNum;
	private int hotelNum;
	private int landlordNum;
	private int normalUserNum;
	private int VIPUserNum;
	public int getNetworkNum() {
		return networkNum;
	}
	public void setNetworkNum(int networkNum) {
		this.networkNum = networkNum;
	}
	public int getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}
	public int getEducationNum() {
		return educationNum;
	}
	public void setEducationNum(int educationNum) {
		this.educationNum = educationNum;
	}
	public int geteBusinessNum() {
		return eBusinessNum;
	}
	public void seteBusinessNum(int eBusinessNum) {
		this.eBusinessNum = eBusinessNum;
	}
	public int getGlobalMarketingNum() {
		return globalMarketingNum;
	}
	public void setGlobalMarketingNum(int globalMarketingNum) {
		this.globalMarketingNum = globalMarketingNum;
	}
	public int getHotelNum() {
		return hotelNum;
	}
	public void setHotelNum(int hotelNum) {
		this.hotelNum = hotelNum;
	}
	public int getLandlordNum() {
		return landlordNum;
	}
	public void setLandlordNum(int landlordNum) {
		this.landlordNum = landlordNum;
	}
	public int getNormalUserNum() {
		return normalUserNum;
	}
	public void setNormalUserNum(int normalUserNum) {
		this.normalUserNum = normalUserNum;
	}
	public int getVIPUserNum() {
		return VIPUserNum;
	}
	public void setVIPUserNum(int vIPUserNum) {
		VIPUserNum = vIPUserNum;
	}
	
	@Override
	public String toString() {
		return "Statics [networkNum=" + networkNum + ", phoneNum=" + phoneNum + ", educationNum=" + educationNum
				+ ", eBusinessNum=" + eBusinessNum + ", globalMarketingNum=" + globalMarketingNum + ", hotelNum="
				+ hotelNum + ", landlordNum=" + landlordNum + ", normalUserNum=" + normalUserNum + ", VIPUserNum="
				+ VIPUserNum + "]";
	}
	
	

}
