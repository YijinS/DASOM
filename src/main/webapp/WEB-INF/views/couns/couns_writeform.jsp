<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); 
%>
<html lang="ko">
<head>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/SmartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>

<jsp:include page="../../inc/incHead.jsp" />
</head>
<style>


.wd_50{
	
	border: none;
    border-bottom: 1px solid #d8d8d8;
    border-radius: 0;
    margin: 10px 0px;
}
.couns_head{
    text-align: center;
    font-size: 1.4rem;
        margin-bottom: 30px;
}
.couns_btn{
    border-radius: 0;
    padding: 5px 15px;
}
</style>
<title>견적 문의z</title>
<style>
</style>
<body>
	<div>
		<!-- header start  -->
		<div class="">
			<jsp:include page="../comm/header.jsp" />

		</div>
		<!-- header end  -->
		<div class="head_img_div">
			<img class="head_img" src="http://hanainterior.net/wp-content/uploads/2017/09/메인슬라이드-2.jpg" >
		</div>

		<div>
			<div class="container" style="margin-top: 65px; width: 50%;">
				<div class="couns_head">
				<span style="margin-bottom: 30px; text-align: center;">견적 문의 등록</span>
				<i class="fas fa-pen-alt"></i>
				</div>
				<form action="counsinsert.do" method="post">
					<input type="text" class="form-control wd_50" name="name" id="name" placeholder="이름"/>
					<input type="text" class="form-control wd_50" name="pwd" id="pwd"  placeholder="비밀번호"/>
					<input type="text" class="form-control wd_50" name="title" id="title" placeholder="제목"/> 
					
					<!-- <label for="content">내용</label> -->
					<textarea name="content" id="content" style="width: 100%; height: 400px;"></textarea>
					<div class="text-right" style="margin: 15px 0px 30px;">
						<a href="${pageContext.request.contextPath }/couns.do" class="btn btn-secondary couns_btn">취소</a> 
						<input type="button"class="btn btn-primary couns_btn" onclick="submitContents(this);" value="등록" />
					</div>
				</form>
			</div>
		</div>


		<jsp:include page="../comm/footer.jsp" />
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