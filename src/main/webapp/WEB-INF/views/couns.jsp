<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko-KR">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../inc/incHead.jsp" />
</head>
<title>Dasom Interior</title>
<style>
.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
        margin: 100px;
    /* display: inherit; */
    width: 80%;
}

</style>
<body>
	<div>
		<div class="header_fix">
	<header>

		<div class="">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/main.do">다솜 인테리어</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<c:choose>
							<c:when test="${empty sessionScope.admin }">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath }/direction.do">오시는
										길</a></li>
								<li class="nav-item"><a class="nav-link" href="#">시공사진</a>
								</li>
								<li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath }/couns.do">시공후기</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/faq.do">자주 묻는 질문</a>
								<li class="nav-item form"><a class="nav-link" href="https://form.office.naver.com/form/responseView.cmd?formkey=MjY2OTkwMjAtYTlkYy00YmU3LTlkMGQtMjUzMGNkMmE3NTcy&sourceId=urlshare"  target="_blank" >견적문의</a></li>
							</c:when>
							<c:otherwise>
								<c:choose>
									<c:when test="${sessionScope.admin.id eq 'root' }">
										<li class="nav-item"><a class="nav-link" href="#">관리자
												님</a></li>
										<li class="nav-item"><a class="nav-link"
											href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
									</c:when>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</ul>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</div>
			</nav>
		</div>
	</header>
</div>
		<div class="head_img_div">
			<img class="head_img" src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-3.jpg" >
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>No</th>
					<th>제 목</th>
					<th>글쓴이</th>
					<th>작성 시간</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${list}">
					<fmt:formatDate value="${list.redDate }" var="regDate"
						pattern="yyyy-MM-dd" />
					<tr>
						<td>${list.num}</td>
						<td style="text-align: left; padding-left: 30px;">
						<a href="detail.do?num=${list.num}">${list.title}</a></td>
						<td>${list.name}</td>	
						<td>${regDate}</td>
						<td>${list.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="couns_btn_div">
			<a class="couns_btn"
				href="${pageContext.request.contextPath }/counsform.do">작성하기</a>
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


</body>
</html>