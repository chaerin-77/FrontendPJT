package com.memoravel.member.model.service;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;
import com.memoravel.member.model.dao.MemberDao;
import com.memoravel.member.model.dao.MemberDaoImpl_close;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao = new MemberDaoImpl_close();
	
	@Override
	public Member login(Member loginInfo) throws SQLException {
		return memberDao.login(loginInfo);
	}
}
