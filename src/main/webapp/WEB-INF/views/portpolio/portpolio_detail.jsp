<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<jsp:include page="../../inc/incHead.jsp" />
</head>
<meta charset="utf-8">
<title>Dasom Interior</title>
<style>
.tbl_board_view tr.prev_next th span {padding-right: 0px;}
</style>
<body>
	<div>
		<div class="">
			<jsp:include page="../comm/header.jsp" />

		</div>
		<div>
				<table class="tbl_data tbl_board_view">
					<colgroup>
						<col style="width: 105px">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">제목</th>
							<td class="subject">${dto.title }</td>
						</tr>
						<tr>
							<td colspan="2" class="content">
								<div>${dto.content }</div>
								<div>
									<br>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<a href="portpolio.do">목록</a> 
				<a href="portpolioupdateform.do?num=${dto.num}">수정</a> 
				<a href="portpoliodelete.do?num=${dto.num}">삭제</a>
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