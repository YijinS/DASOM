<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin login</title>

<jsp:include page="../inc/incHead.jsp" />
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<header>
		<div class="">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath }/main.do">다솜 인테리어</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link" href="#">오시는 길 </a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">시공사진</a></li>
						<li class="nav-item"><a class="nav-link" href="#">시공문의</a></li>
						<li class="nav-item"><a class="nav-link" href="#">견적문의</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<form id="login_form" method="POST" action="login">
		<input type="hidden" name="returnUrl" value="">
		<div id="content">
			<div class="content_wrap">
				<span>Log in</span>
				<div id="input_form" class="login_form">
					<input class="place" maxlength="20" name="id" placeholder="아이디 입력" autocomplete="off" /> <br> 
					<input class="place" type="password" maxlength="20" name="pwd" placeholder="비밀번호 입력" autocomplete="off" />
				</div>
				<input class="button" type="button" value="로그인" />
			</div>
		</div>
		<input type="hidden" name="url" value="${url }" />
	</form>
	<script>
		$(function(){
			var button = $(".button");
			var id = $("#input_form").find("input[name=id]");
			var pwd = $("#input_form").find("input[name=pwd]");
				button.click(function(){
					$.ajax({
						url:'${pageContext.request.contextPath }/loginCheck.do', 
						type:'POST',
						data:{
							'id':id.val(),
							'pwd':pwd.val()
						},
						success:function(data){
							if(data.check == true){
									$("#login_form").submit();
							}
							else
								alert("아이디 또는 비밀번호가 틀렸습니다.");
						}
					
					});
			});
		});
	</script>

</body>
</html>