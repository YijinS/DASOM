<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko-KR" >
<jsp:include page="../inc/incHead.jsp" />
<head>
</head>
<title>견적 문의</title>
<style>

</style>
<body>
<jsp:include page="comm/header.jsp" />

	<div class="container">
		
			<!-- 견적상담 start -->
			<div  id="dasom_couns">
			
			</div>
			<!-- 견적상담 end -->
			
			
			
	</div>
<jsp:include page="comm/footer.jsp" />
	
	
<script>
$(function(){

	 var context = '${pageContext.request.contextPath}';
	startTakeCounsDiv(context);
	
})
</script>
</body>
</html>