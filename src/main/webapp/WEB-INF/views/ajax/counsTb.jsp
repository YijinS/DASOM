<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<style>
h3 {
	text-align: center;
	margin: 25px;
}

.container {
	border-top: 1px solid #bebebe;
}

.couns_wrap {
	border-top: 1px solid #bebebe;
}

</style>
<div>
	<div class="container couns_wrap">
		
		<div class="couns_btn_div">
			<a class="couns_btn"
				href="${pageContext.request.contextPath }/counsform.do">작성하기</a>
		</div>
		

		<h3 class="after">다솜 시공후기</h3>
		<table class="table">
			<thead>
					<tr>
						<th>No</th>
						<th>제 목</th>
						<th>글쓴이</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}">
						<tr>
							<td>${list.num}</td>
							<td class="eclips">
							<a href="detail.do?num=${list.num}">${list.title}</a></td>
							<td>${list.name}</td>	
							<td>${list.hit}</td>
						</tr>
					</c:forEach>
				</tbody>
		</table>

		<!-- 페이지네이션 시작 -->

		<jsp:include page="../comm/pagenation.jsp" />

		<!-- 페이지네이션 끝 -->

	</div>

</div>