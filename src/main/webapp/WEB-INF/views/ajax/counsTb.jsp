<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<div>
<div class="container">
	<h4>�ټ� ��������</h4>
	
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
			<c:if test="${  !(resultList.length > 0) }" >
				<tr >
					<td colspan="4">
						��ϵ� ���� �����ϴ�. 
					</td>
				</tr>
			</c:if>
			
		</tbody>
	</table>
	<div class="couns_btn_div">
		<input class="couns_btn" type=button value="�ۼ��ϱ�"/>
	</div>
	<!-- ���������̼� ����  -->
	<div>
	
	</div>
	<!-- ���������̼� �� -->
</div>

</div>