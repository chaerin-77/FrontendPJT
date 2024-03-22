package com.memoravel.member.model.service;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;

public interface MemberService {

	Member login(Member loginInfo) throws SQLException;	
}
