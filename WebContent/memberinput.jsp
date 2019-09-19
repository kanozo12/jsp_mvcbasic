<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입화면</title>
</head>
<body>
	<h3>회원가입 화면</h3>
	<form action="memberProc.jsp" method="post">
		ID : <input type="text" name="id"><br><br>
		비밀번호 : <input type="text" name="passwd"><br><br>
		이름 : <input type="text" name="name"><br><br>
		이메일 : <input type="text" name="email"><br><br>
		<input type="submit" value="가입">
	</form>
</body>
</html>