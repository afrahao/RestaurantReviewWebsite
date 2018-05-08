package com.rrs.service;

import java.util.List;

public interface PreferenceService {
	List<Integer> selectPreference(String id);
	void insertPreference(String userId, int categoryId);
	void deletePreference(String userId);
}

