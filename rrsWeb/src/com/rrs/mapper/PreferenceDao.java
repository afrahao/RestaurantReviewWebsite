package com.rrs.mapper;

import java.util.List;

public interface PreferenceDao {

	List<Integer> selectById(int userId);
	Object insertcategory(int userId, int categoryId);

}
