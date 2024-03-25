package com.memoravel.attraction.model.service;

import java.sql.SQLException;
import java.util.List;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.attraction.dto.AttractionDetail;

public interface AttractionService {
	public List<Attraction> Inquire(String dest, String keyword, int category) throws SQLException;
	public List<Attraction> Inquire(String keyword) throws SQLException;
	public AttractionDetail detail(int contentId) throws SQLException;
}
