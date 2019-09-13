<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko-KR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../inc/incHead.jsp" />
</head>
<title>견적 문의</title>
<style>
</style>
<body>
	<div>
		<div class="">
			<jsp:include page="comm/header.jsp" />

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
						<td><a class="btn_attach" href="#none"
							onclick="fileDownload(24)"></a></td>
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
	
		<!-- footer start  -->
		<footer>
			<p>Posted by: Hege Refsnes</p>
			<p>
				Contact information: <a href="mailto:someone@example.com">
					someone@example.com</a>.
			</p>
		</footer>
		<!-- footer end  -->


</body>
</html>