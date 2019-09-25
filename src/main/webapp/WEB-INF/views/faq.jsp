<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko-KR">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../inc/incHead.jsp" />
</head>
<title>Dasom Interior</title>
<style>

.faq_content {
	margin: 20px auto;
	max-width: 800px;
	padding: 50px;
}

.ff_faq_header :first-child {
	margin-top: 0;
}

a:link, a:visited{
  color:black;
  text-decoration:none
  
}

.question{
position: relative;
	display: block;
	width: 100%;
	border-top: 1px solid #e5eff5;
	border-bottom: 1px solid #e5eff5;
	border-radius: 0;
	padding: 14px;
	font-size: 17px;
	text-decoration: none;
	color: #333;
	background: #cacaca;
	margin-top: -1px;
	text-align: left;
	font-weight: 500;
}

.question:hover, .question:focus {
	background: #cacaca;
	border-top: 1px solid #e5eff5;
	border-bottom: 1px solid #e5eff5;
	color: #333;
	text-decoration: none;
}

.question[aria-expanded="true"] {
	background: #cacaca;
	border-bottom: none;
	border-right: 1px solid #e5eff5;
	border-left: 1px solid #e5eff5;
}

.question[aria-expanded="false"]:hover {
	background: #cacaca;
}

.question[aria-expanded="true"]:after {
	display: block;
	background: #cacaca;
	position: absolute;
	right: 20px;
	top: 13px;
	font-family: FontAwesome;
	font-size: 15px;
}

.question[aria-expanded="false"]:after {
	display: block;
	background: #cacaca;
	position: absolute;
	right: 20px;
	top: 15px;
	font-family: FontAwesome;
	font-size: 15px;
}



.answer{background: #fff;
	padding: 9px 20px 39px 13px;
	border-right: 1px solid #e5eff5;
	border-left: 1px solid #e5eff5;
	color: #999;
	font-size: 15px;}
</style>
<body>
	<div>
		<div class="header_fix">
			<jsp:include page="comm/header.jsp" />
		</div>
		<div class="head_img_div">
			<img class="head_img"
				src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-3.jpg">
		</div>
		<div class="faq_content">
			<ul class="list_faq">
				<c:forEach var="list" items="${list }">
					<li id="seqQa_11" tabindex="" class="">
						<div class="question" aria-expanded="true">
							<div class="inner">
								<p>
									<a href="#divQuestion11" class="a_11">${list.question }</a>
								</p>
							</div>
						</div>
						<div id="divQuestion11" class="answer" style="display: none;">
							<div class="answer_content">${list.answer }</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>

		<!-- 페이지네이션 시작 -->

		<jsp:include page="comm/pagenation.jsp" />

		<!-- 페이지네이션 끝 -->
	</div>
	<jsp:include page="comm/footer.jsp" />
	<script>
		var faqList = $(".list_faq");
		faqList.find("> li .question .inner p a").click(function(event) {
			event.preventDefault();
			faqList.find("> li").attr("tabindex", "");
			/* 
			tabindex: 속성 값이 0인 경우는 탭을 눌렀을 때 포커스가 가지 않는 엘리먼트에게 포커스를 줄 수 있다. -1은 포커스 ㄴㄴ
			예를 들어, div영역에도 포커스를 줄 수 있다는 의미이다. */

			var pli = $(this).parents("li");
			if (pli.hasClass("open")) {
				pli.find(".answer").stop().slideUp(150);
				pli.removeClass("open");
			} else {
				faqList.find("li.open .answer").stop().slideUp(150, function() {
					$(this).parent("li").removeClass("open");
				});
				pli.find(".answer").stop().slideDown(150);
				pli.addClass("open");
			}
		});
	</script>

</body>
</html>