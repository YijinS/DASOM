<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko-KR">
<head>
<title>Dasom Interior</title>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a9998f6c6ca885b34262330aeccb175f&libraries=services"></script>
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<jsp:include page="../inc/incHead.jsp" />

<style>

</style>
</head>
<body>
<jsp:include page="comm/header.jsp" />
	<div id="content_wrap">
		<div class="head_img_div">
			<img class="head_img" src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-3.jpg" >
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

	

		<jsp:include page="comm/footer.jsp" />
</body>
</html>