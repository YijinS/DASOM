<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin login</title>
<style>
/* html, body {
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 100%;
	font-family: 'Roboto', sans-serif;
	background: url('${pageContext.request.contextPath}/resources/images/wall1.jpg') 100% 100% no-repeat;
	background-size: 100%;
}

span{font-size: 25px;}

#container {
	width: 100%;
	height: 100%;
}

#content {
	width: 380px;
	height: 300px;
	margin: 140px;
	margin-left: 38%;
	text-align: center;
	border-radius: 2em;
	background: white;
}

#input_form{padding-top: 20px; margin: 2px; border-radius: 1.5em;}

.content_wrap {
	padding: 50px;
}

.place{margin: 5px;}

.button {
	padding: 5px 28px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 13px;
	margin: 16px 2px;
	transition-duration: 0.4s;
	cursor: pointer;
}

.button {
	background-color: white;
	color: black;
	border: 2px solid #e7e7e7;
}

.button:hover {
	background-color: #e7e7e7;
} */
</style>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div id="container">
		<form method="post">
			<div id="content">
				<div class="content_wrap">
					<span>Log in</span>
					<div id="input_form" class="login_form">
						<input class="place" maxlength="20" name="id" placeholder="아이디 입력" /> <br>
						<input class="place" maxlength="20" name="pwd" placeholder="비밀번호 입력" />
					</div>
					<input class="button" type="button" class="button" value="로그인" />
				</div>
			</div>
		</form>
	</div>

</body>
</html>