package com.rrs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface PreferenceDao {

	List<Integer> selectById(String userId);
	void insertcategory(@Param("userId")String userId, @Param("categoryId") int categoryId);
	void deletecategory(@Param("userId")String userId);

}
