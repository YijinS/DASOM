<!-- 
	author : so ejin
	date : 2019.09.11
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<html lang="ko-KR" >
<head>
	<meta charset="utf-8">
	<jsp:include page="../inc/incHead.jsp" />
</head>
<style>

</style>
<body>

	<div>
		<div class="">
			<jsp:include page="comm/header.jsp" />
			<!-- Carousel start -->
			<div class="">				
				<div class="banner_layer">
					<div>
						<span class="">
						고객이 만족하고 감동하는
						</span>
					</div>
					<div>
						<span class="second">
						DASOM INTERIOR
						</span>
					</div>
					<div class="div_third">
						<span class="third">
						30년 이상의 노하우, 고객이 감동하는 인테리어
						</span>
					</div>
				</div>
				<div id="demo" class="carousel slide" data-ride="carousel">

				  <!-- Indicators -->
				  <ul class="carousel-indicators">
				    <li data-target="#demo" data-slide-to="0" class="active"></li>
				    <li data-target="#demo" data-slide-to="1"></li>
				    <li data-target="#demo" data-slide-to="2"></li>
				  </ul>
				
				  <!-- The slideshow -->
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-1.jpg" alt="Chania">
				    </div>
				    <div class="carousel-item">
				      <img src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-2.jpg" alt="Chania">
				    </div>
				    <div class="carousel-item">
				      <img src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-3.jpg" alt="Chania">
				    </div>
				  </div>
				
				  <!-- Left and right controls -->
				  <a class="carousel-control-prev" href="#demo" data-slide="prev">
				    <span class="carousel-control-prev-icon"></span>
				  </a>
				  <a class="carousel-control-next" href="#demo" data-slide="next">
				    <span class="carousel-control-next-icon"></span>
				  </a>
				
				</div>		
							
			</div>
		
			<!-- Carousel end -->
			
			<!-- portpolio start -->
			<div class="container portPolio">
				<div class="row portPolio_head">				
					<h3 class="portPolio_head_h3">다솜 시공사진</h3>
					<h6 class="portPolio_head_h6">마우스를 이미지로 올려주시면 밝고 선명하게 보실 수 있습니다.</h6>
				</div>
				<div class="row portPolio_body">
					<div class="col">
						<div class="dasom_port_img_wrap">
							<span style="color: white;position: absolute;transition: opacity 0.5s ease;z-index: 11;margin: 167px;padding-left: 61px;">xfdsfsfadfasdf</span>
							<img class="dasom_port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg">
						</div>
					</div>
					<div class="col">
						<div class="dasom_port_img_wrap">
							<img class="dasom_port_img"  src="http://hanainterior.net/wp-content/uploads/2019/07/hana_dangsoho07_161.jpg" >
						</div>
					</div>					
				</div>
				<div class="row portPolio_body">
					<div class="col">
						<div class="dasom_port_img_wrap">
							<img class="dasom_port_img"  src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg" >
						</div>
					</div>
					<div class="col">
						<div class="dasom_port_img_wrap">
							<img class="dasom_port_img"  src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg" >
						</div>
					</div>
					
				</div>
				<div class="row portPolio_body">
					<div class="col">
						<div class="dasom_port_img_wrap">
						<img class="dasom_port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg" >
						</div>
					</div>
					<div class="col">
						<div class="dasom_port_img_wrap">
						<img class="dasom_port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg" >
						</div>
					</div>
					
				</div>
				<div class="row portPolio_foot">						
						<input class="portPolio_foot_img" type="button" value="더 많은 포트폴리오 보러 가기"/>					
				</div>
			</div>
			<!-- portpolio end -->
			
			
			<!-- 견적상담 start -->
			<div id="dasom_couns">
			
			</div>
			<!-- 견적상담 end -->
			
			<jsp:include page="comm/footer.jsp" />
			
		</div>
	
	</div>
<script>
$(function(){

	 var context = '${pageContext.request.contextPath}';
	startTakeCounsDiv(context);
	
})
</script>
</body>
</html>