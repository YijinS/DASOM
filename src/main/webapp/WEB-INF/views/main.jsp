<!-- 
	author : so ejin
	date : 2019.09.11
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<html lang="ko-KR" >
<jsp:include page="../inc/incHead.jsp" />
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
</head>
<style>

</style>
<body>

	<div>
		<div class="">
			<div class="">
			<header>
				
				<div class="">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
					  <a class="navbar-brand" href="#">다솜 인테리어</a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					
					  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
					      <li class="nav-item active">
					        <a class="nav-link" href="#">오시는 길 <span class="sr-only">(current)</span></a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="#">시공사진</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="#">시공문의</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="#">견적문의</a>
					      </li>
					    </ul>
					    <form class="form-inline my-2 my-lg-0">
					      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					    </form>
					  </div>
					</nav>
				</div>
			</header>
			</div>
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
					<h3>다솜 포트폴리오</h3>
					<h6>마우스를 이미지로 올려주시면 밝고 선명하게 보실 수 있습니다.</h6>
				</div>
				<div class="row portPolio_body">
					<div class="col">
						<div class="dasom_port_img_wrap">
							<img class="dasom_port_img" src="http://hanainterior.net/wp-content/uploads/2019/08/hana_thedong07_225.jpg" >
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
			
			<!-- footer start  -->
			<footer>
			  <p>Posted by: Hege Refsnes</p>
			  <p>Contact information: <a href="mailto:someone@example.com">
			  someone@example.com</a>.</p>
			</footer>
			<!-- footer end  -->
		</div>
	
	</div>

</body>
</html>