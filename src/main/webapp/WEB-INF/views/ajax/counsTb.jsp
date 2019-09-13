<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<style>
h3{text-align: center; margin: 25px;}
.container{border-top: 1px solid #bebebe;}
.couns_wrap{border-top: 1px solid #bebebe;}
</style>
<div>
<div class="container couns_wrap">
	<h3 class="after">�ټ� �ð��ı�</h3>
	
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>�� ��</th>
				<th>�۾���</th>
				<th>�ۼ� �ð�</th>
				<th>��ȸ��</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}">
					<fmt:formatDate value="${list.redDate }" var="regDate" pattern="yyyy-MM-dd"/>
						<tr>
							<td>${list.num}</td>
							<td style="text-align: left; padding-left: 30px;"><a href="detail.do?num=${list.num}">${list.title}</a></td>
							<td>${list.name}</td>
							<td>${regDate}</td>
							<td>${list.hit}</td>
						</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="couns_btn_div">
		<a class="couns_btn" href="${pageContext.request.contextPath }/counsform.do" >�ۼ��ϱ�</a>
	</div>
	
</div>

</div>