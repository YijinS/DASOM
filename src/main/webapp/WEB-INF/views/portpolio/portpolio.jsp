<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko-KR" >
<jsp:include page="../../inc/incHead.jsp" />
<html lang="ko-KR">
<style>
.port_wrapper{
	margin-top: 100px;
	margin-bottom: 100px;
}
.port_img{
	width: 100%;
}
.port_div {
    margin: auto;
    width: fit-content;
}
.port_div input{
	border: none;
	
	    margin: 10px 5px;
    border-radius: 3px;
    background: #9d7e5f;
    padding: 5px 10px;
}
.port_row{
	    margin: 25px 0px;
}
</style>
<head>
</head>
<body>
<jsp:include page="../comm/header.jsp" />

	<div class="head_img_div">
		<img class="head_img" src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-2.jpg" >
	</div>
	<div class="container port_wrapper">
		<!-- <div class="port_div row">
			<input type="button" value="전체보기" />
			<input type="button" value="2019" />
			<input type="button" value="2018" />
			
		</div> -->
		<div style="text-align: center; text-align: center; border-bottom: 1px solid #d9d9d9; padding: 50px;">
			<h3>다솜 포트폴리오</h3>
		</div>
		<c:if test="true" >
		<%-- <c:forEach var="name" items="${nameList}" varStatus="status"> --%>
		<c:forEach var="i" begin="0" end="3">

		<div class="row port_row">
			<div class="col-sm-4">
				<img class="port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg">				
			</div>
			<div class="col-sm-4">
				<img class="port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg">				
			</div>
			<div class="col-sm-4">
				<img class="port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg">				
			</div>
		</div>
		</c:forEach>
		</c:if>
	</div>
		
	
<jsp:include page="../comm/footer.jsp" />
</body>
</html>