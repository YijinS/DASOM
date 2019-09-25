<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="ko-KR" >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<jsp:include page="../../inc/incHead.jsp" />
</head>

<title>Dasom Interior</title>

<style>

</style>
<body>
	<div>
		<!-- 견적상담 start -->
			<div id="dasom_couns">
			
			</div>
			<!-- 견적상담 end -->
			
	</div>
	
	
	<script>
		alert("등록되었습니다.");
		location.href="${pageContext.request.contextPath }/couns.do";
	</script>

</body>
</html>