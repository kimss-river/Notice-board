<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<title>MEMBER JOIN</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
label {
  width:200px;
  display: inline-block;
}
#img {
	position: relative;
	left: 180px;
	padding: 20px;
}
.test{
  position: absolute; 
  left: 40%; 
}
.form-group {
	margin-right: auto;
	margin-left: auto;
}

.col-lg-2 {
	margin-right: auto;
	margin-left: auto;
}

.col-lg-10 {
	width: 600px;
}
.btn-dark {
	width: 200px;
	height:50px;
	position: relative;
	left: 50px;
	margin-top: 20px;
	border-radius: 30px;
}
.atag {
	text-align: center;
}
</style>
<body>
	<div class="container">
		<form class="form-horizontal" name="joinform" role="form" method="post" action="joinPro.jsp">
		<div class="test">
		<div id="img">
			<a href="main.jsp"><img src="images/tt3.png" height="100"></a>
		</div>
			<div class="form-group" id="divId">
				<div class="lblText">
					<label for="inputId" class="col-lg-2 control-label">아이디</label>
				</div>
				<div class="col-lg-10">
					<input type="text" class="form-control onlyAlphabetAndNumber"
						id="id" name="id" data-rule-required="true" maxlength="20">
				</div>
			</div>
			<div class="form-group" id="divPwd">
			<div class="lblText">
				<label for="inputPwd" class="col-lg-2 control-label">비밀번호</label>
			</div>
				<div class="col-lg-10">
					<input type="text" class="form-control onlyAlphabetAndNumber"
						id="pwd" name="passwd" data-rule-required="true" maxlength="20">
				</div>
			</div>
				<div class="form-group" id="chekPwd">
					<div class="lblText">
						<label for="chekPwd" class="col-lg-2 control-label" width="150px";>비밀번호
							재확인</label>
					</div>
					<div class="col-lg-10">
						<input type="text" class="form-control onlyAlphabetAndNumber"
							id="cpwd" name="chekpasswd" data-rule-required="true"
							maxlength="20">
					</div>
				</div>
				<div class="form-group" id="name">
					<div class="lblText">
						<label for="chekPwd" class="col-lg-2 control-label">이름</label>
					</div>
					<div class="col-lg-10">
						<input type="text" class="form-control onlyAlphabetAndNumber"
							id="name" name="name" data-rule-required="true" maxlength="20">
					</div>
				</div>
				<!-- 생년월일 -->
				<div class="form-group" id="datenum">
					<div class="lblText">
						<label for="datenum" class="col-lg-2 control-label">생년월일</label><br>
					</div>
					<div class="col-lg-10">
						<input type="date" class="form-control onlyAlphabetAndNumber"
							id="datenum" name="date_number">
					</div>
				</div>
				<div class="form-group" id="telnum">
					<div class="lblText">
						<label for="telnum" class="col-lg-2 control-label">휴대전화</label>
					</div>
					<div class="col-lg-10">
						<input type="text" class="form-control onlyAlphabetAndNumber"
							id="telnum" name="telnum" data-rule-required="true"
							maxlength="20">
					</div>
					<br>
					<input type="button" class="btn btn-dark" value="이전 화면"
						OnClick="window.location='login.jsp'">
					<button type="submit" class="btn btn-dark">가입하기</button>
				</div>
		</form>
	</div>
</body>
</html>