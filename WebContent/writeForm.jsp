<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jspf" %>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
<p>글쓰기</p>

	<form method="post" action="writePro.do" enctype="multipart/form-data">
		<input type="hidden" name="num" value="<%=num%>"> <input
			type="hidden" name="ref" value="<%=ref%>"> <input
			type="hidden" name="re_step" value="<%=re_step%>"> <input
			type="hidden" name="re_level" value="<%=re_level%>">
		<table style="margin-left:auto; margin-right:auto;">
<%-- 			<tr>
				<td align="right" colspan="2" bgcolor="<%=value_c%>"><a
					href="list.jsp"> 글목록</a></td>
			</tr> --%>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">이 름</td>
				<td width="330" align="left"><input type="text" size="10"
					maxlength="10" name="writer" style="ime-mode: active;"></td>
				<!--active:한글-->
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">제 목</td>
				<td width="330" align="left"><input type="text" size="40"
					maxlength="50" name="subject" value="<%=strV%>"
					style="ime-mode: active;"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">Email</td>
				<td width="330" align="left"><input type="text" size="40"
					maxlength="30" name="email" style="ime-mode: inactive;"></td>
				<!--inactive:영문-->
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">내 용</td>
				<td width="330" align="left"><textarea name="content" rows="13"
						cols="40" style="ime-mode: active;"></textarea></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">파일선택</td>
				<td width="330" align="left"><input type="file" name="selectfile"></td>
			</tr>
			<!-- sskim.a for file upload (추가했다는 의미) -->
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">비밀번호</td>
				<td width="330" align="left"><input type="password" size="8"
					maxlength="12" name="passwd" style="ime-mode: inactive;"></td>
			</tr>
			<tr>
				<td height="50" colspan=2 bgcolor="<%=value_c%>" align="center">
				<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="목록으로 가기"
					OnClick="window.location='list.jsp'">
				<input type="submit" class="btn btn-light btn btn-primary btn-sm mr-1" value="등록">
				<input type="reset" class="btn btn-light btn btn-primary btn-sm mr-1" value="다시작성">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
























