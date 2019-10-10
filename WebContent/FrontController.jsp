<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프론트 컨트롤러</title>
</head>
<body>
	<a href="insert.do">자료추가</a>
	<hr>
	<a href="http://localhost:8090/MVCBasic/select.do">자료조회</a>
	<hr>
	<a href="http://localhost:8090<%=request.getContextPath() %>/update.do">자료수정</a>
	<hr>
	<a href="<%=request.getContextPath()%>/delete.do">자료삭제</a>
	<hr>
	<form action="naction.do" method="post">
		<button>자료병함</button>
	</form>
</body>
</html>