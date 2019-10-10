<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  MemberService import -->
<%@ page import="com.edu.biz.MemberService"%>
<!-- 한글 인코딩 -->
<%
	request.setCharacterEncoding("UTF-8");
%>	
	<jsp:useBean id="member" class="com.edu.vo.MemberVO"/>
	<jsp:setProperty property="*" name="member" />
<%
// MemberService 객체 생성
   MemberService service = new MemberService();
// MemberService 에서 구현한 memberInsert 메서드 호출
   service.memberInsert(member);
// 	RequestDispatcher rd = request.getRequestDispatcher("memberOutput.jsp");
// 	rd.forward(request, response);
// 결과화면으로 제어이동
    request.getRequestDispatcher("memberOutput.jsp").forward(request, response);
%>