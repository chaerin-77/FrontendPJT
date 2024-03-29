package com.memoravel.attraction.model.service;

import java.sql.SQLException;
import java.util.List;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.attraction.dto.AttractionDetail;
import com.memoravel.attraction.model.dao.*;

public class AttractionServiceImpl implements AttractionService {
	
	private AttractionDao attractionDao = new AttractionDaoImpl();
	
	@Override
	public List<Attraction> Inquire(String dest, String keyword, int category) throws SQLException {
		int sidoCode = attractionDao.getSidoCode(dest);
		return attractionDao.getAttractions(sidoCode, keyword, category);
	}

	@Override
	public List<Attraction> Inquire(String keyword) throws SQLException {
		return attractionDao.getAttractions(keyword);
	}

	@Override
	public AttractionDetail detail(int contentId) throws SQLException {
		return attractionDao.detail(contentId);
	}
}
