<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko-KR">
<head>
<title>오시는 길</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a9998f6c6ca885b34262330aeccb175f&libraries=services"></script>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../inc/incHead.jsp" />

<style>
html, body {
	padding: 0xp;
	margin: 0px;
	width: 100%;
	height: 100%;
}

#content_map {
	margin-top: 15px;
	padding: 50px;
}

#map {
	width: 60%;
	height: 350px;
	margin-left: 20%;
}

.introduce {
	margin-top: 50px;
	padding: 45px;
	border-top:1.5px solid #cac8c8fa;;
	border-bottom:1.5px solid #cac8c8fa;;
	width: 60%;
	border-left: 100%;
	margin-left: 20%;
	text-align: center;
}

.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 33px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 26px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}
</style>
</head>
<body>

	<div id="content_wrap">
		<div class="">
			<jsp:include page="comm/header.jsp" />
		</div>

		<div class="introduce">
			<span>저희 <strong>다솜인테리어</strong>는 백석동 이마트(클래식동물병원) 바로맞은편</span>
			<br>
			<span><strong>청구코아상가 1층</strong>에 위치하고있습니다.</span>
		</div>

		<!-- 지도 -->
		<div id="content_map">
			<div id="map"></div>
		</div>
		<script>
			var mapContainer = document.getElementById('map'), // 지도의 중심좌표
			mapOption = {
				center : new kakao.maps.LatLng(37.647100, 126.781687), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};


			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 지도에 마커를 표시합니다 
			var marker = new kakao.maps.Marker({
				map : map,
				position : new kakao.maps.LatLng(37.647100, 126.781687)
			});

			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">'
					+ '    <div class="info">'
					+ '        <div class="title">'
					+ '           다솜 인테리어'
					+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
					+ '        </div>'
					+ '        <div class="body">'
					+ '            <div class="img">'
					+ '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">'
					+ '           </div>'
					+ '            <div class="desc">'
					+ '                <div class="ellipsis">경기도 고양시 일산동구 백석2동</div>'
					+ '                <div class="jibun ellipsis">(우) 10447 (지번) 중앙로 1123</div>'/* 
					+ '                <div><a href="http://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' */
					+ '            </div>' + '        </div>' + '    </div>'
					+ '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new kakao.maps.CustomOverlay({
				content : content,
				map : map,
				position : marker.getPosition()
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker, 'click', function() {
				overlay.setMap(map);
			});

			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
				overlay.setMap(null);
			}
		</script>
	</div>

	<!-- footer start  -->
	<footer>
		<p>Posted by: Hege Refsnes</p>
		<p>
			Contact information: <a href="mailto:someone@example.com">
				someone@example.com</a>.
		</p>
	</footer>
	<!-- footer end  -->
</body>
</html>