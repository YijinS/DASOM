<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html lang="ko-KR" >
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<jsp:include page="../inc/incHead.jsp" />
</head>
<title>견적 문의d</title>
<style>

</style>
<body>
	<div>
		<div class="">
			<jsp:include page="comm/header.jsp" />
			
		</div>
		
		<!-- 견적상담 start -->
			<div id="dasom_couns">
			
			</div>
			<!-- 견적상담 end -->
			
			
			<!-- footer start  -->
			<footer>
				  <p>Posted by: Hege Refsnes</p>
				  <p>Contact information: <a href="mailto:someone@example.com">
				  someone@example.com</a>.</p>
			</footer>
			<!-- footer end  -->
	</div>
	
	
	<script>
		alert("등록되었습니다.");
		location.href="${pageContext.request.contextPath }/couns.do";
	</script>

</body>
</html>