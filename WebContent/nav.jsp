<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>nav</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="style.css?after" rel="stylesheet" type="text/css">
</head>
<style>
.navbar-inner {
    background-color:transparent;
}
.navbar {
	background-color: #a1e8e4; opacity: 0.5;
	
	}
.navbar-nav > li > a { padding: 24px 25px }

.login {
position: absolute;
left: 1820px;

}
</style>
	<%
		String id = null;
		if (session.getAttribute("id")!=null){
			id = (String) session.getAttribute("id");
		}
	%>
<body style="height:1500px">
<div class="navbar-inner">
<nav class="navbar navbar-expand-sm navbar-dark fixed-top">
  <a class="navbar-brand" style="color:black" href="main.jsp">여기다가뭘할까 일단은 메인으로 갑니다</a>
  <ul class="navbar-nav">
    <li class="nav-item">
    	<a class="nav-link" style="color:black" href="list.jsp">게시판</a>
    </li>
  </ul>
  <%
  	if(id==null){
  %>
 <div class="login">
  <ul class="navbar-nav">
  	<li class="nav-item">
  		<a class="nav-link" style="color:black" href="login.jsp">로그인</a>
  	</li>
  </ul>
  </div>
  <%
  	} else {
  %>
   <div class="login">
  <ul class="navbar-nav">
  	<li class="nav-item">
  		<a class="nav-link" style="color:black" href="logoutPro.jsp">로그아웃</a>
  	</li>
  </ul>
  </div>
   <%
  	}
  %>
</nav>
</div>

<div class="container-fluid" style="margin-top:80px">
</div>

</body>
</html>