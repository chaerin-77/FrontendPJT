package com.memoravel.member.model.service;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;

public interface MemberService {

	Member login(Member loginInfo) throws SQLException;
	int signin(Member signinInfo) throws SQLException;
	int deleteById(String id) throws SQLException;
	int update(Member loginInfo) throws SQLException;
	Member findById(int id) throws SQLException;
}
