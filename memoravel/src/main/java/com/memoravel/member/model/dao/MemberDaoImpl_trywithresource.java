package com.memoravel.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.memoravel.member.dto.Member;
import com.memoravel.util.DBUtil;

public class MemberDaoImpl_trywithresource implements MemberDao {
	private DBUtil dbUtil = DBUtil.getInstance();

	/**
	 * 전체 목록 조회
	 */
	@Override
	public Member login(Member loginInfo) throws SQLException {
		//1. 쿼리 작성
		String sql = "select id, name\r\n"
				+ "from member\r\n"
				+ "where id=? and password=?";

		try (
				//2. DB 연결
				Connection conn = dbUtil.getConnection();
				//3. 쿼리 실행
				PreparedStatement pstmt = conn.prepareStatement(sql);){
			pstmt.setString(1, loginInfo.getId());
			pstmt.setString(2, loginInfo.getPassword());
			try(
					ResultSet rs = pstmt.executeQuery();){
				//4. 조회 데이터 파싱
				if(rs.next()) {
					Member member = new Member();
					member.setId(rs.getString("id"));
					member.setName(rs.getString("name"));
					return member;
				}
				return null;
			}
		}
	}
}
