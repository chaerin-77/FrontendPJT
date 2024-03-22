package com.memoravel.member.model.service;

import java.sql.SQLException;

import com.memoravel.member.dto.Member;
import com.memoravel.member.model.dao.MemberDao;
import com.memoravel.member.model.dao.MemberDaoImpl;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao = new MemberDaoImpl();
	
	@Override
	public Member login(Member loginInfo) throws SQLException {
		return memberDao.login(loginInfo);
	}

	@Override
	public int signin(Member signinInfo) throws SQLException {
		return memberDao.signin(signinInfo);
	}

	@Override
	public int deleteById(int id) throws SQLException {
		return memberDao.deleteById(id);
	}

	@Override
	public int update(Member loginInfo) throws SQLException {
		return memberDao.update(loginInfo);
	}

	@Override
	public Member findById(int id) throws SQLException {
		return memberDao.findById(id);
	}
}
