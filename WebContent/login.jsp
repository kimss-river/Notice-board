<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<style>
@media (min-width: 768px) {
  .container {
    width: 750px;
  }
}

@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
</style>
<head>
<meta charset="UTF-8">
<title>LOGIN FORM</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
String id = (String)session.getAttribute("id");
if(request.getAttribute("checkId") !=null){
	
int checkId = (int)request.getAttribute("checkId");
if(checkId == -1){
	%>
	<script>
	alert("해당 아이디를 찾을 수 없습니다.");
	</script>
	<% 
}
else if (checkId == 1) {
	%>
		<script>
	alert("아이디와 패스워드가 일치하지 않습니다. 돌아가세요.");
	</script>
	<%
}
else if (id!=null){
	%>
	<script>
	alert("반갑습니다. list 화면으로 이동합니다.");
	location.href = "list.jsp";
	</script>
	<%
}
}
%>   
<div class="container" >
	<form name="login" action="loginPro.do" method="post" >
<!-- 		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<td colspan="2" align="center"><b><font size=5>LOGIN</font></b></td>
			</tr>
			<tr align="center">
				<td>ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr align="center">
				<td>PASSWORD :</td>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"  align="center">
					<input type="submit" value="login">
					<input type="button" onclick="location.href='joinForm.jsp'" value="sign up">
				</td>
			</tr>
		</table> -->
		<label for="id" class=mb-2 mr-sm-2">아이디 :</label>
		 <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
		<label for="pwd" class=mb-2 mr-sm-2">비밀번호 :</label>
		<input type="text" class="form-control" id="passwd" placeholder="Enter password" name="passwd">
		<div class="form-check mb-2 mr-sm-2">
		<label class="form-check-label">
        <input type="checkbox" class="form-check-input" name="remember"> 아이디 저장
      </label>
      </div>
      <button type="submit" class="btn btn-primary mb-2">로그인</button>
	</form>
	</div>
</body>
</html>


