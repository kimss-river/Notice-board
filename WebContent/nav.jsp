<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>nav</title>
  <meta charset="utf-8">
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
	background-color: #000000; /* opacity: 0.5; */
	height: 120px;
	}
.navbar-nav > li > a { padding: 24px 25px }

.mIcon {
	position: absolute;
	top: 10px;
	left: 60px;
}

.navleft {
	position: absolute;
	top: 30px;
	left: 180px;
}

.login {
	position: absolute;
	top: 30px;
	left: 1780px;
	color: #313582;

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
 <div class="mIcon">
   <a href="main.jsp"><img src="images/tt2.png" width="100" height="100"></a>
 </div>
  <div class="navleft">
  <ul class="navbar-nav">
    <li class="nav-item">
    	<a class="nav-link" style="color:white;" href="list.jsp">게시판</a>
    </li>
  </ul>
  </div>
  <%
  	if(id==null){
  %>
 <div class="login">
  <ul class="navbar-nav">
  	<li class="nav-item">
  		<a class="nav-link" style="color:white" href="login.jsp">로그인</a>
  	</li>
  </ul>
  </div>
  <%
  	} else {
  %>
   <div class="login">
  <ul class="navbar-nav">
  	<li class="nav-item">
  		<a class="nav-link" style="color:white" href="logoutPro.jsp">로그아웃</a>
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