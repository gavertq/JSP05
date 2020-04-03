<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	name: ${name }<br>	<!-- 현재 페이지에서 범위가 가장 작은값을 출력(여기서는 session이 가장 작아서 session이 출력) -->
	page name: ${pageScope.name }<br>
	request name: ${requestScope.name }<br>
	session name: ${sessionScope.name }<br>
	application name: ${applicationScope.name }<br>
</body>
</html>