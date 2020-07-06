<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
%>
<div class="navbar-inner">
	<nav class="navbar navbar-expand-sm navbar-dark fixed-top">
		<div class="mIcon">
			<a href="main.jsp">
				<img src="images/tt2.png" width="100" height="100">
			</a>
		</div>
		<div class="navleft">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" style="color: white;" href="list.jsp">게시판</a>
				</li>
			</ul>
		</div>
		<%
			if (id == null) {
		%>
		<div class="login">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" style="color: white" href="login.jsp">로그인</a>
				</li>
			</ul>
		</div>
		<%
			} else {
		%>
		<div class="login">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" style="color: white" href="logoutPro.jsp">로그아웃</a>
				</li>
			</ul>
		</div>
		<%
			}
		%>
	</nav>
</div>

<div class="container-fluid" style="margin-top: 80px"></div>