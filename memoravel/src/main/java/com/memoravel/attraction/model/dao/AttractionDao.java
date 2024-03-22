package com.memoravel.attraction.model.dao;
import java.sql.SQLException;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.util.DBUtil;

public interface AttractionDao {
	public Attraction[] getAttractions(int sidoCode, String keyword, String category);
	public int getSidoCode(String dest) throws SQLException;
	
	
}
