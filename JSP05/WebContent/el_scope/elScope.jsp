<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	//jstl 배우면 다른 식으로 scope 작성 가능
	pageContext.setAttribute("name", "page_man");
	request.setAttribute("name", "request_man");
	session.setAttribute("name", "session_man");
	application.setAttribute("name", "application_man");
%>
	name: ${name };<br> <!-- 현재 페이지에서 범위가 가장 작은값을 출력(여기서는 page가 가장 작아서 page가 출력) -->
	page name: ${pageScope.name }<br>
	request name: ${requestScope.name }<br>
	session name: ${sessionScope.name }<br>
	application name: ${applicationScope.name }<br>
	<a href="resultScope.jsp">결과 페이지 이동</a>
</body>
</html>