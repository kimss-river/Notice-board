<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN FORM</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
body{
  position: absolute; 
  left: 50%; 
  transform: translateX(-50%);
}
a > img {
	position: relative;
	left: 70px;
	padding: 20px;
	margin-top: 10px;
	margin-bottom: 20px;
}
.col-lg-10 {
	width: 400px;
	margin-bottom: 10px;
}
.btn-dark {
	width: 200px;
	height:50px;
	position: relative;
	left: 70px;
	border-radius: 30px;
}
.form-check-input {
	margin-bottom: 25px;
}
</style>
<body>
<%
String id = (String)session.getAttribute("id");
if(request.getAttribute("checkId") !=null){
	
int checkId = (int)request.getAttribute("checkId");

if (checkId == 1) {
	%>
		<script>
	alert('아이디 또는 패스워드가 일치하지 않습니다.');
	</script>
	<%
}
else if (id!=null){
	%>
	<script>
	alert('<%=id%>' + "님 안녕하세요!");
	location.href='index.jsp';
	</script>
	<%
}
}
%>
	<div class="container">
		<form class="form-horizontal" name="login" action="loginPro.do"
			method="post">
			<a href="main.jsp"><img src="images/tt1.png" width="200"
				height="122"></a> <br> <label for="id" class=mb-2mr-sm-2">아이디
			</label>
			<div class="col-lg-10">
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<label for="pwd" class=mb-2mr-sm-2">비밀번호 </label>
			<div class="col-lg-10">
				<input type="text" class="form-control" id="passwd" name="passwd">
			</div>
			<div class="form-check mb-2 mr-sm-2">
				<label class="form-check-label"> <input type="checkbox"
					class="form-check-input" name="remember"> 아이디 저장
				</label>
			</div>
			<button type="submit" class="btn btn-dark mb-2">로그인</button>
			<br> <input type="button" class="btn btn-dark" value="회원가입"
				OnClick="window.location='joinForm.jsp'">
		</form>
	</div>
</body>
</html>


