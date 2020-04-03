<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.div_memberDetail{text-align: center; align-items: center;}
table{margin: 0 auto;}
</style>

</head>
<body>

	<%
	try{if(!session.getAttribute("loginSuccess").equals("Yes")){%>
		<script type="text/javascript">location.href="login.jsp"</script>
	<%}}catch(Exception e){%>
		<script type="text/javascript">location.href="login.jsp"</script>
	<%} %>

	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%@include file="header.jsp" %>	
	
	<%String uMId = request.getParameter("id");
		ArrayList<MemberDTO> listM = dao.memberDetailView(uMId);
		if(listM.size() != 0){
			for(MemberDTO mM : listM){
			session.setAttribute("id", mM.getId());%>
			<jsp:useBean id="dto" class="members.MemberDTO"/>
			
		<div class="div_memberDetail">
				
		<form action="modify_Success.jsp" method="post">
		<table>
			<tr><th>이 름</th><td><input type="text" value="<%=mM.getName() %>" name="name"></td></tr>
			<tr><th>주 소</th><td><input type="text" value="<%=mM.getAddr() %>" name="addr"></td></tr>
			<tr><th>전화번호</th><td><input type="text" value="<%=mM.getTel() %>" name="tel"></td></tr>	
		<%}%>		
		</table>
		<input type="submit" value="완료">
		<button type="button" onclick="javascript:history.back();">취소</button>
		</form>		
		</div>
		
		<%}else{%>
			데이터 없음
		<%} %>
	<%@include file="footer.jsp" %>
</body>
</html>