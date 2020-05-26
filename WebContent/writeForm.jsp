<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jspf" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link href="style.css?after" rel="stylesheet" type="text/css">
<%! //정의부, 선언부
//함수
//전역변수
%>

<% 
  int num = 0, ref = 1, re_step = 0, re_level = 0;
  String strV = "";
  try{
    if(request.getParameter("num")!=null){
	   num=Integer.parseInt(request.getParameter("num"));
	   ref=Integer.parseInt(request.getParameter("ref"));
	   re_step=Integer.parseInt(request.getParameter("re_step"));
	   re_level=Integer.parseInt(request.getParameter("re_level"));
    }
  }catch(Exception e){
    	e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
	<link href="style.css?after" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="script.js"></script>
</head>
<body bgcolor="<%=bodyback_c%>">
	<%@include file="nav.jsp" %><br>
	<br>
	<b>Write Form</b>
	<form method="post" action="writePro.do" enctype="multipart/form-data">
		<input type="hidden" name="num" value="<%=num%>"> <input
			type="hidden" name="ref" value="<%=ref%>"> <input
			type="hidden" name="re_step" value="<%=re_step%>"> <input
			type="hidden" name="re_level" value="<%=re_level%>">
			
			<br>
		<div class="col-lg-10"
			style="width: 800px; position: relative; left: 25%">
			<input type="text" class="form-control" maxlength="50" name="subject"
				style="border: none" value="글제목">
		</div>
		<hr width="50%" align="center"></hr>
		<div class="col-lg-10"
			style="width: 800px; position: relative; left: 25%">
			<input type="text" class="form-control" maxlength="50" name="writer"
				style="border: none" value="이름">
		</div>
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td align="center"><textarea name="content" rows="30"
						cols="130"
						style="ime-mode: active; border-left: 0; border-right: 0;"></textarea></td>
			</tr>
			<tr>
				<td align="left"><input type="file" name="selectfile"></td>
			</tr>
		</table>
		<div class="col-lg-10"
			style="width: 200px; position: relative; left: 24%">
			<input type="text" class="form-control" maxlength="12" name="passwd"
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
			<input type="reset" class="btn btn-light btn btn-primary btn-sm mr-1"
				value="다시작성"> <input type="submit"
				class="btn btn-light btn btn-primary btn-sm mr-1" value="등록">
		</div>
	
	</form>
</body>
</html>
























