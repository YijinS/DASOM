<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../../inc/incHead.jsp" />
</head>
<title>Dasom Interior</title>
<style>

.table {
    margin-bottom: 1rem;
    color: #212529;
    margin: 12px;
    width: 80%;
}

</style>
<body>
<jsp:include page="../comm/header.jsp" />
	

		<div class="head_img_div">
			<img class="head_img" src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-3.jpg" >
		</div>
		<div class="container couns_body">
			

		<div class="couns_btn_div">
			<a class="couns_btn"
				href="${pageContext.request.contextPath }/counsform.do">작성하기</a>
		</div>
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


	<!-- 견적상담 end -->
<jsp:include page="../comm/footer.jsp" />


</body>
</html>