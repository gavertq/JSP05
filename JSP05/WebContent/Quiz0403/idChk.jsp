<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="members.MemberDAO"/>
<jsp:useBean id="dto" class="members.MemberDTO"/>
<jsp:setProperty property="id" name="dto"/>

<%
String idChk = request.getParameter("id");

out.print(request.getParameter("id"));
out.print(idChk);

if(dto.getId()==null){%>
	<script>
	alert("아이디를 입력하세요");
	//location.href='register.jsp';
	</script>	
<%}else{ 
	int result = dao.idChk(dto);
	if(result==0){%>
		<script>
		alert("사용 가능한 아이디입니다.");
		//location.href='javascript:history.back();';
		</script>
	<%}else{%>
		<script>
		alert("이미 등록되어 있는 아이디입니다.");
		//location.href='register.jsp';
		</script>
	<%}%>

<%} %>
</body>
</html>