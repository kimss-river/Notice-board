<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%@ include file="color.jspf"%>
<% request.setCharacterEncoding("UTF-8");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>
<html>
<head>
<title>게시판</title>
<link href="style.css?after" rel="stylesheet" type="text/css">
<script type="text/javascript">  
</script>
</head>
<body bgcolor="<%=bodyback_c%>">
<p>글삭제</p>
<br>
<form method="POST" name="delForm" 
   action="deletePro.do?pageNum=<%=pageNum%>" 
   onsubmit="return deleteSave()"> 
<table style="margin-left:auto; margin-right:auto;"> 
  <tr height="30">
     <td align=center  bgcolor="<%=value_c%>">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr height="30">
     <td align=center >비밀번호 :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="<%=value_c%>">
      <input type="submit" value="글삭제" >
      <input type="button" value="글목록" 
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html>