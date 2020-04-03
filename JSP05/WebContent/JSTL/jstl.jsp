<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:out value="test jstl"/>
</body>
</html>
<!--
https://tomcat.apache.org/taglibs/standard/ 검색 
Standard 1.1 download 를 클릭
binaries/   를 클릭
jakarta-taglibs-standard-1.1.2.zip  2004-10-25 20:57  933K 를 다운
압축풀기

lib들어가서 내부 파일 2개를
eclipse의 Dinamic Web Project의 WebContent의  WEB-INF의 lib 안에 복사해 넣기
-->