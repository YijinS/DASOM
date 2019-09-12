<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko-KR">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/SmartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<jsp:include page="../inc/incHead.jsp" />
</head>
<title>견적 문의</title>
<style>
</style>
<body>
	<div>
		<!-- header start  -->
		<div class="">
			<jsp:include page="comm/header.jsp" />

		</div>
		<!-- header end  -->

		<div>
			<div>
				<h3>견적 문의 등록하기</h3>
				<form action="counsinsert.do" method="post">
					<label for="title">이름</label> 
					<input type="text" class="form-control" name="name" id="name" />
					<label for="title">비밀번호</label> 
					<input type="text" class="form-control" name="pwd" id="pwd" />
					<div class="form-group">
						<label for="title">제목</label> 
						<input type="text" class="form-control" name="title" id="title" /> 
					</div>
					
					<label for="content">내용</label>
					<textarea name="content" id="content" style="width: 100%; height: 400px;"></textarea>
					<div class="text-right">
						<a href="${pageContext.request.contextPath }/couns.do" class="btn btn-secondary btn-lg">취소</a> 
						<input type="button"class="btn btn-primary btn-lg" onclick="submitContents(this);" value="등록" />
					</div>
				</form>
			</div>
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
	</div>
	
	
	<!-- smart editor  -->
	<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "content",
		sSkinURI: "${pageContext.request.contextPath }/resources/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
		
		try {
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
</script>


</body>
</html>