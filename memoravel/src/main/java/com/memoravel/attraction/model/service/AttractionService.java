package com.memoravel.attraction.model.service;

import com.memoravel.attraction.dto.Attraction;

public interface AttractionService {
	public Attraction[] Inquire(String dest, String keyword, String category);
}
