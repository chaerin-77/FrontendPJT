package com.memoravel.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.memoravel.member.dto.Member;
import com.memoravel.util.DBUtil;

public class MemberDaoImpl implements MemberDao {
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
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//2. DB 연결
			conn = dbUtil.getConnection();

			//3. 쿼리 실행
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginInfo.getId());
			pstmt.setString(2, loginInfo.getPassword());
			rs = pstmt.executeQuery();
			
			//4. 조회 데이터 파싱
			if(rs.next()) {
				Member member = new Member();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				return member;
			}
			return null;
		}finally {
			//5. 자원 반납
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
	}

	@Override
	public int signin(Member signinInfo) throws SQLException {
		String sql = "insert into member\r\n"
				+ "(id, password, name, email)\r\n"
				+ "values (?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = dbUtil.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, signinInfo.getId());
			pstmt.setString(2, signinInfo.getPassword());
			pstmt.setString(3, signinInfo.getName());
			pstmt.setString(4, signinInfo.getEmail());
			
			return pstmt.executeUpdate();
		} finally {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}
	}

	@Override
	public int deleteById(int id) throws SQLException {
		return 0;
	}

	@Override
	public int update(Member loginInfo) throws SQLException {
		return 0;
	}

	@Override
	public Member findById(int id) throws SQLException {
		return null;
	}
	
	
}
