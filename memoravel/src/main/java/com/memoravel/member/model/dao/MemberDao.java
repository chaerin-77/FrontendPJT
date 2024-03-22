package com.memoravel.member.model.dao;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;

public interface MemberDao {

	Member login(Member loginInfo) throws SQLException;
	
}
