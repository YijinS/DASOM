<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<style>
h3{text-align: center; margin: 25px;}
table, tbody, td, tr{text-align: center;}
.container{border-top: 1px solid #bebebe;}

</style>
<div>
<div class="container">
	<h3>다솜 견적문의</h3>
	
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>제 목</th>
				<th>글쓴이</th>
				<th>작성 시간</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${!(resultList.length > 0) }" >
				<tr>
					<td colspan="4">
						등록된 글이 없습니다. 
					</td>
				</tr>
			</c:if>
			
		</tbody>
	</table>
	<div class="couns_btn_div">
		<a class="couns_btn" href="${pageContext.request.contextPath }/counsform.do" >작성하기</a>
	</div>
	<!-- 페이지네이션 시작  -->
	<div>
	
	</div>
	<!-- 페이지네이션 끝 -->
</div>

</div>