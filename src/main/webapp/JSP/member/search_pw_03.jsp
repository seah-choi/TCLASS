<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="dto.LoginDTO"%>
<%@page import="dao.LoginDAO"%>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_pw_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
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
            <h1>비밀번호 변경</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--비밀번호 변경 전체//-->
            <div  class="pwSearchWrap">
                <h2><strong>아이디</strong></h2>
                <div class="idList">
                    <ul>
                        <li id="id">${idCheck }</li>
                    </ul>
                </div>
                <p class="txt_01 mt_20">새로운 비밀번호로 변경하세요.</p>
                <form id="frm" name="frm" method="post" action="change_pwd.do">
                <input type="hidden" name="id" value="${idCheck }">
                <div class="formBox mt_50" >
                    <input type="password" class="itxt" id="pwd" name="pwd" placeholder="비밀번호 (영문, 숫자, 특수문자 조합 10~16자리)" />
                    <label class="title" for="pwd">비밀번호</label>
                    <!-- <span class="txtSub">비밀번호를 정확하게 입력하세요.</span> -->
                </div>
                <div class="formBox" >
                    <input type="password" class="itxt" id="pwd2" name="pwd2"  placeholder="비밀번호 재 입력" />
                    <label class="title" for="pwd2">비밀번호 재 입력</label>
                    <!-- <span class="txtSub">비밀번호가 일치하지 않습니다.</span> -->
                </div>
                <button class="button blue big mt_40" id="btn_ok">확인</button>
                </form>
            </div>
            <!--//비밀번호 변경 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>
<script>
	document.querySelector("#btn_ok").addEventListener("click", function(e) {
		
		confirm("변경된 비밀번호로 로그인 하세요.");
		let frm = document.querySelector("#frm");
		frm.submit();
	});
</script>
</html>
