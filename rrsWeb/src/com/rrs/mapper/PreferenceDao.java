package com.rrs.mapper;

import java.util.List;

public interface PreferenceDao {

	List<Integer> selectById(int userId);
	void insertcategory(int userId, int categoryId);
	void deletecategory(int userId);

}
