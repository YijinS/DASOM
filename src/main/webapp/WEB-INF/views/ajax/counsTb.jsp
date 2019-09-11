<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div>
<div class="container">
	<h2>다솜 견적문의</h2>
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
			<c:if test="${  !(resultList.length > 0) }" >
				<tr >
					<td colspan="4">
						등록된 글이 없습니다. 
					</td>
				</tr>
			</c:if>
			
		</tbody>
	</table>
</div>

</div>