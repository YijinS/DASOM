<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko-KR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../inc/incHead.jsp" />
</head>
<meta charset="utf-8">
<title>견적 문의</title>
<style>
.tbl_board_view tr.prev_next th span {padding-right: 0px;}
</style>
<body>
	<div>
		<div class="">
			<jsp:include page="comm/header.jsp" />

		</div>
		<div>
				<table class="tbl_data tbl_board_view">
				<fmt:formatDate value="${dto.redDate }" var="regDate" pattern="yyyy-MM-dd HH:mm:ss"/>
					<colgroup>
						<col style="width: 105px">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">이름</th>
							<td>${dto.name}</td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td class="subject">${dto.title }</td>
						</tr>
						<tr>
							<th scope="row">등록일</th>
							<td>${regDate}</td>
						</tr>
						
						<tr>
							<td colspan="2" class="content">
								<div>${dto.content }</div>
								<div>
									<br>
								</div>
							</td>
						</tr>

						<tr class="prev_next">
							<th scope="row"><span class="prev">이전글</span></th>
							<c:if test="${dto.prevNum ne 0 }">
								<td><a href="detail.do?index=${dto.prevNum}">${dto.prevTitle}</a></td>
							</c:if>
							<c:if test="${dto.prevNum eq 0 }">
								<td>이전글이 없습니다.</td>
							</c:if>
						</tr>
						<tr class="prev_next">
							<th scope="row"><span class="next">다음글</span></th>
							<c:if test="${dto.nextNum ne 0 }">
								<td><a href="detail.do?index=${dto.nextNum}">${dto.nextTitle}</a></td>
							</c:if>
							<c:if test="${dto.nextNum eq 0 }">
								<td>다음글이 없습니다.</td>
							</c:if>
						</tr>
					</tbody>
				</table>
				<a href="couns.do">목록</a> 
				<a href="updateform.do?num=${dto.num}">수정</a> 
				<a href="delete.do?num=${dto.num}">삭제</a>
		</div>
	
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