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
	<h3>�ټ� ��������</h3>
	
	<table class="table">
		<thead>
			<tr>
				<th>No</th>
				<th>�� ��</th>
				<th>�۾���</th>
				<th>�ۼ� �ð�</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${!(resultList.length > 0) }" >
				<tr>
					<td colspan="4">
						��ϵ� ���� �����ϴ�. 
					</td>
				</tr>
			</c:if>
			
		</tbody>
	</table>
	<div class="couns_btn_div">
		<a class="couns_btn" href="${pageContext.request.contextPath }/counsform.do" >�ۼ��ϱ�</a>
	</div>
	<!-- ���������̼� ����  -->
	<div>
	
	</div>
	<!-- ���������̼� �� -->
</div>

</div>