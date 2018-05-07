package com.rrs.service;

import java.util.List;

public interface PreferenceService {
	List<Integer> selectPreference(int id);
	void insertPreference(int userId, int categoryId);
	void deletePreference(int userId);
}

