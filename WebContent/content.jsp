<%@page import="ch13.model.BoardDataBean"%>
<%@page import="ch13.model.BoardDBBean"%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="color.jspf"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css?after" rel="stylesheet" type="text/css">
<script type="text/javascript">
function download(filename) {
	document.downloadFrm.filename.value=filename;
	document.downloadFrm.submit();
}
</script>
</head>
<body bgcolor="<%=bodyback_c %>">
<%
/*    int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");

   try{
	   BoardDBBean dbPro = BoardDBBean.getInstance();
	   BoardDataBean article =  dbPro.getArticle(num);
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level(); */
	  int num = (int)request.getAttribute("num");
	   String pageNum = (String)request.getAttribute("pageNum");
	  BoardDataBean article = (BoardDataBean)request.getAttribute("vo");
	  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
	  
	   SimpleDateFormat sdf = 
	        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
	<%@include file="nav.jsp" %><br>
	<br>
	<b>Content</b>

<form name="contentFrm">
<div style="position:relative; right: 23.5%">
<label><%=article.getSubject()%></label>
</div>
		<hr width="50%" align="center"></hr>
		<div style="position:relative; right: 20%">
		<label><b><%=article.getWriter()%></b>  <%= sdf.format(article.getReg_date())%></label></div>
            <table width="50%" height="100" style="margin-left:auto; margin-right:auto;">
      			<tr>
      			<td align="left" name="content" rows="30"
						cols="130" style="ime-mode: active; border:1px solid #a9a9a9; border-left: 0; border-right: 0;">
           		<pre><%=article.getContent()%></pre></td>
			<!-- 	<td align="center"><textarea name="content" rows="30"
						cols="130" style="ime-mode: active; border-left: 0; border-right: 0;"></textarea></td> -->
			</tr>
			<tr>
				<td align="left"><input type="file" name="selectfile"></td>
			</tr>
			</table>
			<div class="return" style="position: absolute; left: 22%; margin-top: 8;">
			<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="목록으로 가기"
				OnClick="window.location='list.jsp'">
			</div>
			<div class="rBtn" style="position: absolute; right: 22%; margin-top: 8;">
			<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="수정"
			onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
			<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="삭제"
			onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
			<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="답글"
			onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
			</div>
 
<%
// }catch(Exception e){} 
 %>
</form>

<form name="downloadFrm" action="downloadPro.jsp" method="post">
	<input type="hidden" name="filename">
</form>
      
</body>
</html>