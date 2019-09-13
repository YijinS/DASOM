<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	System.out.print("......");
%>
<html lang="ko-KR" >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<jsp:include page="../inc/incHead.jsp" />
</head>
<title>견적 문의</title>
<style>

</style>
<body>
		<div class="">
			<jsp:include page="comm/header.jsp" />
			
		</div>
	
	<script>
		alert("삭제되었습니다.");
		location.href="${pageContext.request.contextPath }/couns.do";
	</script>

</body>
</html>