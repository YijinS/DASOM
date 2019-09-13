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
						<div class="question">
							<div class="inner">
								<span class="q"><span>질문</span></span>
								<p>
									<a href="#divQuestion11" class="a_11">${list.question }</a>
								</p>
							</div>
						</div>
						<div id="divQuestion11" class="answer" style="display: none;">
							<span class="a">답변</span>
							<div class="answer_content">${list.answer }</div>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>

		<!-- 페이지네이션 시작  -->
		<div class="page-display">
			<div class="paginate_common" id="page_box">
				<ul class="pagination">
					<c:choose>
						<c:when test="${startPageNum ne 1 }">
							<li><a href="list?pageNum=${startPageNum-1 }"> &laquo; </a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled"><a href="javascript:">&laquo;</a></li>
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }"
						step="1">
						<c:choose>
							<c:when test="${i eq pageNum }">
								<li class="active"><a href="list?pageNum=${i }">${i }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="list?pageNum=${i }">${i }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:choose>
						<c:when test="${endPageNum lt totalPageCount }">
							<li><a href="list?pageNum=${endPageNum+1 }"> &raquo; </a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled"><a href="javascript:">&raquo;</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
		<!-- 페이지네이션 끝 -->
	</div>
	<jsp:include page="comm/footer.jsp" />
	<script>
         var faqList = $(".list_faq");
         faqList.find("> li .question .inner p a").click(
               function(event) {
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
                     faqList.find("li.open .answer").stop().slideUp(
                           150,
                           function() {
                              $(this).parent("li")
                                    .removeClass("open");
                           });
                     pli.find(".answer").stop().slideDown(150);
                     pli.addClass("open");
                  }
               });
      </script>

</body>
</html>