package com.memoravel.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.memoravel.member.dto.Member;
import com.memoravel.member.model.service.MemberService;
import com.memoravel.member.model.service.MemberServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private MemberService memberService = new MemberServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		try {
			switch (action) {
			case "mvSignin":{
				request.getRequestDispatcher("/signin.jsp").forward(request, response);
				break;
			}
			case "signin":{
				signin(request, response);
				break;
			}
			case "login": {
				login(request, response);
				break;
			}
			case "logout":{
				logout(request,response);
				break;
			}
			case "mvMypage":{
				request.getRequestDispatcher("/mypage.jsp").forward(request, response);
				break;
			}
			case "mvUpdate":{
				request.getRequestDispatcher("/update.jsp").forward(request, response);
				break;
			}
			case "update":{
				update(request,response);
				break;
			}
			case "delete":{
				delete(request,response);
				break;
			}
			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
			//로그 찍던 에러 페이지 반환하던 둘 중 하나!
			e.printStackTrace();
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		
		int cnt = memberService.deleteById(id);
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		response.sendRedirect("/memoravel");
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Member user = new Member(id, password, name, email);
		
		//2. DB에 유저 정보 등록
		int cnt = memberService.update(user);
		
		//3. 등록 성공 시, 메인 페이지 반환
		response.sendRedirect("/memoravel");
	}

	private void signin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Member user = new Member(id, password, name, email);
		
		//2. DB에 유저 정보 등록
		int cnt = memberService.signin(user);
		
		//3. 등록 성공 시, 메인 페이지 반환
		response.sendRedirect("/memoravel");
	}

	private void logout(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		System.out.println("로그아웃 요청 수신");
		//1. 세션 만료 시키기 
		HttpSession session = request.getSession();
		session.invalidate();
		
		//2. 로그아웃 성공 후, 메인 페이지로
		response.sendRedirect("/memoravel");
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		System.out.println("로그인 요청 수신");
		//1. 아이디, 비밀번호 정보 추출 및 가공
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		Member loginInfo = new Member(id, password, null, null);
		System.out.println(loginInfo);
		
		//2. DB에서 해당 아이디,비번과 일치하는 유저정보 조회
		Member userInfo = memberService.login(loginInfo);
		System.out.println("로그인한 유저 정보 : \n"+userInfo);
		
		//3-1. 유저정보가 정보가 존재한다면 세션에 유저정보 저장
		if(userInfo!=null) {
			
			/////쿠키 사용한 아이디 저장 기능////
			String isRemember = request.getParameter("isRemember");
			System.out.println("아이디 저장 여부: "+isRemember);
			Cookie cookie = new Cookie("userId", id);
			cookie.setPath("/memoravel");
			if(isRemember!=null) cookie.setMaxAge(60*60*2);	//2시간
			else cookie.setMaxAge(0);
			response.addCookie(cookie);
			//////////////////////////////
			
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", userInfo);
			
			//메인 페이지 이동
			response.sendRedirect("/memoravel");
		}
		//3-2. 유저정보 존재하지 않는 경우 다시 로그인 페이지 반환
		else {
			response.sendRedirect("/memoravel");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
