<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER LOGIN PROCESS</title>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
int checkId = (int)request.getAttribute("checkId");

if (checkId == 1) {
	%>
		<script>
	alert('아이디 또는 패스워드가 일치하지 않습니다.');
	</script>
	<%
}
else if (id!=null){
	%>
	<script>
	alert('<%=id%>' + "님 안녕하세요!");
	location.href='index.jsp';
	</script>
	<%
}
%>
</body>
</html>