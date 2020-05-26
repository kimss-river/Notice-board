<%@page import="ch13.model.BoardDataBean"%>
<%@page import="ch13.model.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%@ include file="color.jspf"%>
<html>
<head>
<title>게시판</title>
<link href="style.css?after" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
</head>
<body bgcolor="<%=bodyback_c%>">
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  try{
      BoardDBBean dbPro = BoardDBBean.getInstance(); 
      BoardDataBean article =  dbPro.updateGetArticle(num);

%>


	<%@include file="nav.jsp"%><br>
	<br>
	<b>Update Form</b>
	<br>
	<form method="post" name="writeform"
		action="updatePro.jsp?pageNum=<%=pageNum%>"
		onsubmit="return writeSave(this)" enctype="multipart/form-data">
		<body bgcolor="<%=bodyback_c%>">
			<div class="col-lg-10"
				style="width: 800px; position: relative; left: 25%">
				<input type="text" class="form-control" maxlength="50"
					name="subject" value="<%=article.getSubject()%>" style="border: none" value="글제목">
			</div>
			<hr width="50%" align="center"></hr>
			<div class="col-lg-10"
				style="width: 800px; position: relative; left: 25%">
				<input type="text" class="form-control" maxlength="50" name="writer"
					style="border: none" value="<%=article.getWriter()%>">
			</div>
			<table style="margin-left: auto; margin-right: auto;">
				<tr>
					<td align="center"><textarea name="content" rows="30"
							cols="130"
							style="ime-mode: active; border-left: 0; border-right: 0;"><%=article.getContent()%></textarea></td>
				</tr>
				<tr>
					<td align="left"><input type="file" name="selectfile"></td>
				</tr>
			</table>
			<div class="col-lg-10"
				style="width: 200px; position: relative; left: 24%">
				<input type="password" class="form-control" maxlength="12" name="passwd"
					style="border: none" value="비밀번호">
			</div>
			<div class="return"
				style="position: absolute; left: 22%; margin-top: 8;">
				<input type="button"
					class="btn btn-light btn btn-primary btn-sm mr-1" value="목록으로 가기"
					OnClick="window.location='list.jsp'">
			</div>
			<div class="rBtn"
				style="position: absolute; right: 22%; margin-top: 8;">
				<input type="reset"
					class="btn btn-light btn btn-primary btn-sm mr-1" value="다시작성">
				<input type="submit"
					class="btn btn-light btn btn-primary btn-sm mr-1" value="등록">
			</div>
		
</form>
<%
}catch(Exception e){}%>      
      
</body>
</html>