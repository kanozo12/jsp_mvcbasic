<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입완료</title>
</head>
<body>
	<!-- memberVO로부터  member 객체 생성 후 멤버변수 모두 setter 메서드 호출 -->
	<jsp:useBean id="member" class="com.edu.vo.MemberVO" />
	<jsp:setProperty property="*" name="member" />

	<h3>${member}</h3>
	<h3>${member.id}님의회원 가입이 완료되었습니다.</h3>
	<h3>
		이름은
		<jsp:getProperty property="name" name="member" />님입니다.
	</h3>
</body>
</html>