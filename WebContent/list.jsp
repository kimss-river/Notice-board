<%@page import="ch13.model.BoardDBBean"%>
<%@page import="ch13.model.BoardDataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ include file="color.jspf"%>

<%!
    int pageSize = 10;
    SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	request.setCharacterEncoding("UTF-8");

    String pageNum = request.getParameter("pageNum");

    if (pageNum == null) {
        pageNum = "1";
    }

    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize + 1;
    int endRow = currentPage * pageSize;
    int count = 0;
    int number = 0;
    List<BoardDataBean> articleList = null; 
    
    BoardDBBean dbPro = BoardDBBean.getInstance();
    count = dbPro.getArticleCount();
    
    if (count > 0) {
        //mysql limit (시작하는 인덱스, 몇개씩 읽어라)
        //articleList = dbPro.getArticles(startRow, pageSize);
        //sskin.m for oracle (수정했다)
       //oracle은  (시작하는 인덱스, 끝나는 인덱스)
        articleList = dbPro.getArticles(startRow, endRow);
    }

	number = count-(currentPage-1)*pageSize;
%>
<html>
<head>
<title>게시판</title>
<!--  뷰포트 크기 조절 -->
 <meta name="viewport" content="width=device-width, user-scalable=no">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <link href="style.css?after" rel="stylesheet" type="text/css">
</head>
<style>
.writebtn{
	position: absolute;
	left: 76%;
}
</style>
<body bgcolor="<%=bodyback_c%>">
	<%@include file="nav.jsp" %>
<br>
<p align="center">글목록(전체 글:<%=count%>)</p>

<div class="container">

<% if (count == 0) { %>

<table>
<tr>
    <td align="center">
              게시판에 저장된 글이 없습니다.
    </td>
</table>

<% } else {%>
<table class="table table-hover" style="margin-left:auto; margin-right:auto;">
	<thead>
    <tr height="30" bgcolor="<%=value_c%>"> 
      <th align="center"  width="50"  >번 호</th> 
      <th align="center"  width="250" >제   목</th> 
      <th align="center"  width="100" >작성자</th>
      <th align="center"  width="150" >작성일</th> 
      <th align="center"  width="50" >조 회</th> 
    </tr>
    </thead>
<%  
   for (int i = 0 ; i < articleList.size() ; i++) {
       BoardDataBean article = articleList.get(i);
%>
   <tr height="30">
    <td width="50" > <%=number--%></td>
    <td width="250" align="left">
<%
	int wid=0; 
	if(article.getRe_level()>0){
	   wid=5*(article.getRe_level());
%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
	  <img src="images/re.png">
<%  }else{%>
	  <img src="images/level.png" width="<%=wid%>" height="16">
<%  }%>
           
      <a href="content.do?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
           <%=article.getSubject()%> <%=article.getNum()%></a> 
<% if(article.getReadcount()>=20){%>
         <img src="images/hot.gif" border="0"  height="16"><%}%> </td>
    <td width="100" align="left"> 
       <a href="mailto:<%=article.getEmail()%>">
                     <%=article.getWriter()%></a></td>
    <td width="150"><%= sdf.format(article.getReg_date())%></td>
    <td width="50"><%=article.getReadcount()%></td>
  </tr>
<%}%>
</table>
	<div class=writebtn>
		<input type="button" class="btn btn-light btn btn-primary btn-sm mr-1" value="글쓰기"
							OnClick="window.location='writeForm.jsp'">
	</div>
</div>
<%}%>

<%
    if (count > 0) {
        int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage =1;
		
		if(currentPage % 10 != 0)
           startPage = (int)(currentPage/10)*10 + 1;
		else
           startPage = ((int)(currentPage/10)-1)*10 + 1;

		int pageBlock = 10;
        int endPage = startPage + pageBlock - 1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) { %>
          <a href="list.jsp?pageNum=<%= startPage - 10 %>">[이전]</a>
<%      }
        
        for (int i = startPage ; i <= endPage ; i++) {  %>
           <font size="3"><a href="list.jsp?pageNum=<%= i %>"><%= i %></a></font>
<%      }
        
        if (endPage < pageCount) {  %>
        <a href="list.jsp?pageNum=<%= startPage + 10 %>">[다음]</a>
<%
        }
    }
%>

</body>
</html>