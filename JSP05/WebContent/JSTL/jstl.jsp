<%@page import="java.util.ArrayList"%>

<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- 경로연결해야 사용가능. prefix의 c는 core기능을 쓸때 붙일 이름. 만일 이름을 cd라고하면 아래 사용한 c도 cd라고 해야 한다 -->
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:out value="test jstl"/><br>
	
<hr>
	<c:set var="num" value="test var"/> <!-- 변수, 범위 지정에 사용하는 c:set. var=변수이름 value=값 -->
	${num }<br> <!-- el로 출력 -->
	<br> <!-- 또는 아래 방식도 가능  -->
	<c:set var="num01">안녕하세요.</c:set>
	${num01}
	
<hr>
	<% String s = "test"; %>
	s: ${s}<br>
	<c:set var="s01" value="<%=s %>"/>
	s01: ${s01}
	
<hr>
	<h3>JSTL과 EL을 사용해서 If문 사용하기</h3>
	<c:set var="num02" value="testIf"/>	
	<c:if test="${num02 == 'testIf' }">
		<b>num02와 testIf => 두 값은 같습니다</b>
	</c:if>
	
<hr>
	<h3>JSTL과 EL을 사용해서 forEach문 사용하기</h3>
	<%String[] name = {"11","22","33","44"}; %>
	<c:set var="values" value="<%=name %>"/>
	<c:forEach var="st" items="${values}">
	${st}<br>
	</c:forEach>
	
<hr>
	<h3>JSTL과 EL을 사용해서 ArrayList 사용하기</h3>
	<%
		ArrayList arr = new ArrayList();
		arr.add("test1"); arr.add("test2"); arr.add("test3");
	%>
	<c:set var="values" value="<%=arr %>"/>
	<c:forEach var="st" items="${values}">
	${st}<br>
	</c:forEach>
	
<hr>
	<%--   <c:import url="el01.jsp"/> 
	동일한 웹 어플리케이션뿐만 아니라 외부의 다른 자원을 읽어와 포함시킬 수 있도록 해주는 태그이다.
	GET방식 또는 <c:param>태그를 이용하여 파라미터를 전송할 수도 있다.
	
	<jsp:include>액션 태그는 현재 위치에 무조건 결과를 출력하는 반면,
	<c:import>태그는 EL변수에 보관한 뒤 필요에 따라 알맞은 처리를 할 수 있다.
	--%>
	
	<%-- <c:redirect url="el01.jsp"/> 
	지정한 페이지로 리다이렉트시켜 주는 기능 제공
	--%>

<hr>
	<c:set var="mySession" value="kakaka" scope="session"/>	<!-- 세션 추가 -->
	<a href="el01.jsp">el01.jsp로 이동</a>	
	<c:remove var="mySession"/> <!--  세션 제거-->
	
<hr>
	<c:set var="test" value="one"/>
	<c:choose>
		<c:when test="${test == 'one' }"> <!-- 'if else'문과 같은 기능 -->
			<b>변수 test는 one과 같다</b>
		</c:when> 
		<c:when test="${test == 'two' }">
			<b>변수 test는 two와 같다</b>
		</c:when>
		<c:otherwise>	<!-- 'else'문과 같은 기능 -->
			<b>같은 비교 대상이 없다</b>
		</c:otherwise>
	</c:choose>
	
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