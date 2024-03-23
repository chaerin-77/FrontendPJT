package com.memoravel.attraction.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import com.memoravel.attraction.model.service.*;

@WebServlet("/search")
public class AttractionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private AttractionService attractionService = new AttractionServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		try {
			switch (action) {
			case "searchByKeyword":{
				searchByKeyword(request, response);
				break;
			}
			case "searchByAll": {
				searchByAll(request, response);
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

	private void searchByAll(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String dest = request.getParameter("dest");
		int contentType = Integer.parseInt(request.getParameter("contentType"));
		String keyword = request.getParameter("keyword");
		request.setAttribute("attractionList", attractionService.Inquire(dest, keyword, contentType));
		request.getRequestDispatcher("/mkplan.jsp").forward(request, response);
		
	}

	private void searchByKeyword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		String keyword = request.getParameter("keyword");
		request.setAttribute("attractionList", attractionService.Inquire(keyword));
		request.getRequestDispatcher("/triplist.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
