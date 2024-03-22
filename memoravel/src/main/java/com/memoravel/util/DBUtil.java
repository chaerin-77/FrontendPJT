package com.memoravel.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	//1. 생성자 막기
	private DBUtil() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	//2. 인스턴스 선언 및 초기화
	private static DBUtil instance = new DBUtil();
	//3. 인스턴스 반환 메소드
	public static DBUtil getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws SQLException {
		String url = "jdbc:mysql://127.0.0.1:3306/ssafytrip?serverTimezone=UTC&useUniCode=yes&characterEncoding=UTF-8";
		String user = "ssafy";
		String pwd = "ssafy";
		return DriverManager.getConnection(url, user, pwd);
	}
	
	public void close(AutoCloseable... closeables) {
		for (AutoCloseable c : closeables) {
			if (c != null) {
				try {
					c.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
}
