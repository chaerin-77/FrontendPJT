package com.memoravel.member.model.dao;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;

public interface MemberDao {

	Member login(Member loginInfo) throws SQLException;
	int signin(Member signinInfo) throws SQLException;
	int deleteById(int id) throws SQLException;
	int update(Member loginInfo) throws SQLException;
	Member findById(int id) throws SQLException;
}
