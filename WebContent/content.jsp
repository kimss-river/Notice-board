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

<p>글내용 보기</p>

<form name="contentFrm">
<table style="margin-left:auto; margin-right:auto;">  
  <tr height="30">
    <td align="center" width="125" bgcolor="<%=value_c%>">글번호</td>
    <td align="center" width="125" align="center">
	     <%=article.getNum()%></td>
    <td align="center" width="125" bgcolor="<%=value_c%>">조회수</td>
    <td align="center" width="125" align="center">
	     <%=article.getReadcount()%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="<%=value_c%>">작성자</td>
    <td align="center" width="125" align="center">
	     <%=article.getWriter()%></td>
    <td align="center" width="125" bgcolor="<%=value_c%>" >작성일</td>
    <td align="center" width="125" align="center">
	     <%= sdf.format(article.getReg_date())%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="<%=value_c%>">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getSubject()%></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="<%=value_c%>">글내용</td>
    <td align="left" width="380" colspan="3">
           <pre><%=article.getContent()%></pre></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="<%=value_c%>">파일다운로드</td>
    <td align="left" width="125" colspan="3">
           <%
           String filename = article.getFileName();
           if( filename !=null && !filename.equals("")) { %>
	           <a href="javascript:download('<%=filename %>')">
	           <%=filename %>
	           </a>
           <%} else { %>
           파일이 없습니다.
           <%} %>
          </td>
  </tr>
  <tr height="45">      
    <td colspan="4" bgcolor="<%=value_c%>" align="right" > 
	  <input type="button" class="btn btn-light btn btn-primary btn-sm" value="글수정" 
       onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" class="btn btn-light btn btn-primary btn-sm" value="글삭제" 
       onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" class="btn btn-light btn btn-primary btn-sm" value="답글쓰기" 
       onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" class="btn btn-light btn btn-primary btn-sm" value="글목록" 
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
    </td>
  </tr>
</table>    
<%
// }catch(Exception e){} 
 %>
</form>

<form name="downloadFrm" action="downloadPro.jsp" method="post">
	<input type="hidden" name="filename">
</form>
      
</body>
</html>