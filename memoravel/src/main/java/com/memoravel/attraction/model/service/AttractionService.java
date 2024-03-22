package com.memoravel.attraction.model.service;

import java.sql.SQLException;
import java.util.List;

import com.memoravel.attraction.dto.Attraction;

public interface AttractionService {
	public List<Attraction> Inquire(String dest, String keyword, String category) throws SQLException;
	public List<Attraction> Inquire(String keyword) throws SQLException;
}
