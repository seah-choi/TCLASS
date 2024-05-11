<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!doctype html>
<html lang="ko">


<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/notic_page_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta name="format-detection" content="telephone=no, address=no" />
    <title>T 클래스</title>
    <script src="../../include/js/jquery-3.4.1.min.js"></script>
    <script src="../../include/js/ui.js"></script>
    <script src="../../include/js/chart.js"></script>
    <script src="../../include/js/swiper.js"></script>
    <script src="../../include/js/aos.js"></script>
    <link rel="stylesheet" type="text/css" href="../../include/css/common.css" />
    <link href="../../include/css/aos.css" rel="stylesheet">
</head>
<body>
    <!--웹영역 전체//-->
    <div id="wrap" class="wrap">
        <!--해더영역//-->
        <div id="header">
            <h1>학급 추가 하기</h1>
            <span class="btnClose"><a href="#">닫기</a></span>
        </div>
        <!--//해더영역-->
        <!--컨텐츠 본문//-->
        <div id="content">
            <!--학교알림장 전체//-->
            <div class="noticpageWrap">
                 <!--학교등록//-->
                <div class="writeSchool">
                    <p class="schoolName">
                        <strong>김해삼성초등학교</strong><span>경기도 과천시 온온사로 10 (중앙동, 삼성초등학교)</span>
                    </p>
                    <div class="formBox atten mt_60" >
                        <label class="title" for="111">학년 선택</label>
                        <select id="111">
                            <option value="" disabled="disabled" selected="selected">학년 선택</option>
                            <option value="01">1학년</option>
                            <option value="02">2학년</option>
                            <option value="03">3학년</option>
                            <option value="04">4학년</option>
                            <option value="05">5학년</option>
                            <option value="06">6학년</option>
                        </select>
                    </div>
                    <div class="formBox atten" >
                        <label class="title" for="222">반 선택</label>
                        <select id="222">
                            <option value="" disabled="disabled" selected="selected">반 선택</option>
                            <option value="01">1반</option>
                            <option value="02">2반</option>
                            <option value="03">3반</option>
                            <option value="04">4반</option>
                            <option value="05">5반</option>
                            <option value="06">6반</option>
                            <option value="07">7반</option>
                            <option value="08">8반</option>
                            <option value="09">9반</option>
                            <option value="10">10반</option>
                        </select>
                    </div>
                    <div class="formBox">
                        <input type="text" class="itxt" id="iname" name="iname" placeholder="자녀 이름을 입력하세요." />
                        <label class="title" for="iname">자녀 이름</label>
                    </div>
                    <div class="formBox" >
                        <input type="password" class="itxt" id="password" placeholder="학급 비밀번호를 입력하세요." />
                        <label class="title" for="password">학급 비밀번호</label>
                        <span class="txtSub blue left">* 학교 담임 선생님께 받은 학급 비밀번호를 입력하셔야 합니다.</span>
                    </div>
                    <button class="button blue big mt_60">로그인</button>
                </div>
                <!--//학교등록-->
            </div>
            <!--//학교알림장 전체-->
        </div>
        <!--//컨텐츠 본문-->
    </div>
    <!--//웹영역 전체-->
</body>

<!-- Mirrored from test-tclassdesign.milkt.co.kr/html/parent/notic_page_03.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2023 01:20:33 GMT -->
</html>
