<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_pw_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="../include/js/jquery-3.4.1.min.js"></script>
    <script src="../include/js/ui.js"></script>
    <script src="../include/js/chart.js"></script>
    <script src="../include/js/swiper.js"></script>
    <script src="../include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="../include/css/common.css" />
    <link href="../include/css/aos.css" rel="stylesheet">
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
                <h2><strong>입력하신 정보와 일치하는 아이디</strong></h2>
                <div class="idList">
                    <ul>
                        <li>[T CLASS] jenn**** (18.09.07)</li>
                    </ul>
                </div>
                <p class="txt_01 mt_20">아이디에 등록된 휴대폰 번호로 인증번호를 발송합니다.</p>
                <div class="formBox pNumber_01 mt_50 noEdit" >
                    <input type="tel" class="itxt" id="telnumber" placeholder="휴대폰 번호" maxlength="14" value="010-8765-****" />
                    <label class="title" for="telnumber">휴대폰 번호</label>
                    <button class="btn">인증번호</button>
                </div>
                <p class="txt_01 mt_50">본인 확인용 인증번호가 휴대폰으로 발송되었습니다. <br/>받으신 인증번호를 입력해 주세요.</p>
                <div class="formBox pNumber_02 mt_50" >
                    <input type="tel" class="itxt" id="telnumber" placeholder="인증번호 입력" maxlength="14" />
                    <label class="title" for="telnumber">인증 번호</label>
                    <span class="time">03:00</span>
                    <button class="btn">확인</button>
                    <!--<span class="txtSub">인증번호가 카카오톡 알림톡으로 발송되었습니다. </span>-->
                </div>
            </div>
            <!--//비밀번호 변경 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_pw_02.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
