package com.memoravel.attraction.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.member.dto.Member;
import com.memoravel.util.*;

public class AttractionDaoImpl implements AttractionDao {
	DBUtil dbUtil = DBUtil.getInstance();

	@Override
	public int getSidoCode(String dest) throws SQLException {
		String sql = "select sido_code "
				+ "from "
				+ "sido "
				+ "where 1=1 and "
				+ "sido_name=?"
				+ ";";
		
		try (
				//2. DB 연결
				Connection conn = dbUtil.getConnection();
				//3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, dest);
			try(
					ResultSet rs = pstmt.executeQuery();){
				//4. 조회 데이터 파싱
				if(rs.next()) {
					int sidoCode = Integer.parseInt(rs.getString("sido_code"));
					return sidoCode;
				}
				return -1;
			}
		}
	}

	@Override
	public Attraction[] getAttractions(int sidoCode, String keyword, String category) {
		String sql = "select * "
				+ "from "
				+ "attraction_info "
				+ "where 1=1 and "
				+ "sidoCode=? and "
				+ "title like ? "
				+ ";";
		
		try (
				//2. DB 연결
				Connection conn = dbUtil.getConnection();
				//3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, dest);
			try(
					ResultSet rs = pstmt.executeQuery();){
				//4. 조회 데이터 파싱
				if(rs.next()) {
					int sidoCode = Integer.parseInt(rs.getString("sido_code"));
					return sidoCode;
				}
				return -1;
			}
		}
		
		
	}

}
