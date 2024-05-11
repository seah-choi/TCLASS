<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">
<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_id_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="/TCLASS/JSP/includejs/jquery-3.4.1.min.js"></script>
    <script src="/TCLASS/JSP/includejs/ui.js"></script>
    <script src="/TCLASS/JSP/includejs/chart.js"></script>
    <script src="/TCLASS/JSP/includejs/swiper.js"></script>
    <script src="/TCLASS/JSP/includejs/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="/TCLASS/JSP/include/css/common.css" />
    <link href="/TCLASS/JSP/include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>아이디 확인</h1>
            <span class="btnSide"><a href="#">좌측메뉴 펼침</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--아이디확인 전체//-->
            <div  class="idSerachWrap">
                <h2><strong>입력하신 정보와 일치하는 아이디가 없습니다.</strong></h2>
                <p class="subTitle mt_10">입력 정보가 정확한지 확인 후 다시 시도해 주세요.<br>회원 가입 여부를 다시 확인해 주세요.</p>
                <button class="button white big mt_50" onclick="location.href='/TCLASS/member/search_id.do'">다시 찾기</button>
                <button class="button blue big mt_10" onclick="location.href='/TCLASS/member/join.do'">회원가입</button>
            </div>
            <!--//아이디확인 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/member/search_id_01.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:22:08 GMT -->
</html>
