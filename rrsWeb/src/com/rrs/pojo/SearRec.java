package com.rrs.pojo;

import java.sql.Timestamp;

public class SearRec {
	
	int id;
	String uid;
	String searKey;
	int count;
	Timestamp updatetime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getSearKey() {
		return searKey;
	}
	public void setSearKey(String searKey) {
		this.searKey = searKey;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Timestamp getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Timestamp updatetime) {
		this.updatetime = updatetime;
	}

}
