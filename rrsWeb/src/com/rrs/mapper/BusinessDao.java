package com.rrs.mapper;

import java.util.List;

import com.rrs.pojo.Business;

public interface BusinessDao {
	
	List<Business> selectBusinessByCate(int category_id);

}
