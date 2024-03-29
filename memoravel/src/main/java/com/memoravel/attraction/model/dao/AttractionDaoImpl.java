package com.memoravel.attraction.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.memoravel.attraction.dto.Attraction;
import com.memoravel.attraction.dto.AttractionDetail;
import com.memoravel.util.DBUtil;

public class AttractionDaoImpl implements AttractionDao {
	DBUtil dbUtil = DBUtil.getInstance();

	@Override
	public int getSidoCode(String dest) throws SQLException {
		String sql = "select " + "sido_code " + "from " + "sido " + "where 1=1 " + "and sido_name=?" + ";";

		try (
				// 2. DB 연결
				Connection conn = dbUtil.getConnection();
				// 3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, dest);
			try (ResultSet rs = pstmt.executeQuery();) {
				// 4. 조회 데이터 파싱
				if (rs.next()) {
					int sidoCode = rs.getInt("sido_code");
					return sidoCode;
				}
				return -1;
			}
		}
	}

	@Override
	public List<Attraction> getAttractions(int sidoCode, String keyword, int category) throws SQLException {
		String sql = "select * " + "from " + "attraction_info " + "where 1=1 " + "and title like ? ";
		if (sidoCode != -1)
			sql += "and sido_code=? ";
		if (category != 0)
			sql += "and content_type_id=? ";
		sql += "limit 1000";

		try (
				// 2. DB 연결
				Connection conn = dbUtil.getConnection();
				// 3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, "%" + (keyword == null ? "" : keyword) + "%");
			int paramCnt = 1;
			if (sidoCode != -1)
				pstmt.setInt(++paramCnt, sidoCode);
			if (category != 0)
				pstmt.setInt(++paramCnt, category);
			try (ResultSet rs = pstmt.executeQuery();) {
				// 4. 조회 데이터 파싱
				List<Attraction> atts = new ArrayList<>();
				while (rs.next()) {

					int contentId = rs.getInt("content_id");
					int contentTypeId = rs.getInt("content_type_id");
					String title = rs.getString("title");
					String addr1 = rs.getString("addr1");
					String addr2 = rs.getString("addr2");
					String zipCode = rs.getString("zipcode");
					String tel = rs.getString("tel");
					String firstImage = rs.getString("first_image");
					String firstImage2 = rs.getString("first_image2");
					int readCount = rs.getInt("readcount");
					int gugunCode = rs.getInt("gugun_code");
					String latitude = rs.getString("latitude");
					String longitude = rs.getString("longitude");
					int mlevel = rs.getInt("mlevel");

					Attraction att = new Attraction(title, contentId, contentTypeId, addr1, addr2, zipCode, tel,
							firstImage, firstImage2, readCount, sidoCode, gugunCode, latitude, mlevel, longitude);
					atts.add(att);

				}
				return atts;
			}
		}
	}

	@Override
	public List<Attraction> getAttractions(String keyword) throws SQLException {
		String sql = "select " + "* " + "from " + "attraction_info " + "where 1=1 " + "and title like ? "
				+ "limit 1000";

		try (
				// 2. DB 연결
				Connection conn = dbUtil.getConnection();
				// 3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, "%" + keyword + "%");
			try (ResultSet rs = pstmt.executeQuery();) {
				// 4. 조회 데이터 파싱
				List<Attraction> atts = new ArrayList<>();
				while (rs.next()) {

					int contentId = rs.getInt("content_id");
					int contentTypeId = rs.getInt("content_type_id");
					String title = rs.getString("title");
					String addr1 = rs.getString("addr1");
					String addr2 = rs.getString("addr2");
					String zipCode = rs.getString("zipcode");
					String tel = rs.getString("tel");
					String firstImage = rs.getString("first_image");
					String firstImage2 = rs.getString("first_image2");
					int readCount = rs.getInt("readcount");
					int gugunCode = rs.getInt("gugun_code");
					int sidoCode = rs.getInt("sido_code");
					String latitude = rs.getString("latitude");
					String longitude = rs.getString("longitude");
					int mlevel = rs.getInt("mlevel");

					Attraction att = new Attraction(title, contentId, contentTypeId, addr1, addr2, zipCode, tel,
							firstImage, firstImage2, readCount, sidoCode, gugunCode, latitude, mlevel, longitude);
					atts.add(att);

				}
				return atts;
			}
		}
	}

	@Override
	public AttractionDetail detail(int contentId) throws SQLException {
		String sql = "select overview, title, addr1, addr2, latitude, longitude, first_image\r\n"
				+ "from attraction_info as ai, attraction_description as ad\r\n"
				+ "where ai.content_id = ad.content_id and ai.content_id = ?";

		try (
			// 2. DB 연결
			Connection conn = dbUtil.getConnection();
			// 3. 쿼리 실행
			PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setInt(1, contentId);
			try (ResultSet rs = pstmt.executeQuery();) {
				// 4. 조회 데이터 파싱
				if (rs.next()) {
					String title = rs.getString("title");
					String addr1 = rs.getString("addr1");
					String addr2 = rs.getString("addr2");
					String firstImage = rs.getString("first_image");
					String latitude = rs.getString("latitude");
					String longitude = rs.getString("longitude");
					String overview = rs.getString("overview");
					
					return new AttractionDetail(contentId, title, addr1, addr2, firstImage, latitude, longitude, overview);
				}
				return null;
			}
		}
	}

}
