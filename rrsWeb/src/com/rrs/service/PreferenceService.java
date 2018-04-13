package com.rrs.service;

import java.util.List;

public interface PreferenceService {
	List<Integer> selectPreference(int integer);
	void insertPreference(int userId, int categoryId);
	void deletePreference(int userId);
}

