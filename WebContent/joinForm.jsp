<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>MEMBER JOIN</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<form name="joinform" action="joinPro.jsp" method="post">
		<table border=1 style="margin-left:auto; margin-right:auto;">
			<tr>
				<td colspan="2" align="center"><b><font size=5>SIGN UP</font></b></td>
			</tr>
			<tr align="center">
				<td>ID :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr align="center">
				<td>PASSWORD :</td>
				<td><input type="password" name="pwd"></td>
			</tr>
<!-- 			추후 javascript로 비밀번호 일치 체크 기능 삽입 -->
			<tr align="center">
				<td>PASSWORD CHECK :</td>
				<td><input type="password" name="pwd_c"></td>
			</tr>
			<tr align="center">
				<td>NAME :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td colspan="2"  align="center">
					<input type="submit" value="sign up">
				</td>
			</tr>
		</table>
<!-- 		<label for="id" class=mb-2 mr-sm-2">아아디 :</label>
		<input type="text" class="form-control mb-2 mr-sm-2" id="id" name="id">
		<label for="pwd" class=mb-2 mr-sm-2">비밀번호 :</label>
		<input type="text" class="form-control mb-2 mr-sm-2" id="pwd" name="passwd">
		<label for="name" class=mb-2 mr-sm-2">이름 :</label>
		<input type="text" class="form-control mb-2 mr-sm-2" id="name" name="name">
		<label for="email" class=mb-2 mr-sm-2">이메일 :</label>
		<input type="text" class="form-control mb-2 mr-sm-2" id="email" name="email"> -->
	</form>
	</div>
</body>
</html>