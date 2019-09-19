<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
	out.print("<h1>DB Connection Success!!</h1><br>");
	
	
	String create_sql = "create table member(id varchar2(10) primary key, passwd varchar2(10), name varchar2(10), mail varchar2(10))";
	Statement stmt = conn.createStatement();
	stmt.executeUpdate(create_sql);
	out.print("<h1>Table Create Success!!</h1><br>");
	
	stmt.close();
	conn.close();
%>