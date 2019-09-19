<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

%>
	<!-- 빈에다 바인딩 member 객체 생성-->
	<jsp:useBean id="member" class="com.edu.beans.Member"/>
	<jsp:setProperty property="*" name="member"/>
<%
	MemberService service = new MemberService();
	service.memberInsert(member);
	RequestDispatcher rd = request.getRequestDispatcher("memberOutput.jsp");
	rd.forward(request, response);
%>