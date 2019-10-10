package com.edu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.edu.vo.MemberVO;

public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;

	// 데이터베이스 커넥션 생성
	private Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
		} catch (ClassNotFoundException e) {
			System.out.println("driver not found");
		} catch (SQLException e) {
			System.out.println("DB connection failed");
		}
		return con;
	}

	// 자료 추가와 관련된 데이터베이스 처리 메서드
	public void insertMember(MemberVO member) {
		String insertSql = "INSERT INTO MEMBER (ID, PASSWD, NAME, MAIL) values(?,?,?,?)";
		try {
			con = this.getConnection();
			pstmt = con.prepareStatement(insertSql);
			
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}