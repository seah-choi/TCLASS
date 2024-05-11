<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.BoardDTO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/mypage/oneboard_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
</head>
<body>
	<!--웹영역 전체//-->
	<div id="wrap" class="wrap">
		<!--해더영역//-->
		<div id="header">
			<!-- 23-02-01 수정 --><h1>1:1 친절 상담</h1>
			<span class="btnBack"><a href="#">좌측메뉴 펼침</a></span>
		</div>
		<!--//해더영역-->
		<!--컨텐츠 본문//-->
		<div id="content" class="pb_0">
			<!--1:1게시판 전체//-->
			<div class="oneBoardWrap">
				<!--탭//-->
				<ul class="boardTab">
					<li><a href="/TCLASS/mypage/oneboard.do" target="_self">1:1 문의글 작성</a></li>
					<li class="on"><a href="/TCLASS/mypage/oneboard_01.do" target="_self">내가 작성한 글</a></li>
				</ul>
				<!--//탭-->
				<!--문의 작성//-->
				<div class="boardBox">
					 <!--상세//-->
					<input type="hidden" name="no" id="no" value="${BoardView.no }">
					<ul class="boardView">
						<li>
							<p class="title_01">${BoardView.category_1 }<span>${BoardView.category_2 }</span></p>
							<span class="title_02">${BoardView.title }</span>
							<span class="date">${BoardView.reg_date }<u>답변대기</u></span>
							<!-- <span class="date">2019-12-01 오후 6:01:17<u class="com">답변완료</u></span> -->
							<!-- <button class="btnTool" >툴열기</button>
							<div class="editLay">
								<button class="edit" onclick="location.href='oneboard.html' ">수정</button>
								<button class="del" >삭제</button>
							</div> -->
						</li>
						<script >
						//itxtArea 영역 반응형 리사이징
						$(document).ready(function(){
							$(window).resize(resizeContents);
							resizeContents();
						});
						function resizeContents() {
							$(".itxtArea").height($(window).height()-405);
						}
						</script>
					   <li class="itxtArea">${BoardView.content }</li>
						<li class="fileView"><span>이미지 첨부</span><a href="#">이미지이름.png</a> </li>
					</ul>
					<p class="info">답변이 달린 경우 글을 수정하거나 삭제할 수 없습니다.</p>
					<ul class="btnList mt_20">
						<li><button class="button dark big" id="btn_delete">삭제</button></li>
						<li><button class="button blue big" id="btn_modify">수정</button></li>
					</ul>
					
					<!--//상세-->
				</div>
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

	//삭제
	document.querySelector("#btn_delete").addEventListener("click", function(e) {
		confirm("글을 삭제하시겠습니까?");
		location.href = "/TCLASS/mypage/boardDelete.do?no="+${BoardView.no};
	});
	
	//수정
	document.querySelector("#btn_modify").addEventListener("click", function(e) {
		confirm("글을 수정하시겠습니까?");
		location.href = "/TCLASS/mypage/boardModify.do?no="+${BoardView.no};
	});
</script>
</html>
