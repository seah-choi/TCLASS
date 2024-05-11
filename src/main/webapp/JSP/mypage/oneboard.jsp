<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	<meta name="format-detection" content="telephone=no, address=no" />
	<title>T 클래스</title>
	<script src="/TCLASS/JSP/include/js/jquery-3.4.1.min.js"></script>
	<script src="/TCLASS/JSP/include/js/ui.js"></script>
	<script src="/TCLASS/JSP/include/js/chart.js"></script>
	<script src="/TCLASS/JSP/include/js/swiper.js"></script>
	<script src="/TCLASS/JSP/include/js/aos.js"></script>
	<link rel="stylesheet" type="text/css" href="/TCLASS/JSP/include/css/common.css" />
	<link href="/TCLASS/JSP/include/css/aos.css" rel="stylesheet">
<script>
	
	//카테고리 선택
// 	document.addEventListener("DOMContentLoaded", function() {
// 		let category_1 = document.querySelector("#category_1");
// 		let category_2 = document.querySelector("#category_2");
		
// 		category_1.addEventListener("change", function(){
// 			category2.innerHTML = '<option value="" selected="selected">선택</option>';
			
// 			let options = [];
// 			if(this.value === "01") {
// 				options = ['학습/평가', '결제', '회원정보', '탭장애', '기타'];
// 			}
// 			else if(this.value === "02") {
// 				options = ['학습/평가', '결제', '회원정보', '탭장애', '기타'];
// 			}
// 			else if (this.value === '03') {
//                 options = ['이용문의', '건의/개선', '기타'];
//             }
			
// 			options.forEach(function(option, index) {
// 				let opt = documnet.createElement("option");
// 				opt.value = category1.value + '_0' + (index + 1);
//                 opt.innerHTML = option;
//                 category2.appendChild(opt);
// 			});

// 		});
// 	});
</script>
</head>
<body>
	<!--웹영역 전체//-->
	<div id="wrap" class="wrap">
		<!--해더영역//-->
		<div id="header">
			<!-- 23-02-01 수정 --><h1>1:1 친절 상담</h1>
			<span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
		</div>
		<!--//해더영역-->
		<!--컨텐츠 본문//-->
		<div id="content" class="pb_0">
			<!--1:1게시판 전체//-->
			<div class="oneBoardWrap ">
				<!--탭//-->
				<ul class="boardTab">
					<li class="on"><a href="/TCLASS/mypage/oneboard.do" target="_self">1:1 문의글 작성</a></li>
					<li><a href="/TCLASS/mypage/oneboard_01.do" target="_self">내가 작성한 글</a></li>
				</ul>
				<!--//탭-->
				<!--문의 작성//-->
				<form id="frm" name="frm" method="post">
				<div class="boardBox">
					<em	class="notice">필수 입력항목</em>
					<ul class="boardWrite">
						<li class="selList">
							<select id="category_1" name="category_1">
								<option value="" selected="selected">선택</option>
								<option value="밀크T초등">밀크T초등</option>
								<option value="밀크T중학">밀크T중학</option>
								<option value="TCLASS">TCLASS</option>
							</select>
							<select id="category_2" name="category_2">
								<option value="" selected="selected">선택</option>
								<option value="학습/평가">학습/평가</option>
								<option value="결제">결제</option>
								<option value="회원정보">회원정보</option>
								<option value="탭장애">탭장애</option>
								<option value="기타">기타</option>
							</select>
						</li>
						<li>
							<input type="text" id="title" name="title" placeholder="제목" />
						</li>
						<script >
						//itxtArea 영역 반응형 리사이징
						$(document).ready(function(){
							$(window).resize(resizeContents);
							resizeContents();
						});
						function resizeContents() {
							$(".itxtArea").height($(window).height()-460);//
						}
						</script>
						<li class="itxtArea">
							<textarea id="content"  name="content" class="content" placeholder="내용 작성"></textarea>
						</li>
						<li class="uploadFile">
							<label for="uploading" class="btnUpload">이미지 첨부</label><input type="file" id="uploading">
							<span class="fileName">첨부파일이 없습니다.</span>
							<button type="button" class="del">삭제하기</button>
						</li>
					</ul>
					<p class="info">이미지 파일만 (JPG, JPEG, PNG) 가능하며,<br>용량은 2MB까지 등록됩니다.</p>

					<button class="button blue big mt_20" id="btn_regist">등록</button>
				</div>
				</form>
				<!--//문의 작성-->
				 <!--안내//-->
				 <div class="boardFooter">
					<p>
					1:1 친절상담은 문의 접수일로부터 평일 기준 24시간 이내
					답변을 받으실 수 있습니다. <strong>결제, 환불/취소, 배송문의</strong>는 담당
					관리선생님 또는 아래의 고객센터로 문의 주시기 바랍니다.
					</p>
					<ul>
						<li><strong>유아</strong><span>1522-6002</span></li>
						<li><strong>초등</strong><span>1577-1533</span></li>
						<li><strong>중고등</strong><span>1522-5533</span></li>
					</ul>
				</div>
				<!--//안내-->
			</div>
			<!--//1:1게시판 전체-->
		</div>
		<!--//컨텐츠 본문-->
	</div>
	<!--//웹영역 전체-->
</body>
<script>
$(document).ready(function(){
	//이미지 첨부
	$('#uploading').change(function(e){

		var fileValue = $('#uploading').val().split("\\");
		var fileName = fileValue[2]

		$('.fileName').text(fileName)
		$('li.uploadFile').addClass('ok');
	});
	//삭제하기
	$('.del').on('click',function(){
		$('#uploading').val("");
		$('.fileName').text("첨부파일이 없습니다.");
		$('li.uploadFile').removeClass('ok');
	});
});

//등록버튼
document.querySelector("#btn_regist").addEventListener("click", function(e) {
	e.preventDefault();
    e.stopPropagation();
    
    let title = document.querySelector("#title");
    let content = document.querySelector("#content");
	
	if(title.value.length == "") {
		alert("제목을 입력하세요");
		title.focus();
		return false;
	}

//  	if(content.value.length == "") {
// 		alert("내용을 입력하세요.");
// 		content.focus();
// 		return false;
// 	}
	
	confirm("글을 등록하시겠습니까?");
	alert("등록을 완료했습니다.");

	let frm = document.querySelector("#frm");
	frm.action = "/TCLASS/mypage/oneboard.do";
	frm.submit();
	
}, false);
</script>
<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>

