<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>el01.jsp</h3>
	${"el 표현식..문자"}<br>
	<%="출력" %><br>
	<%out.print("출력"); %>
	
<hr>
	\${5+2} : ${5+2}<br>
	\${5 / 2} : ${5 / 2}<br>
	${"5 div 2"} : ${5 div 2}<br>
	
</body>
</html>