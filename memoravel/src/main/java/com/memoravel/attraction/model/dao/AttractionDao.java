package com.memoravel.attraction.model.dao;
import java.sql.SQLException;
import java.util.List;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.util.DBUtil;

public interface AttractionDao {
	public List<Attraction> getAttractions(int sidoCode, String keyword, String category)throws SQLException;
	public List<Attraction> getAttractions(String keyword)throws SQLException;
	public int getSidoCode(String dest) throws SQLException;
	
	
}
