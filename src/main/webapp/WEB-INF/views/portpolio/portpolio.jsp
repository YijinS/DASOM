<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="ko-KR">
<jsp:include page="../../inc/incHead.jsp" />
<html lang="ko-KR">
<style>
table {
	border: none;
	margin-top: 15px;
}

.port_wrapper {
	margin-top: 100px;
	margin-bottom: 100px;
}

.port_img {
	width: 100%;
}

.port_div {
	margin: auto;
	width: fit-content;
}

.port_div input {
	border: none;
	margin: 10px 5px;
	border-radius: 3px;
	background: #9d7e5f;
	padding: 5px 10px;
}

.port_row {
	margin: 25px 0px;
}

.col-sm-4 {
	width: 33%;
	
}

.port_img{margin-top: 5px;}
</style>
<head>
</head>
<body>
	<jsp:include page="../comm/header.jsp" />

	<div class="head_img_div">
		<img class="head_img"
			src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-2.jpg">
	</div>

	<div class="couns_btn_div">
		<a class="couns_btn"
			href="${pageContext.request.contextPath }/portpolioform.do">작성하기</a>
	</div>
	<div class="container port_wrapper">
		<div
			style="text-align: center; text-align: center; border-bottom: 1px solid #d9d9d9; padding: 50px;">

			<h3>다솜 시공사진</h3>
		</div>
		<c:if test="true">
			<c:set var="i" value="0" />
			<c:set var="j" value="3" />
			<table>
				<c:choose>
					<c:when test="${list != null && fn:length(list) > 0 }">
						<c:forEach items="${list}" var="list">
							<c:if test="{i%j == 0}">
								<tr class="row port_row">
							</c:if>
							<td class="col-sm-4"><a
								href="portpoliodetail.do?num=${list.num}"> <img
									class="port_img"
									src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg">
							</a></td>
							<c:if test="${i%j == j-1}">
								</tr>
							</c:if>
							<c:set var="i" value="${i+1}" />
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr class="row port_row">
							<td class="col-sm-4">존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>

		</c:if>
	</div>




	<jsp:include page="../comm/footer.jsp" />
</body>
</html>